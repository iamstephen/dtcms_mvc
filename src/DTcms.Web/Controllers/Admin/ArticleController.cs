using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTcms.Web.Filter;
using DTcms.Web.UI;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;
using DTcms.Model;

namespace DTcms.Web.Controllers.Admin
{
    [AdminAuthorize]
    public class ArticleController : ManagePage
    {
        protected int channel_id;
        protected int totalCount;
        protected int page;
        protected int pageSize;

        protected int category_id;
        protected string channel_name = string.Empty;
        protected string property = string.Empty;
        protected string keywords = string.Empty;
        protected string prolistview = string.Empty;

        private string action = DTEnums.ActionEnum.Add.ToString(); //操作类型
        private int id = 0;
        protected Model.site_channel channelModel = new Model.site_channel(); //频道实体
        #region article_list
        // GET: article
        public ActionResult Article_list()
        {
            channel_id = DTRequest.GetQueryInt("channel_id");
            category_id = DTRequest.GetQueryInt("category_id");
            keywords = DTRequest.GetQueryString("keywords");
            property = DTRequest.GetQueryString("property");

            if (channel_id == 0)
            {
                return RedirectToAction("Error", "Admin", new { msg = "频道参数不正确！" });
            }
            channel_name = new BLL.site_channel().GetChannelName(channel_id); //取得频道名称
            pageSize = Article_listGetPageSize(10); //每页数量
            prolistview = Utils.GetCookie("article_list_view"); //显示方式

            ChkAdminLevel("channel_" + channel_name + "_list", DTEnums.ActionEnum.View.ToString()); //检查权限
            Article_listTreeBind(channel_id, category_id); //绑定类别
            Article_listPropertyBind(channel_id, property); //绑定类别

            page = DTRequest.GetQueryInt("page", 1);
            ViewBag.keywords = keywords;
            ViewBag.prolistview = prolistview;
            //图表或列表显示
            BLL.article bll = new BLL.article();
            var model = bll.GetList(channel_id, category_id, pageSize, page, "id>0" + Article_listCombSqlTxt(keywords, property), "sort_id asc,add_time desc,id desc", out totalCount).Tables[0];

            //绑定页码
            ViewBag.txtPageNum = pageSize.ToString();
            string pageUrl = Utils.CombUrlTxt("article_list.aspx", "channel_id={0}&category_id={1}&keywords={2}&property={3}&page={4}",
                channel_id.ToString(), category_id.ToString(), keywords, property, "__id__");
            ViewBag.PageContent = Utils.OutPageList(pageSize, page, totalCount, pageUrl, 8);

            ViewBag.channel_id = channel_id;
            ViewBag.channel_name = channel_name;
            return View(model);
        }

        private void Article_listPropertyBind(int channel_id, string property)
        {
            Dictionary<string, string> list = new Dictionary<string, string>();
            list.Add("待审核", "isLock");
            list.Add("已审核", "unIsLock");
            list.Add("可评论", "isMsg");
            list.Add("置顶", "isTop");
            list.Add("推荐", "isRed");
            list.Add("热门", "isHot");
            list.Add("幻灯片", "isSlide");
            SelectList sl = new SelectList(list, "value", "key", property);
            ViewBag.ddlProperty = sl;
        }

        #region 绑定类别=================================
        private void Article_listTreeBind(int _channel_id, int category_id)
        {
            BLL.article_category bll = new BLL.article_category();
            DataTable dt = bll.GetList(0, _channel_id);

            List<article_category> list = new List<article_category>();
            foreach (DataRow dr in dt.Rows)
            {
                int Id = dr["id"].ToInt();
                int ClassLayer = int.Parse(dr["class_layer"].ToString());
                string Title = dr["title"].ToString().Trim();

                if (ClassLayer == 1)
                {
                    list.Add(new article_category { id = Id, title = Title });
                }
                else
                {
                    Title = "├ " + Title;
                    Title = Utils.StringOfChar(ClassLayer - 1, "　") + Title;
                    list.Add(new article_category { id = Id, title = Title });
                }
            }
            SelectList sl = new SelectList(list, "id", "title", category_id);
            ViewBag.ddlCategoryId = sl;
        }
        #endregion

        #region 组合SQL查询语句==========================
        protected string Article_listCombSqlTxt(string _keywords, string _property)
        {
            StringBuilder strTemp = new StringBuilder();
            _keywords = _keywords.Replace("'", "");
            if (!string.IsNullOrEmpty(_keywords))
            {
                strTemp.Append(" and title like '%" + _keywords + "%'");
            }
            if (!string.IsNullOrEmpty(_property))
            {
                switch (_property)
                {
                    case "isLock":
                        strTemp.Append(" and status=1");
                        break;
                    case "unIsLock":
                        strTemp.Append(" and status=0");
                        break;
                    case "isMsg":
                        strTemp.Append(" and is_msg=1");
                        break;
                    case "isTop":
                        strTemp.Append(" and is_top=1");
                        break;
                    case "isRed":
                        strTemp.Append(" and is_red=1");
                        break;
                    case "isHot":
                        strTemp.Append(" and is_hot=1");
                        break;
                    case "isSlide":
                        strTemp.Append(" and is_slide=1");
                        break;
                }
            }
            return strTemp.ToString();
        }
        #endregion

        #region 返回图文每页数量=========================
        private int Article_listGetPageSize(int _default_size)
        {
            int _pagesize;
            if (int.TryParse(Utils.GetCookie("article_page_size", "DTcmsPage"), out _pagesize))
            {
                if (_pagesize > 0)
                {
                    return _pagesize;
                }
            }
            return _default_size;
        }
        #endregion

        #region 替换内容图片路径=========================
        private string ReplaceImagesPath(string content)
        {
            if (string.IsNullOrEmpty(content))
            {
                return string.Empty;
            }
            Regex reg = new Regex("IMG[^>]*?src\\s*=\\s*(?:\"(?<1>[^\"]*)\"|'(?<1>[^\']*)')", RegexOptions.IgnoreCase);
            MatchCollection m = reg.Matches(content);
            foreach (Match math in m)
            {
                string imgUri = math.Groups[1].Value;
                //如果是本地图片，则加上http://网址/网站安装目录/上传目录/文件名
                if (imgUri.StartsWith(sysConfig.webpath + sysConfig.filepath + "/"))
                {
                    string newImgPath = "http://" + ControllerContext.HttpContext.Request.Url.Authority.ToLower() + imgUri;
                    content = content.Replace(imgUri, newImgPath);
                }
            }
            return content;
        }
        #endregion
        #endregion

        #region article_edit
        public ActionResult Article_edit()
        {
            channel_id = DTRequest.GetQueryInt("channel_id");
            //动态生成相应的扩展字段
            Article_editCreateOtherField(channel_id); //动态生成相应的扩展字段
            string _action = DTRequest.GetQueryString("action");

            if (channel_id == 0)
            {
                return RedirectToAction("Error", "Admin", new { msg = "频道参数不正确！" });
            }
            channelModel = new BLL.site_channel().GetModel(channel_id); //取得频道实体

            //如果是编辑或复制则检查信息是否存在
            if (_action == DTEnums.ActionEnum.Edit.ToString())
            {
                action = _action;//修改或复制类型
                id = DTRequest.GetQueryInt("id");
                if (id == 0)
                {
                    return RedirectToAction("Error", "Admin", new { msg = "传输参数不正确！" });
                }
                if (!new BLL.article().Exists(channel_id, id))
                {
                    return RedirectToAction("Error", "Admin", new { msg = "信息不存在或已被删除！" });
                }
            }
            ChkAdminLevel("channel_" + channelModel.name + "_list", DTEnums.ActionEnum.View.ToString()); //检查权限
            Article_editShowSysField(channel_id); //显示相应的默认控件
            Article_editGroupBind(string.Empty); //绑定用户组
            Article_editTreeBind(channel_id); //绑定类别
            BLL.article bll = new BLL.article();
            article model = new article();
            if (action == DTEnums.ActionEnum.Edit.ToString() || action == DTEnums.ActionEnum.Copy.ToString()) //修改
            {
                model = Article_editShowInfo(channel_id, id);
            }
            ViewBag.sysConfig = sysConfig;
            return View(model);
        }

        #region 创建其它扩展字段=========================
        private void Article_editCreateOtherField(int _channel_id)
        {
            List<Model.article_attribute_field> ls = new BLL.article_attribute_field().GetModelList(_channel_id, "is_sys=0");
            ViewBag.OtherFieldList = ls;
        }
        #endregion

        #region 显示默认扩展字段=========================
        private void Article_editShowSysField(int _channel_id)
        {
            //查找该频道所选的默认字段
            List<Model.article_attribute_field> ls = new BLL.article_attribute_field().GetModelList(_channel_id, "is_sys=1");
            ViewBag.ShowSysFieldList = ls;
            ViewBag.channelModel = channelModel;
        }
        #endregion

        #region 绑定类别=================================
        private void Article_editTreeBind(int _channel_id)
        {
            BLL.article_category bll = new BLL.article_category();
            DataTable dt = bll.GetList(0, _channel_id);

            List<SelectListItem> list = new List<SelectListItem>();
            list.Add(new SelectListItem { Text = "请选择类别...", Value = "" });
            foreach (DataRow dr in dt.Rows)
            {
                string Id = dr["id"].ToString();
                int ClassLayer = int.Parse(dr["class_layer"].ToString());
                string Title = dr["title"].ToString().Trim();

                if (ClassLayer == 1)
                {
                    list.Add(new SelectListItem { Text = Title, Value = Id });
                }
                else
                {
                    Title = "├ " + Title;
                    Title = Utils.StringOfChar(ClassLayer - 1, "　") + Title;
                    list.Add(new SelectListItem { Text = Title, Value = Id });
                }
            }
            ViewBag.ddlCategoryId = list;
        }
        #endregion

        #region 绑定会员组===============================
        private void Article_editGroupBind(string strWhere)
        {
            //检查网站是否开启会员功能
            if (sysConfig.memberstatus == 0)
            {
                return;
            }
            //检查该频道是否开启会员组价格
            if (channelModel.is_spec == 0)
            {
                return;
            }
            BLL.user_groups bll = new BLL.user_groups();
            DataSet ds = bll.GetList(0, strWhere, "grade asc,id desc");
            ViewBag.rptPrice = ds.Tables[0];
        }
        #endregion

        #region 赋值操作=================================
        private article Article_editShowInfo(int _channel_id, int _id)
        {
            BLL.article bll = new BLL.article();
            article model = bll.GetModel(_channel_id, _id);
            //不是相册图片就绑定
            string filename = model.img_url.Substring(model.img_url.LastIndexOf("/") + 1);
            ViewBag.filename = filename;
            return model;
        }
        #endregion

        #region 扩展字段赋值=============================
        private Dictionary<string, string> Article_editSetFieldValues(int _channel_id)
        {
            DataTable dt = new BLL.article_attribute_field().GetList(_channel_id, "").Tables[0];
            Dictionary<string, string> dic = new Dictionary<string, string>();
            foreach (DataRow dr in dt.Rows)
            {
                //查找相应的控件
                switch (dr["control_type"].ToString())
                {
                    case "single-text": //单行文本
                        dic.Add(dr["name"].ToString(), DTRequest.GetFormString(dr["name"].ToString()));
                        break;
                    case "multi-text": //多行文本
                        goto case "single-text";
                    case "editor": //编辑器
                        goto case "single-text";
                    case "images": //图片上传
                        goto case "single-text";
                    case "video": //视频上传
                        goto case "single-text";
                    case "number": //数字
                        goto case "single-text";
                    case "datetime": //时间日期
                        goto case "single-text";
                    case "checkbox": //复选框
                        dic.Add(dr["name"].ToString(), DTRequest.GetFormString(dr["name"].ToString())=="1"?"1":"0");
                        break;
                    case "multi-radio": //多项单选
                        goto case "single-text";
                    case "multi-checkbox": //多项多选
                        string str = DTRequest.GetFormString(dr["name"].ToString());
                        goto case "single-text";
                }
            }
            return dic;
        }
        #endregion

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Article_edit([Bind(Exclude = "status,is_msg,is_top,is_red,is_hot,is_slide")] article model, string submitAction, int id, int channel_id)
        {
            this.channel_id = channel_id;
            channelModel = new BLL.site_channel().GetModel(channel_id); //频道实体
            if (ModelState.IsValid)
            {
                if (action == DTEnums.ActionEnum.Edit.ToString()) //修改
                {
                    ChkAdminLevel("channel_" + channelModel.name + "_list", DTEnums.ActionEnum.Edit.ToString()); //检查权限
                    if (!Article_editDoEdit(id, model))
                    {
                        return RedirectToAction("Error", "Admin", new { msg = "保存过程中发生错误！" });
                    }
                    return RedirectToAction("article_list", new { channel_id });
                }
                else //添加
                {
                    ChkAdminLevel("channel_" + this.channelModel.name + "_list", DTEnums.ActionEnum.Add.ToString()); //检查权限
                    if (!Article_editDoAdd(model))
                    {
                        return RedirectToAction("Error", "Admin", new { msg = "保存过程中发生错误！" });
                    }
                    return RedirectToAction("article_list", new { channel_id });
                }
            }
            return View();
        }

        #region 增加操作=================================
        private bool Article_editDoAdd(article model)
        {
            bool result = false;
            BLL.article bll = new BLL.article();

            model.site_id = channelModel.site_id;
            model.channel_id = channel_id;

            //内容摘要提取内容前255个字符
            if (string.IsNullOrEmpty(model.zhaiyao))
            {
                model.zhaiyao = Utils.DropHTML(model.content, 250);
            }
            else
            {
                model.zhaiyao = Utils.DropHTML(model.zhaiyao, 250);
            }
            model.sort_id = Utils.StrToInt(model.sort_id.ToStr(), 99);

            model.is_sys = 1; //管理员发布
            model.user_name = GetAdminInfo().user_name; //获得当前登录用户名
            model.is_msg = Request.Form["is_msg"].Contains("true") ? 1 : 0;
            model.is_top = Request.Form["is_top"].Contains("true") ? 1 : 0;
            model.is_red = Request.Form["is_red"].Contains("true") ? 1 : 0;
            model.is_hot = Request.Form["is_hot"].Contains("true") ? 1 : 0;
            model.is_slide = Request.Form["is_slide"].Contains("true") ? 1 : 0;
            if (Request.Form["status"].Contains("true") == false)
            {
                model.status = 2;
            }
            else
            {
                model.status = GetAdminInfo().is_audit;
            }
            model.fields = Article_editSetFieldValues(channel_id); //扩展字段赋值

            #region 保存相册====================
            //检查是否有自定义图片
            if (model.img_url == "")
            {
                model.img_url = DTRequest.GetFormString("hidFocusPhoto");
            }
            string[] albumArr = Request.Form.GetValues("hid_photo_name");
            string[] remarkArr = Request.Form.GetValues("hid_photo_remark");
            if (albumArr != null && albumArr.Length > 0)
            {
                List<Model.article_albums> ls = new List<Model.article_albums>();
                for (int i = 0; i < albumArr.Length; i++)
                {
                    string[] imgArr = albumArr[i].Split('|');
                    if (imgArr.Length == 3)
                    {
                        if (!string.IsNullOrEmpty(remarkArr[i]))
                        {
                            ls.Add(new Model.article_albums { channel_id = channel_id, original_path = imgArr[1], thumb_path = imgArr[2], remark = remarkArr[i] });
                        }
                        else
                        {
                            ls.Add(new Model.article_albums { channel_id = channel_id, original_path = imgArr[1], thumb_path = imgArr[2] });
                        }
                    }
                }
                model.albums = ls;
            }
            #endregion

            #region 保存附件====================
            //保存附件
            string[] attachFileNameArr = Request.Form.GetValues("hid_attach_filename");
            string[] attachFilePathArr = Request.Form.GetValues("hid_attach_filepath");
            string[] attachFileSizeArr = Request.Form.GetValues("hid_attach_filesize");
            string[] attachPointArr = Request.Form.GetValues("txt_attach_point");
            if (attachFileNameArr != null && attachFilePathArr != null && attachFileSizeArr != null && attachPointArr != null
                && attachFileNameArr.Length > 0 && attachFilePathArr.Length > 0 && attachFileSizeArr.Length > 0 && attachPointArr.Length > 0)
            {
                List<Model.article_attach> ls = new List<Model.article_attach>();
                for (int i = 0; i < attachFileNameArr.Length; i++)
                {
                    int fileSize = Utils.StrToInt(attachFileSizeArr[i], 0);
                    string fileExt = FileHelper.GetFileExt(attachFilePathArr[i]);
                    int _point = Utils.StrToInt(attachPointArr[i], 0);
                    ls.Add(new Model.article_attach { channel_id = channel_id, file_name = attachFileNameArr[i], file_path = attachFilePathArr[i], file_size = fileSize, file_ext = fileExt, point = _point });
                }
                model.attach = ls;
            }
            #endregion

            #region 保存会员组价格==============
            //检查网站是否开启会员功能&检查该频道是否开启会员组价格
            if (sysConfig.memberstatus != 0 && channelModel.is_spec != 0)
            {
                List<Model.user_group_price> priceList = new List<Model.user_group_price>();
                BLL.user_groups bll2 = new BLL.user_groups();
                DataSet ds = bll2.GetList(0, "", "grade asc,id desc");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {

                    int _groupid = Convert.ToInt32(Request.Form.GetValues("hideGroupId" + ds.Tables[0].Rows[i]["id"]));
                    decimal _price = Convert.ToDecimal(Request.Form.GetValues("txtGroupPrice" + ds.Tables[0].Rows[i]["id"]));
                    priceList.Add(new Model.user_group_price { channel_id = channel_id, group_id = _groupid, price = _price });
                }
                model.group_price = priceList;
            }
            #endregion

            if (bll.Add(model) > 0)
            {
                AddAdminLog(DTEnums.ActionEnum.Add.ToString(), "添加" + channelModel.title + "频道内容:" + model.title); //记录日志
                result = true;
            }
            return result;
        }
        #endregion

        #region 修改操作=================================
        private bool Article_editDoEdit(int _id, article model)
        {
            bool result = false;
            BLL.article bll = new BLL.article();

            //内容摘要提取内容前255个字符
            if (string.IsNullOrEmpty(model.zhaiyao))
            {
                model.zhaiyao = Utils.DropHTML(model.content, 250);
            }
            else
            {
                model.zhaiyao = Utils.DropHTML(model.zhaiyao, 250);
            }
            model.sort_id = Utils.StrToInt(model.sort_id.ToStr(), 99);

            model.is_msg = Request.Form["is_msg"].Contains("true") ? 1 : 0;
            model.is_top = Request.Form["is_top"].Contains("true") ? 1 : 0;
            model.is_red = Request.Form["is_red"].Contains("true") ? 1 : 0;
            model.is_hot = Request.Form["is_hot"].Contains("true") ? 1 : 0;
            model.is_slide = Request.Form["is_slide"].Contains("true") ? 1 : 0;
            if (Request.Form["status"].Contains("true") == false)
            {
                model.status = 2;
            }
            else
            {
                model.status = GetAdminInfo().is_audit;
            }
            model.update_time = DateTime.Now;
            model.fields = Article_editSetFieldValues(channel_id); //扩展字段赋值

            #region 保存相册====================
            //检查是否有自定义图片
            if (model.img_url == "")
            {
                model.img_url = DTRequest.GetFormString("hidFocusPhoto");
            }
            string[] albumArr = Request.Form.GetValues("hid_photo_name");
            string[] remarkArr = Request.Form.GetValues("hid_photo_remark");
            if (albumArr != null && albumArr.Length > 0)
            {
                List<Model.article_albums> ls = new List<Model.article_albums>();
                for (int i = 0; i < albumArr.Length; i++)
                {
                    string[] imgArr = albumArr[i].Split('|');
                    if (imgArr.Length == 3)
                    {
                        if (!string.IsNullOrEmpty(remarkArr[i]))
                        {
                            ls.Add(new Model.article_albums { channel_id = channel_id, original_path = imgArr[1], thumb_path = imgArr[2], remark = remarkArr[i] });
                        }
                        else
                        {
                            ls.Add(new Model.article_albums { channel_id = channel_id, original_path = imgArr[1], thumb_path = imgArr[2] });
                        }
                    }
                }
                model.albums = ls;
            }
            #endregion

            #region 保存附件====================
            //保存附件
            string[] attachFileNameArr = Request.Form.GetValues("hid_attach_filename");
            string[] attachFilePathArr = Request.Form.GetValues("hid_attach_filepath");
            string[] attachFileSizeArr = Request.Form.GetValues("hid_attach_filesize");
            string[] attachPointArr = Request.Form.GetValues("txt_attach_point");
            if (attachFileNameArr != null && attachFilePathArr != null && attachFileSizeArr != null && attachPointArr != null
                && attachFileNameArr.Length > 0 && attachFilePathArr.Length > 0 && attachFileSizeArr.Length > 0 && attachPointArr.Length > 0)
            {
                List<Model.article_attach> ls = new List<Model.article_attach>();
                for (int i = 0; i < attachFileNameArr.Length; i++)
                {
                    int fileSize = Utils.StrToInt(attachFileSizeArr[i], 0);
                    string fileExt = FileHelper.GetFileExt(attachFilePathArr[i]);
                    int _point = Utils.StrToInt(attachPointArr[i], 0);
                    ls.Add(new Model.article_attach { channel_id = channel_id, file_name = attachFileNameArr[i], file_path = attachFilePathArr[i], file_size = fileSize, file_ext = fileExt, point = _point });
                }
                model.attach = ls;
            }
            #endregion

            #region 保存会员组价格==============
            //检查网站是否开启会员功能&检查该频道是否开启会员组价格
            if (sysConfig.memberstatus != 0 && channelModel.is_spec != 0)
            {
                List<Model.user_group_price> priceList = new List<Model.user_group_price>();
                BLL.user_groups bll2 = new BLL.user_groups();
                DataSet ds = bll2.GetList(0, "", "grade asc,id desc");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {

                    int _groupid = Convert.ToInt32(Request.Form.GetValues("hideGroupId" + ds.Tables[0].Rows[i]["id"]));
                    decimal _price = Convert.ToDecimal(Request.Form.GetValues("txtGroupPrice" + ds.Tables[0].Rows[i]["id"]));
                    priceList.Add(new Model.user_group_price { channel_id = channel_id, group_id = _groupid, price = _price });
                }
                model.group_price = priceList;
            }
            #endregion

            if (bll.Update(model))
            {

                AddAdminLog(DTEnums.ActionEnum.Edit.ToString(), "修改" + channelModel.title + "频道内容:" + model.title); //记录日志
                result = true;
            }
            return result;
        }
        #endregion

        #endregion

        #region category_list
        public ActionResult Category_list()
        {
            channel_id = DTRequest.GetQueryInt("channel_id");
            channel_name = new BLL.site_channel().GetChannelName(channel_id); //取得频道名称
            if (channel_id == 0)
            {
                return RedirectToAction("Error", "Admin", new { msg = "频道参数不正确！" });
            }
            ChkAdminLevel("channel_" + channel_name + "_category", DTEnums.ActionEnum.View.ToString()); //检查权限
            BLL.article_category bll = new BLL.article_category();
            DataTable dt = bll.GetList(0, channel_id);
            ViewBag.channel_id = channel_id;
            ViewBag.channel_name = channel_name;
            return View(dt);
        }
        #endregion

        #region Category_edit
        public ActionResult Category_edit()
        {
            string _action = DTRequest.GetQueryString("action");
            channel_id = DTRequest.GetQueryInt("channel_id");
            id = DTRequest.GetQueryInt("id");

            if (channel_id == 0)
            {
                return RedirectToAction("Error", "Admin", new { msg = "频道参数不正确！" });
            }
            channelModel = new BLL.site_channel().GetModel(channel_id); //频道实体

            if (!string.IsNullOrEmpty(_action) && _action == DTEnums.ActionEnum.Edit.ToString())
            {
                action = DTEnums.ActionEnum.Edit.ToString();//修改类型
                if (id == 0)
                {
                    return RedirectToAction("Error", "Admin", new { msg = "传输参数不正确！" });
                }
                if (!new BLL.article_category().Exists(id))
                {
                    return RedirectToAction("Error", "Admin", new { msg = "类别不存在或已被删除！" });
                }
            }
            ChkAdminLevel("channel_" + channelModel.name + "_category", DTEnums.ActionEnum.View.ToString()); //检查权限
            Category_editTreeBind(channel_id); //绑定类别
            Model.article_category model = new Model.article_category();
            if (action == DTEnums.ActionEnum.Edit.ToString()) //修改
            {
                BLL.article_category bll = new BLL.article_category();
                model = bll.GetModel(id);
                return View(model);
            }
            return View(model);
        }
        #region 绑定类别=================================
        private void Category_editTreeBind(int _channel_id)
        {
            BLL.article_category bll = new BLL.article_category();
            DataTable dt = bll.GetList(0, _channel_id);

            List<SelectListItem> list = new List<SelectListItem>();
            list.Add(new SelectListItem { Text = "无父级分类", Value = "0" });
            foreach (DataRow dr in dt.Rows)
            {
                string Id = dr["id"].ToString();
                int ClassLayer = int.Parse(dr["class_layer"].ToString());
                string Title = dr["title"].ToString().Trim();

                if (ClassLayer == 1)
                {
                    list.Add(new SelectListItem { Text = Title, Value = Id });
                }
                else
                {
                    Title = "├ " + Title;
                    Title = Utils.StringOfChar(ClassLayer - 1, "　") + Title;
                    list.Add(new SelectListItem { Text = Title, Value = Id });
                }
            }
            ViewBag.ddlParentId = list;
        }
        #endregion

        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Category_edit(article_category model, string submitAction, int id, int channel_id)
        {
            channelModel = new BLL.site_channel().GetModel(channel_id); //频道实体
            if (ModelState.IsValid)
            {
                if (submitAction == DTEnums.ActionEnum.Edit.ToString()) //修改
                {
                    ChkAdminLevel("channel_" + channelModel.name + "_category", DTEnums.ActionEnum.Edit.ToString()); //检查权限
                    if (!Category_editDoEdit(id, model))
                    {
                        return RedirectToAction("Error", "Admin", new { msg = "保存过程中发生错误！" });
                    }
                    return RedirectToAction("category_list", new { channel_id });
                }
                else //添加
                {
                    ChkAdminLevel("channel_" + channelModel.name + "_category", DTEnums.ActionEnum.Add.ToString()); //检查权限
                    if (!Category_editDoAdd(model))
                    {
                        return RedirectToAction("Error", "Admin", new { msg = "保存过程中发生错误！" });
                    }
                    return RedirectToAction("category_list", new { channel_id });
                }
            }
            return View();
        }

        #region 增加操作=================================
        private bool Category_editDoAdd(article_category model)
        {
            try
            {
                BLL.article_category bll = new BLL.article_category();

                if (bll.Add(model) > 0)
                {
                    AddAdminLog(DTEnums.ActionEnum.Add.ToString(), "添加" + channelModel.name + "频道栏目分类:" + model.title); //记录日志
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            return false;
        }
        #endregion

        #region 修改操作=================================
        private bool Category_editDoEdit(int _id, article_category model)
        {
            try
            {
                BLL.article_category bll = new BLL.article_category();
                int parentId = model.parent_id;

                //如果选择的父ID不是自己,则更改
                if (parentId != model.id)
                {
                    model.parent_id = parentId;
                }

                if (bll.Update(model))
                {
                    AddAdminLog(DTEnums.ActionEnum.Edit.ToString(), "修改" + channelModel.name + "频道栏目分类:" + model.title); //记录日志
                    return true;
                }
            }
            catch
            {
                return false;
            }
            return false;
        }
        #endregion
        #endregion

        #region comment_edit
        public ActionResult Comment_edit()
        {
            return View();
        }
        #endregion

        #region comment_list
        public ActionResult Comment_list()
        {
            return View();
        }
        #endregion
    }
}