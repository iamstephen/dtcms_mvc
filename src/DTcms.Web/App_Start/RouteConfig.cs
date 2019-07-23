using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace DTcms.Web
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            ////后台一级目录(不使用area的时候用于区分前后台路由)
            //routes.MapRoute(
            //    name: "Admin",
            //    url: "Admin/{action}",
            //    defaults: new { controller = "Admin", action = "Index" }
            //);
            ////后台二级目录(不使用area的时候用于区分前后台路由)
            //routes.MapRoute(
            //    name: "Admin2",
            //    url: "Admin/{controller}/{action}",
            //    defaults: new { controller = "Admin", action = "Index" }
            //);
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "DTcms.Web.Controllers" }//和area存在同名controller时候以这个命名空间的控制器为主
            );
        }
    }

    //用于限制路由不等于***(constraints: new { controller=new NotEqual("Admin")})
    //public class NotEqual : IRouteConstraint
    //{
    //    private string _match = String.Empty;

    //    public NotEqual(string match)
    //    {
    //        _match = match;
    //    }

    //    public bool Match(HttpContextBase httpContext, Route route, string parameterName, RouteValueDictionary values, RouteDirection routeDirection)
    //    {
    //        return String.Compare(values[parameterName].ToString(), _match, true) != 0;
    //    }
    //}
}
