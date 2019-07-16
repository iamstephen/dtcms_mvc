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
            pageSize = GetPageSize(10); //每页数量
            prolistview = Utils.GetCookie("article_list_view"); //显示方式

            ChkAdminLevel("channel_" + channel_name + "_list", DTEnums.ActionEnum.View.ToString()); //检查权限
            TreeBind(channel_id); //绑定类别
            RptBind(channel_id, category_id, "id>0" + CombSqlTxt(keywords, property), "sort_id asc,add_time desc,id desc");

            ViewBag.channel_id = channel_id;

            return View();
        }

        #region 绑定类别=================================
        private void TreeBind(int _channel_id)
        {
            BLL.article_category bll = new BLL.article_category();
            DataTable dt = bll.GetList(0, _channel_id);

            //ddlCategoryId.Items.Clear();
            //ddlCategoryId.Items.Add(new ListItem("所有类别", ""));
            //foreach (DataRow dr in dt.Rows)
            //{
            //    string Id = dr["id"].ToString();
            //    int ClassLayer = int.Parse(dr["class_layer"].ToString());
            //    string Title = dr["title"].ToString().Trim();

            //    if (ClassLayer == 1)
            //    {
            //        ddlCategoryId.Items.Add(new ListItem(Title, Id));
            //    }
            //    else
            //    {
            //        Title = "├ " + Title;
            //        Title = Utils.StringOfChar(ClassLayer - 1, "　") + Title;
            //        ddlCategoryId.Items.Add(new ListItem(Title, Id));
            //    }
            //}
        }
        #endregion

        #region 数据绑定=================================
        private void RptBind(int _channel_id, int _category_id, string _strWhere, string _orderby)
        {
            page = DTRequest.GetQueryInt("page", 1);
            if (category_id > 0)
            {
                //ddlCategoryId.SelectedValue = _category_id.ToString();
            }
            //ddlProperty.SelectedValue = property;
            //txtKeywords.Text = keywords;
            //图表或列表显示
            BLL.article bll = new BLL.article();
            switch (prolistview)
            {
                //case "Txt":
                //    rptList2.Visible = false;
                //    rptList1.DataSource = bll.GetList(_channel_id, _category_id, pageSize, page, _strWhere, _orderby, out totalCount);
                //    rptList1.DataBind();
                //    break;
                //default:
                //    rptList1.Visible = false;
                //    rptList2.DataSource = bll.GetList(_channel_id, _category_id, pageSize, page, _strWhere, _orderby, out totalCount);
                //    rptList2.DataBind();
                //    break;
            }
            //绑定页码
            //txtPageNum.Text = pageSize.ToString();
            string pageUrl = Utils.CombUrlTxt("article_list.aspx", "channel_id={0}&category_id={1}&keywords={2}&property={3}&page={4}",
                _channel_id.ToString(), _category_id.ToString(), keywords, property, "__id__");
            //PageContent.InnerHtml = Utils.OutPageList(pageSize, page, totalCount, pageUrl, 8);
        }
        #endregion

        #region 组合SQL查询语句==========================
        protected string CombSqlTxt(string _keywords, string _property)
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
        private int GetPageSize(int _default_size)
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
            return View();
        }
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
        public ActionResult Category_edit(article_category model,string submitAction,int id,int channel_id) {
            channelModel = new BLL.site_channel().GetModel(channel_id); //频道实体
            if (ModelState.IsValid) {
                if (submitAction == DTEnums.ActionEnum.Edit.ToString()) //修改
                {
                    ChkAdminLevel("channel_" + channelModel.name + "_category", DTEnums.ActionEnum.Edit.ToString()); //检查权限
                    if (!Category_editDoEdit(id,model))
                    {
                        return RedirectToAction("Error", "Admin", new { msg = "保存过程中发生错误！" });
                    }
                    return RedirectToAction("category_list",new { channel_id });
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
            catch(Exception ex)
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