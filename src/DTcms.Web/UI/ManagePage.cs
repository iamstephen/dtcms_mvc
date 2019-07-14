using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Web.Mvc;
using DTcms.Common;
using DTcms.Web.Filter;

namespace DTcms.Web.UI
{
    public class ManagePage : Controller
    {
        protected internal Model.sysconfig sysConfig;

        public ManagePage()
        {
            sysConfig = new BLL.sysconfig().loadConfig();
        }

        #region 管理员============================================
        /// <summary>
        /// 判断管理员是否已经登录(解决Session超时问题)
        /// </summary>
        public bool IsAdminLogin(HttpContext context)
        {
            //如果Session为Null
            if (context.Session[DTKeys.SESSION_ADMIN_INFO] != null)
            {
                return true;
            }
            else
            {
                //检查Cookies
                string adminname = Utils.GetCookie("AdminName", "DTcms");
                string adminpwd = Utils.GetCookie("AdminPwd", "DTcms");
                if (adminname != "" && adminpwd != "")
                {
                    BLL.manager bll = new BLL.manager();
                    Model.manager model = bll.GetModel(adminname, adminpwd);
                    if (model != null)
                    {
                        context.Session[DTKeys.SESSION_ADMIN_INFO] = model;
                        return true;
                    }
                }
            }
            return false;
        }

        /// <summary>
        /// 取得管理员信息
        /// </summary>
        public Model.manager GetAdminInfo(HttpContext context)
        {
            Model.manager model = context.Session[DTKeys.SESSION_ADMIN_INFO] as Model.manager;
            if (model != null)
            {
                return model;
            }
            return null;
        }

        /// <summary>
        /// 取得管理员信息
        /// </summary>
        public Model.manager GetAdminInfo()
        {
            Model.manager model = Session[DTKeys.SESSION_ADMIN_INFO] as Model.manager;
            if (model != null)
            {
                return model;
            }
            return null;
        }

        /// <summary>
        /// 检查管理员权限
        /// </summary>
        /// <param name="nav_name">菜单名称</param>
        /// <param name="action_type">操作类型</param>
        public void ChkAdminLevel(HttpContext context,string nav_name, string action_type)
        {
            Model.manager model = GetAdminInfo(context);
            BLL.manager_role bll = new BLL.manager_role();
            bool result = bll.Exists(model.role_id, nav_name, action_type);

            if (!result)
            {
                RedirectToAction("Error", "Admin", new { msg = "您没有管理该页面的权限，请勿非法进入！" });
            }
        }

        /// <summary>
        /// 写入管理日志
        /// </summary>
        /// <param name="action_type"></param>
        /// <param name="remark"></param>
        /// <returns></returns>
        public bool AddAdminLog(HttpContext context,string action_type, string remark)
        {
            if (sysConfig.logstatus > 0)
            {
                Model.manager model = GetAdminInfo(context);
                int newId = new BLL.manager_log().Add(model.id, model.user_name, action_type, remark);
                if (newId > 0)
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// 检查管理员权限
        /// </summary>
        /// <param name="nav_name">菜单名称</param>
        /// <param name="action_type">操作类型</param>
        public void ChkAdminLevel(string nav_name, string action_type)
        {
            Model.manager model = GetAdminInfo();
            BLL.manager_role bll = new BLL.manager_role();
            bool result = bll.Exists(model.role_id, nav_name, action_type);

            if (!result)
            {
                RedirectToAction("Error", "Admin",new { msg= "您没有管理该页面的权限，请勿非法进入！" });
            }
        }

        /// <summary>
        /// 写入管理日志
        /// </summary>
        /// <param name="action_type"></param>
        /// <param name="remark"></param>
        /// <returns></returns>
        public bool AddAdminLog(string action_type, string remark)
        {
            if (sysConfig.logstatus > 0)
            {
                Model.manager model = GetAdminInfo();
                int newId = new BLL.manager_log().Add(model.id, model.user_name, action_type, remark);
                if (newId > 0)
                {
                    return true;
                }
            }
            return false;
        }

        #endregion

    }
}
