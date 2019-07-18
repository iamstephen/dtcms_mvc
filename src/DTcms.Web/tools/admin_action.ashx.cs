using DTcms.Common;
using DTcms.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using DTcms.Model;
using DTcms.Web.Models;

namespace DTcms.Web.tools
{
    /// <summary>
    /// 管理员action请求处理
    /// </summary>
    public class admin_action : IHttpHandler, IRequiresSessionState
    {
        Model.sysconfig sysConfig = new BLL.sysconfig().loadConfig();//系统配置信息
        Model.userconfig userConfig = new BLL.userconfig().loadConfig();//会员配置信息

        public void ProcessRequest(HttpContext context)
        {
            //检查管理员是否登录
            if (!new ManagePage().IsAdminLogin(context))
            {
                context.Response.Write("{\"status\": 0, \"msg\": \"尚未登录或已超时，请登录后操作！\"}");
                return;
            }
            //取得处事类型
            string action = DTRequest.GetQueryString("action");
            switch (action)
            {
                case "Category_list_btnSave"://类别保存排序
                    category_list_btnsave(context);
                    break;
                case "Category_list_btnDelete"://删除类别
                    Category_list_btnDelete(context);
                    break;
                case "Article_list_btnSave"://文章保存排序
                    Article_list_btnSave(context);
                    break;
                case "Article_list_btnDelete"://删除文章
                    Article_list_btnDelete(context);
                    break;
                case "Article_list_btnAudit"://审核文章
                    Article_list_btnAudit(context);
                    break;
                case "Article_list_ToolsOperate"://设置操作
                    Article_list_ToolsOperate(context);
                    break;
                case "Article_list_ChangePageSize":
                    Article_list_ChangePageSize(context);
                    break;
            }
        }

        private void Article_list_ChangePageSize(HttpContext context)
        {
            int channel_id = DTRequest.GetString("channel_id").ToInt();
            string channel_name = DTRequest.GetString("channel_name");
            string audit_data = DTRequest.GetString("audit_data");

            string category_id = DTRequest.GetString("category_id");
            string keywords = DTRequest.GetString("keywords");
            string property = DTRequest.GetString("property");
            string txtPageNum = DTRequest.GetString("txtPageNum");

            int _pagesize;
            if (int.TryParse(txtPageNum.Trim(), out _pagesize))
            {
                if (_pagesize > 0)
                {
                    Utils.WriteCookie("article_page_size", "DTcmsPage", _pagesize.ToString(), 43200);
                }
            }
            string url = Utils.CombUrlTxt("article_list", "channel_id={0}&category_id={1}&keywords={2}&property={3}", channel_id.ToString(), category_id, keywords, property);
            context.Response.Write("{\"status\": 1, \"msg\": \"操作成功！\",\"url\":\"" + url + "\"}");
        }

        private void Article_list_ToolsOperate(HttpContext context)
        {
            int channel_id = DTRequest.GetString("channel_id").ToInt();
            string channel_name = DTRequest.GetString("channel_name");
            string audit_data = DTRequest.GetString("audit_data");

            string category_id = DTRequest.GetString("category_id");
            string keywords = DTRequest.GetString("keywords");
            string property = DTRequest.GetString("property");

            int id = DTRequest.GetString("id").ToInt();
            string operrate = DTRequest.GetString("operrate");
            new ManagePage().ChkAdminLevel(context, "channel_" + channel_name + "_list", DTEnums.ActionEnum.Edit.ToString()); //检查权限
            BLL.article bll = new BLL.article();
            Model.article model = bll.GetModel(channel_id, id);
            switch (operrate)
            {
                case "lbtnIsMsg":
                    if (model.is_msg == 1)
                        bll.UpdateField(channel_id, id, "is_msg=0");
                    else
                        bll.UpdateField(channel_id, id, "is_msg=1");
                    break;
                case "lbtnIsTop":
                    if (model.is_top == 1)
                        bll.UpdateField(channel_id, id, "is_top=0");
                    else
                        bll.UpdateField(channel_id, id, "is_top=1");
                    break;
                case "lbtnIsRed":
                    if (model.is_red == 1)
                        bll.UpdateField(channel_id, id, "is_red=0");
                    else
                        bll.UpdateField(channel_id, id, "is_red=1");
                    break;
                case "lbtnIsHot":
                    if (model.is_hot == 1)
                        bll.UpdateField(channel_id, id, "is_hot=0");
                    else
                        bll.UpdateField(channel_id, id, "is_hot=1");
                    break;
                case "lbtnIsSlide":
                    if (model.is_slide == 1)
                        bll.UpdateField(channel_id, id, "is_slide=0");
                    else
                        bll.UpdateField(channel_id, id, "is_slide=1");
                    break;
            }
            string url = Utils.CombUrlTxt("article_list", "channel_id={0}&category_id={1}&keywords={2}&property={3}", channel_id.ToString(), category_id, keywords, property);
            context.Response.Write("{\"status\": 1, \"msg\": \"操作成功！\",\"url\":\"" + url + "\"}");
        }
        private void Article_list_btnAudit(HttpContext context)
        {
            int channel_id = DTRequest.GetString("channel_id").ToInt();
            string channel_name = DTRequest.GetString("channel_name");
            string audit_data = DTRequest.GetString("audit_data");

            string category_id = DTRequest.GetString("category_id");
            string keywords = DTRequest.GetString("keywords");
            string property = DTRequest.GetString("property");

            new ManagePage().ChkAdminLevel(context, "channel_" + channel_name + "_list", DTEnums.ActionEnum.Audit.ToString()); //检查权限
            BLL.article bll = new BLL.article();
            List<Ids> list = JsonHelper.JSONToObject<List<Ids>>(audit_data);
            foreach (var item in list)
            {
                bll.UpdateField(channel_id, item.id, "status=0");
            }
            new ManagePage().AddAdminLog(context, DTEnums.ActionEnum.Audit.ToString(), "审核" + channel_name + "频道内容信息"); //记录日志
            string url = Utils.CombUrlTxt("article_list", "channel_id={0}&category_id={1}&keywords={2}&property={3}", channel_id.ToString(), category_id, keywords, property);
            context.Response.Write("{\"status\": 1, \"msg\": \"保存排序成功！\",\"url\":\"" + url + "\"}");
        }

        private void Article_list_btnDelete(HttpContext context)
        {
            int channel_id = DTRequest.GetString("channel_id").ToInt();
            string channel_name = DTRequest.GetString("channel_name");
            string delete_data = DTRequest.GetString("delete_data");

            string category_id = DTRequest.GetString("category_id");
            string keywords = DTRequest.GetString("keywords");
            string property = DTRequest.GetString("property");

            new ManagePage().ChkAdminLevel(context, "channel_" + channel_name + "_list", DTEnums.ActionEnum.Delete.ToString()); //检查权限
            int sucCount = 0; //成功数量
            int errorCount = 0; //失败数量
            BLL.article bll = new BLL.article();
            List<Ids> list = JsonHelper.JSONToObject<List<Ids>>(delete_data);
            foreach (var item in list)
            {
                if (bll.Delete(channel_id, item.id))
                {
                    sucCount++;
                }
                else
                {
                    errorCount++;
                }
            }
            new ManagePage().AddAdminLog(context, DTEnums.ActionEnum.Edit.ToString(), "删除" + channel_name + "频道内容成功" + sucCount + "条，失败" + errorCount + "条"); //记录日志

            string url = Utils.CombUrlTxt("article_list", "channel_id={0}&category_id={1}&keywords={2}&property={3}", channel_id.ToString(), category_id, keywords, property);
            string msg = "删除成功" + sucCount + "条，失败" + errorCount + "条！";
            context.Response.Write("{\"status\": 1, \"msg\": \"" + msg + "\",\"url\":\"" + url + "\"}");
        }

        private void Article_list_btnSave(HttpContext context)
        {
            int channel_id = DTRequest.GetString("channel_id").ToInt();
            string channel_name = DTRequest.GetString("channel_name");
            string sort_data = DTRequest.GetString("sort_data");

            string category_id = DTRequest.GetString("category_id");
            string keywords = DTRequest.GetString("keywords");
            string property = DTRequest.GetString("property");

            new ManagePage().ChkAdminLevel(context, "channel_" + channel_name + "_list", DTEnums.ActionEnum.Edit.ToString()); //检查权限
            BLL.article bll = new BLL.article();
            List<Dic> list = JsonHelper.JSONToObject<List<Dic>>(sort_data);

            foreach (var item in list)
            {
                int id = item.id;
                int sortId;
                if (!int.TryParse(item.value, out sortId))
                {
                    sortId = 99;
                }
                bll.UpdateField(channel_id, id, "sort_id=" + sortId.ToString());
            }
            new ManagePage().AddAdminLog(context, DTEnums.ActionEnum.Edit.ToString(), "保存" + channel_name + "频道内容排序"); //记录日志
            string url = Utils.CombUrlTxt("article_list", "channel_id={0}&category_id={1}&keywords={2}&property={3}", channel_id.ToString(), category_id, keywords, property);
            context.Response.Write("{\"status\": 1, \"msg\": \"保存排序成功！\",\"url\":\"" + url + "\"}");
        }

        //删除类别
        private void Category_list_btnDelete(HttpContext context)
        {
            int channel_id = DTRequest.GetString("channel_id").ToInt();
            string channel_name = DTRequest.GetString("channel_name");
            string delete_data = DTRequest.GetString("delete_data");

            new ManagePage().ChkAdminLevel(context, "channel_" + channel_name + "_category", DTEnums.ActionEnum.Delete.ToString()); //检查权限
            BLL.article_category bll = new BLL.article_category();

            List<Ids> list = JsonHelper.JSONToObject<List<Ids>>(delete_data);
            foreach (var item in list)
            {
                bll.Delete(item.id);
            }
            new ManagePage().AddAdminLog(context, DTEnums.ActionEnum.Edit.ToString(), "删除" + channel_name + "频道栏目分类数据"); //记录日志
            string url = Utils.CombUrlTxt("category_list", "channel_id={0}", channel_id.ToString());
            context.Response.Write("{\"status\": 1, \"msg\": \"删除数据成功！\",\"url\":\"" + url + "\"}");
        }

        //类别保存排序
        private void category_list_btnsave(HttpContext context)
        {
            int channel_id = DTRequest.GetString("channel_id").ToInt();
            string channel_name = DTRequest.GetString("channel_name");
            string sort_data = DTRequest.GetString("sort_data");

            new ManagePage().ChkAdminLevel(context, "channel_" + channel_name + "_category", DTEnums.ActionEnum.Edit.ToString()); //检查权限
            BLL.article_category bll = new BLL.article_category();

            List<Dic> list = JsonHelper.JSONToObject<List<Dic>>(sort_data);

            foreach (var item in list)
            {
                int id = item.id;
                int sortId;
                if (!int.TryParse(item.value, out sortId))
                {
                    sortId = 99;
                }
                bll.UpdateField(id, "sort_id=" + sortId.ToString());
            }
            new ManagePage().AddAdminLog(context, DTEnums.ActionEnum.Edit.ToString(), "保存" + channel_name + "频道栏目分类排序"); //记录日志
            string url = Utils.CombUrlTxt("category_list", "channel_id={0}", channel_id.ToString());
            context.Response.Write("{\"status\": 1, \"msg\": \"保存排序成功！\",\"url\":\"" + url + "\"}");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}