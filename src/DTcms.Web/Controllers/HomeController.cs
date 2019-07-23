using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTcms.BLL;
using System.Data;
using DTcms.Web.UI;

namespace DTcms.Web.Controllers
{
    public class HomeController : BasePage
    {

        public ActionResult Index()
        {
            DataTable homeBanner = get_article_list("photo", 14, 0, "status=0");
            ViewBag.homeBanner = homeBanner;
            return View();
        }
    }
}