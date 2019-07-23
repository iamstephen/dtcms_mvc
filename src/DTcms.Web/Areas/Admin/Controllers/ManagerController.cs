using DTcms.Web.Filter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DTcms.Web.Areas.Admin.Controllers
{
    [AdminAuthorize]
    public class ManagerController : Controller
    {
        public ActionResult Manager_edit()
        {
            return View();
        }
        public ActionResult Manager_list()
        {
            return View();
        }
        public ActionResult Manager_log()
        {
            return View();
        }
        public ActionResult Manager_pwd()
        {
            return View();
        }
        
        public ActionResult Role_edit() {
            return View();
        }
        public ActionResult Role_list()
        {
            return View();
        }
    }
}