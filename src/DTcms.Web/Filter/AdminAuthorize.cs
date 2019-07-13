using DTcms.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTcms.Web.UI;

namespace DTcms.Web.Filter
{
    public class AdminAuthorize : AuthorizeAttribute
    {
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            //碰到加了AllowAnonymous跳过
            bool flag = filterContext.ActionDescriptor.IsDefined(typeof(AllowAnonymousAttribute), true) || filterContext.ActionDescriptor.ControllerDescriptor.IsDefined(typeof(AllowAnonymousAttribute), true);
            if (flag)
            {
                return;
            }
            else
            {
                //检查管理员是否登录
                if (!new ManagePage().IsAdminLogin(filterContext.HttpContext.ApplicationInstance.Context))
                {
                    filterContext.Result = new RedirectToRouteResult(new System.Web.Routing.RouteValueDictionary(new
                    {
                        //需要跳转的Controller
                        controller = "admin",
                        //需要跳转的Action
                        action = "login",
                        //返回的字段说明
                        returnUrl = filterContext.HttpContext.Request.Url
                    }));
                }
            }
        }
    }
}