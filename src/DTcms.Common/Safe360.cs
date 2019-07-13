using System.Text.RegularExpressions;
using System.Web;

/// <summary>
/// Web请求安全检查：防止跨站点脚本,Sql注入等攻击,来自:http://bbs.webscan.360.cn/forum.php?mod=viewthread&tid=711&page=1&extra=#pid1927
/// 检查数据包括:
/// 1.Cookie
/// 2.当前页面地址
/// 3.ReferrerUrl
/// 4.Post数据
/// 5.Get数据
/// </summary>
public class Safe360
{
    #region 执行安全检查

    /// <summary>
    /// 执行安全检查
    /// </summary>
    public static void Procress()
    {
        //const string errmsg = "<div>对不起，您的请求中带有不合法参数,服务器已终止请求!</div>";

        const string errmsg =
            "<div style='position:fixed;top:0px;width:100%;height:100%;background-color:white;color:red;font-size: 12px;border-bottom:5px solid #999;'><br>对不起，您的请求中带有不合法参数,服务器已终止请求!<br></div>";

        if (RawUrl())
        {
            WriteErrMsg(errmsg);
        }

        if (CookieData())
        {
            // WriteErrMsg(errmsg);
        }

        if (HttpContext.Current.Request.UrlReferrer != null)
        {
            if (Referer())
            {
                WriteErrMsg(errmsg);
            }
        }

        if (HttpContext.Current.Request.RequestType.ToUpper() == "POST")
        {
            if (PostData())
            {
                WriteErrMsg(errmsg);
            }
        }
        if (HttpContext.Current.Request.RequestType.ToUpper() == "GET")
        {
            if (GetData())
            {
                WriteErrMsg(errmsg);
            }
        }
    }

    /// <summary>
    /// 执行安全检查
    /// </summary>
    public static void SysProcress()
    {
        //const string errmsg = "<div>对不起，您的请求中带有不合法参数,服务器已终止请求!</div>";

        const string errmsg =
            "<div style='position:fixed;top:0px;width:100%;height:100%;background-color:white;color:red;font-size: 12px;border-bottom:5px solid #999;'><br>对不起，您的请求中带有不合法参数,服务器已终止请求!<br></div>";

        if (RawUrl())
        {
            WriteErrMsg(errmsg);
        }

        if (CookieData())
        {
            // WriteErrMsg(errmsg);
        }

        if (HttpContext.Current.Request.UrlReferrer != null)
        {
            if (Referer())
            {
                WriteErrMsg(errmsg);
            }
        }

        if (HttpContext.Current.Request.RequestType.ToUpper() == "POST")
        {
            if (PostData())
            {
                //WriteErrMsg(errmsg);
            }
        }
        if (HttpContext.Current.Request.RequestType.ToUpper() == "GET")
        {
            if (GetData())
            {
                WriteErrMsg(errmsg);
            }
        }
    }

    private static void WriteErrMsg(string errmsg)
    {
        HttpContext.Current.Response.Redirect("/index.html");
        HttpContext.Current.Response.Write(errmsg);
        HttpContext.Current.Response.StatusCode = 400;
        HttpContext.Current.ApplicationInstance.CompleteRequest();
        //HttpContext.Current.Response.End();//会报“正在中止线程”异常
    }

    #endregion

    #region 安全检查正则

    /// <summary>
    /// 安全检查正则
    /// </summary>
    //private const string StrRegex = @"(?i)<[^>]+?style=[\w]+?:expression\(|\b(window|onmouseover|onclick|expression|eval|alert|confirm|prompt|import)\b|^\+/v(8|9)|<[^>]*?=[^>]*?&#[^>]*?>|\b(and|or)\b.{1,6}?(=|>|<|\bin\b|\blike\b)|/\*.+?\*/|'|<\s*script\b|<\s*style\b|<\s*img\b|\bEXEC\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\s+(TABLE|DATABASE)";
    //private const string StrRegex = @"<[^>]+?style=[\w]+?:expression\(|\b(ltrim|window|Function|and|insert|select|delete|update|from|having|style|import|script|onmouseover|onfocus|onclick|expression|eval|alert|confirm|prompt|iframe|href)\b|^\+/v(8|9)|<[^>]*?=[^>]*?&#[^>]*?>|\b(and|or)\b.{1,6}?(=|>|<|\bin\b|\blike\b)|/\*.+?\*/|'|<\s*img\b|\bEXEC\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\s+(TABLE|DATABASE)";
    private const string StrRegex = @"\s*('|alert|/\?|<|>|＇|<script|3cscript|<style|3cstyle|iframe|href)|<[^>]+?style=[\w]+?:expression\(|\b(ltrim|window|Function|and|insert|script|select|delete|update|having|import|onmouseover|onfocus|onclick|expression|eval|alert|confirm|prompt|iframe|href)\b|^\+/v(8|9)|<[^>]*?=[^>]*?&#[^>]*?>|\b(and|or)\b.{1,6}?(=|>|<|\bin\b|\blike\b)|/\*.+?\*/|'|<\s*img\b|\bEXEC\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\s+(TABLE|DATABASE)";

    #endregion

    #region 检查Post数据

    /// <summary>
    /// 检查Post数据
    /// </summary>
    /// <returns></returns>
    private static bool PostData()
    {
        bool result = false;

        for (int i = 0; i < HttpContext.Current.Request.Form.Count; i++)
        {
            result = CheckData(HttpContext.Current.Request.Form[i]);
            if (result)
            {
                break;
            }
        }
        return result;
    }

    #endregion

    #region 检查Get数据

    /// <summary>
    /// 检查Get数据
    /// </summary>
    /// <returns></returns>
    private static bool GetData()
    {
        bool result = false;

        for (int i = 0; i < HttpContext.Current.Request.QueryString.Count; i++)
        {
            result = CheckData(HttpContext.Current.Request.QueryString[i]);
            if (result)
            {
                break;
            }
        }
        return result;
    }

    #endregion

    #region 检查Cookie数据

    /// <summary>
    /// 检查Cookie数据
    /// </summary>
    /// <returns></returns>
    private static bool CookieData()
    {
        bool result = false;
        for (int i = 0; i < HttpContext.Current.Request.Cookies.Count; i++)
        {
            result = CheckData(HttpContext.Current.Request.Cookies[i].Value.ToLower());
            if (result)
            {
                break;
            }
        }
        return result;
    }

    #endregion

    #region 检查Referer

    /// <summary>
    /// 检查Referer
    /// </summary>
    /// <returns></returns>
    private static bool Referer()
    {
        return CheckData(HttpContext.Current.Request.UrlReferrer.ToString());
    }

    #endregion

    #region 检查当前请求路径

    /// <summary>
    /// 检查当前请求路径
    /// </summary>
    /// <returns></returns>
    private static bool RawUrl()
    {
        return CheckData(HttpContext.Current.Request.RawUrl);
    }

    #endregion

    #region 正则匹配

    /// <summary>
    /// 正则匹配
    /// </summary>
    /// <param name="inputData"></param>
    /// <returns></returns>
    private static bool CheckData(string inputData)
    {
        return Regex.IsMatch(inputData.ToLower(), StrRegex, RegexOptions.IgnoreCase);
    }

    #endregion
}