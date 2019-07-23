using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DTcms.Model;
using System.Web.Mvc;
using DTcms.Web.UI;
using DTcms.Common;
using System.Text.RegularExpressions;

namespace DTcms.Web.HtmlExtensions
{
    public static class CommonInfo
    {
        static Model.sysconfig config = new BLL.sysconfig().loadConfig();
        static Model.userconfig uconfig = new BLL.userconfig().loadConfig();
        static Model.sites site = new Model.sites();

        public static sites GetSiteModel(this HtmlHelper htmlHelper) {
            string requestDomain = HttpContext.Current.Request.Url.Authority.ToLower(); //获得来源域名含端口号
            string requestPath = HttpContext.Current.Request.RawUrl.ToLower(); //当前的URL地址
            string sitePath = GetSitePath(requestPath, requestDomain);
            Model.sites modelt = SiteDomains.GetSiteDomains().SiteList.Find(p => p.build_path == sitePath);
            return modelt;
        }

        #region 辅助方法(私有)========================================
        /// <summary>
        /// 获取当前页面包含的站点目录
        /// </summary>
        private static string GetFirstPath(string requestPath)
        {
            int indexNum = config.webpath.Length; //安装目录长度
                                                  //如果包含安装目录和aspx目录也要过滤掉
            if (requestPath.StartsWith(config.webpath + DTKeys.DIRECTORY_REWRITE_ASPX + "/"))
            {
                indexNum = (config.webpath + DTKeys.DIRECTORY_REWRITE_ASPX + "/").Length;
            }
            string requestFirstPath = requestPath.Substring(indexNum);
            if (requestFirstPath.IndexOf("/") > 0)
            {
                requestFirstPath = requestFirstPath.Substring(0, requestFirstPath.IndexOf("/"));
            }
            if (requestFirstPath != string.Empty && SiteDomains.GetSiteDomains().Paths.ContainsKey(requestFirstPath))
            {
                return requestFirstPath;
            }
            return string.Empty;
        }

        /// <summary>
        /// 获取链接的前缀
        /// </summary>
        /// <param name="requestPath">当前的URL地址</param>
        /// <param name="requestDomain">获得来源域名含端口号</param>
        /// <returns>String</returns>
        private static string GetLinkStartString(string requestPath, string requestDomain)
        {
            string requestFirstPath = GetFirstPath(requestPath);//获得二级目录(不含站点安装目录)

            //检查是否与绑定的域名或者与默认站点的目录匹配
            if (SiteDomains.GetSiteDomains().Paths.ContainsValue(requestDomain))
            {
                return "/";
            }
            else if (requestFirstPath == string.Empty || requestFirstPath == SiteDomains.GetSiteDomains().DefaultPath)
            {
                return config.webpath;
            }
            else
            {
                return config.webpath + requestFirstPath + "/";
            }
        }

        /// <summary>
        /// 获取站点的目录
        /// </summary>
        /// <param name="requestPath">获取的页面，包含目录</param>
        /// <param name="requestDomain">获取的域名(含端口号)</param>
        /// <returns>String</returns>
        private static string GetSitePath(string requestPath, string requestDomain)
        {
            //当前域名是否存在于站点目录列表
            if (SiteDomains.GetSiteDomains().Paths.ContainsValue(requestDomain))
            {
                return SiteDomains.GetSiteDomains().Domains[requestDomain];
            }

            // 获取当前页面包含的站点目录
            string pagePath = GetFirstPath(requestPath);
            if (pagePath != string.Empty)
            {
                return pagePath;
            }
            return SiteDomains.GetSiteDomains().DefaultPath;
        }

        /// <summary>
        /// 参数个数是否匹配
        /// </summary>
        private static bool IsUrlMatch(Model.url_rewrite_item item, params object[] _params)
        {
            int strLength = 0;
            if (!string.IsNullOrEmpty(item.querystring))
            {
                strLength = item.querystring.Split('&').Length;
            }
            if (strLength == _params.Length)
            {
                //注意__id__代表分页页码，所以须替换成数字才成进行匹配
                if (Regex.IsMatch(string.Format(item.path, _params).Replace("__id__", "1"), item.pattern, RegexOptions.None | RegexOptions.IgnoreCase))
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// 替换扩展名
        /// </summary>
        private static string GetUrlExtension(string urlPage, string staticExtension)
        {
            return Utils.GetUrlExtension(urlPage, staticExtension);
        }

        #endregion
    }

    

    
}