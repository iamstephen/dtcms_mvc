using System.Web.Mvc;

namespace DTcms.Web.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            //后台一级目录
            context.MapRoute(
                name: "Admin_default1",
                url: "Admin/{action}",
                defaults: new { controller = "Admin", action = "Index" }
            );
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}",
                new { action = "Index" }
            );
        }
    }
}