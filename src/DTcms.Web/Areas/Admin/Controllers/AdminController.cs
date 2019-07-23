using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTcms.Common;
using DTcms.Model;
using DTcms.Web.Filter;
using DTcms.Web.UI;

namespace DTcms.Web.Areas.Admin.Controllers
{
    [AdminAuthorize]
    public class AdminController : ManagePage
    {
        #region 登录页
        // GET: Admin
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [AllowAnonymous]
        public ActionResult Login(manager user, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                if (user.user_name == null || user.password == null)
                {
                    ModelState.AddModelError("user_name", "请输入用户名或密码");
                    return View();
                }
                string userName = user.user_name.Trim();
                string userPwd = user.password.Trim();

                if (userName.Equals("") || userPwd.Equals(""))
                {
                    ModelState.AddModelError("user_name", "请输入用户名或密码");
                    return View();
                }
                if (Session["AdminLoginSun"] == null)
                {
                    Session["AdminLoginSun"] = 1;
                }
                else
                {
                    Session["AdminLoginSun"] = Convert.ToInt32(Session["AdminLoginSun"]) + 1;
                }
                //判断登录错误次数
                if (Session["AdminLoginSun"] != null && Convert.ToInt32(Session["AdminLoginSun"]) > 5)
                {
                    ModelState.AddModelError("AdminLoginSun", "错误超过5次，关闭浏览器重新登录！");
                    return View();
                }
                BLL.manager bll = new BLL.manager();
                Model.manager model = bll.GetModel(userName, userPwd, true);
                if (model == null)
                {
                    ModelState.AddModelError("passworderror", "用户名或密码有误，请重试！");
                    return View();
                }
                Session[DTKeys.SESSION_ADMIN_INFO] = model;
                Session.Timeout = 45;
                //写入登录日志
                Model.sysconfig sysConfig = new BLL.sysconfig().loadConfig();
                if (sysConfig.logstatus > 0)
                {
                    new BLL.manager_log().Add(model.id, model.user_name, DTEnums.ActionEnum.Login.ToString(), "用户登录");
                }
                //写入Cookies
                Utils.WriteCookie("DTRememberName", model.user_name, 14400);
                Utils.WriteCookie("AdminName", "DTcms", model.user_name);
                Utils.WriteCookie("AdminPwd", "DTcms", model.password);

                if (Url.IsLocalUrl(returnUrl))
                {
                    return Redirect(returnUrl);
                }
                return RedirectToAction("Index", "Admin");
            }

            return View();
        }
        #endregion

        #region 首页

        public ActionResult Index()
        {
            //管理员信息
            manager admin_info = GetAdminInfo();
            //角色信息
            manager_role manager_Role = new BLL.manager_role().GetModel(admin_info.role_id);
            ViewBag.manager_Role = manager_Role;
            return View(admin_info);
        }

        public ActionResult LbtnBuild()
        {
            string skinName = "main";
            string ddlSitePath = "main";
            MarkTemplates(ddlSitePath, skinName);
            //修改当前站点当前模板名
            new BLL.sites().UpdateField(ddlSitePath, "templet_path='" + skinName + "'");
            AddAdminLog(DTEnums.ActionEnum.Build.ToString(), "生成模板:" + skinName);//记录日志
            return RedirectToAction("Index");
        }

        public ActionResult LbtnExit()
        {
            Session[DTKeys.SESSION_ADMIN_INFO] = null;
            Utils.WriteCookie("AdminName", "DTcms", -14400);
            Utils.WriteCookie("AdminPwd", "DTcms", -14400);
            return RedirectToAction("Login");
        }

        #region 全部生成模板=============================
        /// <summary>
        /// 生成全部模板
        /// </summary>
        private void MarkTemplates(string buildPath, string skinName)
        {
            //取得ASP目录下的所有文件
            string fullDirPath = Utils.GetMapPath(string.Format("{0}aspx/{1}/", sysConfig.webpath, buildPath));
            //取得模板目录的物理路径
            string fullTempPath = Utils.GetMapPath(string.Format("{0}templates/{1}/", sysConfig.webpath, skinName));
            //获得URL配置列表
            BLL.url_rewrite bll = new BLL.url_rewrite();
            List<Model.url_rewrite> ls = bll.GetList(string.Empty);

            DirectoryInfo dirFile = new DirectoryInfo(fullDirPath);
            //删除不属于URL映射表里的文件，防止冗余
            if (Directory.Exists(fullDirPath))
            {
                foreach (FileInfo file in dirFile.GetFiles())
                {
                    //检查文件
                    Model.url_rewrite modelt = ls.Find(p => p.page.ToLower() == file.Name.ToLower());
                    if (modelt != null && modelt.type.ToLower() == "plugin")
                    {
                        continue; //如果是插件页面则不删除
                    }
                    file.Delete(); //删除文件
                }
            }

            //遍历URL配置列表
            foreach (Model.url_rewrite modelt in ls)
            {
                //如果URL配置对应的模板文件存在则生成
                string fullPath = Utils.GetMapPath(string.Format("{0}templates/{1}/{2}", sysConfig.webpath, skinName, modelt.templet));
                if (System.IO.File.Exists(fullPath))
                {
                    PageTemplate.GetTemplate(sysConfig.webpath, "templates", skinName, modelt.templet, modelt.page, modelt.inherit, buildPath, modelt.channel, modelt.pagesize, 1);
                }
            }
        }
        #endregion
        #endregion

        #region center
        public ActionResult Center()
        {
            manager admin_info = GetAdminInfo(); //管理员信息
                                                 //登录信息
            if (admin_info != null)
            {
                BLL.manager_log bll = new BLL.manager_log();
                manager_log model1 = bll.GetModel(admin_info.user_name, 1, DTEnums.ActionEnum.Login.ToString());
                if (model1 != null)
                {
                    //本次登录
                    ViewBag.litIP = model1.user_ip;
                }
                manager_log model2 = bll.GetModel(admin_info.user_name, 2, DTEnums.ActionEnum.Login.ToString());
                if (model2 != null)
                {
                    //上一次登录
                    ViewBag.litBackIP = model2.user_ip;
                    ViewBag.litBackTime = model2.add_time.ToString();
                }
            }
            return View(sysConfig);
        }
        #endregion

        public ActionResult Error(string msg) {
            ViewBag.msg = msg;
            return View();
        }

    }
}