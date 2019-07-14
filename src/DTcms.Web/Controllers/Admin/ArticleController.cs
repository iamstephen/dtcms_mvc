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

            //this.ddlCategoryId.Items.Clear();
            //this.ddlCategoryId.Items.Add(new ListItem("所有类别", ""));
            //foreach (DataRow dr in dt.Rows)
            //{
            //    string Id = dr["id"].ToString();
            //    int ClassLayer = int.Parse(dr["class_layer"].ToString());
            //    string Title = dr["title"].ToString().Trim();

            //    if (ClassLayer == 1)
            //    {
            //        this.ddlCategoryId.Items.Add(new ListItem(Title, Id));
            //    }
            //    else
            //    {
            //        Title = "├ " + Title;
            //        Title = Utils.StringOfChar(ClassLayer - 1, "　") + Title;
            //        this.ddlCategoryId.Items.Add(new ListItem(Title, Id));
            //    }
            //}
        }
        #endregion

        #region 数据绑定=================================
        private void RptBind(int _channel_id, int _category_id, string _strWhere, string _orderby)
        {
            this.page = DTRequest.GetQueryInt("page", 1);
            if (this.category_id > 0)
            {
                //this.ddlCategoryId.SelectedValue = _category_id.ToString();
            }
            //this.ddlProperty.SelectedValue = this.property;
            //this.txtKeywords.Text = this.keywords;
            //图表或列表显示
            BLL.article bll = new BLL.article();
            switch (this.prolistview)
            {
                //case "Txt":
                //    this.rptList2.Visible = false;
                //    this.rptList1.DataSource = bll.GetList(_channel_id, _category_id, this.pageSize, this.page, _strWhere, _orderby, out this.totalCount);
                //    this.rptList1.DataBind();
                //    break;
                //default:
                //    this.rptList1.Visible = false;
                //    this.rptList2.DataSource = bll.GetList(_channel_id, _category_id, this.pageSize, this.page, _strWhere, _orderby, out this.totalCount);
                //    this.rptList2.DataBind();
                //    break;
            }
            //绑定页码
            //txtPageNum.Text = this.pageSize.ToString();
            string pageUrl = Utils.CombUrlTxt("article_list.aspx", "channel_id={0}&category_id={1}&keywords={2}&property={3}&page={4}",
                _channel_id.ToString(), _category_id.ToString(), this.keywords, this.property, "__id__");
            //PageContent.InnerHtml = Utils.OutPageList(this.pageSize, this.page, this.totalCount, pageUrl, 8);
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
            this.channel_id = DTRequest.GetQueryInt("channel_id");
            this.channel_name = new BLL.site_channel().GetChannelName(this.channel_id); //取得频道名称
            if (this.channel_id == 0)
            {
                return RedirectToAction("Error", "Admin", new { msg = "频道参数不正确！" });
            }
            ChkAdminLevel("channel_" + this.channel_name + "_category", DTEnums.ActionEnum.View.ToString()); //检查权限
            BLL.article_category bll = new BLL.article_category();
            DataTable dt = bll.GetList(0, this.channel_id);
            ViewBag.channel_id = channel_id;
            ViewBag.channel_name = channel_name;
            return View(dt);
        }
        #endregion

        #region Category_edit
        public ActionResult Category_edit()
        {
            return View();
        }
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