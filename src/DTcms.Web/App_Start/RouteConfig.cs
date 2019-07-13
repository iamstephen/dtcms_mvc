using System;
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
            //后台一级目录
            routes.MapRoute(
                name: "Admin",
                url: "Admin/{action}",
                defaults: new { controller = "Admin", action = "Index" }
            );
            //后台二级目录
            routes.MapRoute(
                name: "Admin2",
                url: "Admin/{controller}/{action}",
                defaults: new { controller = "Admin", action = "Index" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
            
        }
    }
}
