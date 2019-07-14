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
            }
        }

        //删除类别
        private void Category_list_btnDelete(HttpContext context)
        {
            int channel_id = DTRequest.GetString("channel_id").ToInt();
            string channel_name = DTRequest.GetString("channel_name");
            string delete_data = DTRequest.GetString("delete_data");

            new ManagePage().ChkAdminLevel(context,"channel_" + channel_name + "_category", DTEnums.ActionEnum.Delete.ToString()); //检查权限
            BLL.article_category bll = new BLL.article_category();

            List<Ids> list = JsonHelper.JSONToObject<List<Ids>>(delete_data);
            foreach (var item in list)
            {
                bll.Delete(item.id);
            }
            new ManagePage().AddAdminLog(DTEnums.ActionEnum.Edit.ToString(), "删除" + channel_name + "频道栏目分类数据"); //记录日志
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
            new ManagePage().AddAdminLog(context,DTEnums.ActionEnum.Edit.ToString(), "保存" + channel_name + "频道栏目分类排序"); //记录日志
            string url = Utils.CombUrlTxt("category_list", "channel_id={0}", channel_id.ToString());
            context.Response.Write("{\"status\": 1, \"msg\": \"保存排序成功！\",\"url\":\""+url+"\"}");
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