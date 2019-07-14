using System;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.Configuration;
using System.Web.Security;

namespace DTcms.Common
{
    /// <summary>
    /// [扩展类]字符串扩展类
    /// </summary>
    public static class StrExt
    {
        #region 转换操作

        /// <summary>
        /// 把任意字符的半角转换为全角的函数(SBC case)
        /// <para>注: 该函数为扩展方法。</para>
        /// </summary>
        /// <param name="str">任意字符串</param>
        /// <returns>全角字符串</returns>
        /// <remarks>
        /// 全角空格为12288，半角空格为32
        /// <para>其他字符半角(33-126)与全角(65281-65374)的对应关系是：均相差65248</para>
        /// </remarks>
        /// <example>
        /// string s = "TDＴＤ";
        /// Console.WriteLine(s.ToSBC());
        /// 输出内容:ＴＤＴＤ
        /// </example>
        public static string ToSBC(this string str)
        {
            //半角转全角：
            char[] c = str.ToCharArray();
            for (int i = 0; i < c.Length; i++)
            {
                if (c[i] == 32)
                {
                    c[i] = (char)12288;
                    continue;
                }
                if (c[i] < 127)
                    c[i] = (char)(c[i] + 65248);
            }
            return new string(c);
        }

        /// <summary>
        /// 把任意字符的全角转换为半角的函数(DBC case)
        /// </summary>
        /// <param name="str">任意字符串</param>
        /// <returns>半角字符串</returns>
        ///<remarks>
        ///全角空格为12288，半角空格为32
        ///其他字符半角(33-126)与全角(65281-65374)的对应关系是：均相差65248
        ///</remarks>
        /// <example>
        /// string s = "TDＴＤ";
        /// Console.WriteLine(s.ToSBC());
        /// 输出内容:TDTD
        /// </example>
        public static string ToDBC(this string str)
        {
            char[] c = str.ToCharArray();
            for (int i = 0; i < c.Length; i++)
            {
                if (c[i] == 12288)
                {
                    c[i] = (char)32;
                    continue;
                }
                if (c[i] > 65280 && c[i] < 65375)
                    c[i] = (char)(c[i] - 65248);
            }
            return new string(c);
        }

        /// <summary>
        /// 把颜色值转为颜色对象
        /// </summary>
        /// <param name="color">颜色值</param>
        /// <returns></returns>
        public static Color ToColor(this string color)
        {
            int red, green, blue = 0;
            char[] rgb;
            color = color.TrimStart('#');
            color = Regex.Replace(color.ToLower(), "[g-zG-Z]", "");

            switch (color.Length)
            {
                case 3:
                    rgb = color.ToCharArray();
                    red = Convert.ToInt32(rgb[0].ToStr() + rgb[0].ToStr(), 16);
                    green = Convert.ToInt32(rgb[1].ToStr() + rgb[1].ToStr(), 16);
                    blue = Convert.ToInt32(rgb[2].ToStr() + rgb[2].ToStr(), 16);
                    return Color.FromArgb(red, green, blue);
                    break;
                case 6:
                    rgb = color.ToCharArray();
                    red = Convert.ToInt32(rgb[0].ToStr() + rgb[1].ToStr(), 16);
                    green = Convert.ToInt32(rgb[2].ToStr() + rgb[3].ToStr(), 16);
                    blue = Convert.ToInt32(rgb[4].ToStr() + rgb[5].ToStr(), 16);
                    return Color.FromArgb(red, green, blue);
                    break;
                default:
                    return Color.FromName(color);
                    break;
            }
        }

        /// <summary>
        /// 把IP地址形式的字符串转换为长整形的数字，如字符串不符合则返回 0 值
        /// </summary>
        /// <param name="ip">IP地址形式的字符串</param>
        /// <returns></returns>
        public static long ToIP4(this string ip)
        {
            if (ip.IsIP4() == false)
                return 0;

            IPAddress ipAddress;
            if (!IPAddress.TryParse(ip, out ipAddress))
            {
                return 0;
            }

            int x = 3;
            return ipAddress.GetAddressBytes().Sum(f => (long)f << 8 * x--);
        }

        /// <summary>
        /// 把中文字符串转换成拼音首字母字符串
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string ToPinyin(this string str)
        {
            string tempStr = "";
            foreach (char c in str)
            {
                if (c >= 33 && c <= 126 || c == 32 || c == 65289 || c == 65288)
                //(int) c == 65289 || (int) c == 65288 当输入全角括号时
                {
                    //字母和符号原样保留   
                    if (c == 65289 || c == 65288)
                    {
                        if (c == 65288) tempStr += "("; //输入全角括号时变为半角
                        if (c == 65289) tempStr += ")";
                    }

                    else
                        tempStr += c.ToString();
                }
                else
                {
                    //累加拼音声母   
                    tempStr += GetPYChar(c.ToString());
                }
            }
            return tempStr;
        }

        /// <summary>
        /// 取单个字符的拼音声母
        /// <param name="c">要转换的单个汉字</param>
        /// <returns>拼音声母</returns>
        public static string GetPYChar(string c)
        {
            var array = new byte[2];
            array = Encoding.Default.GetBytes(c);
            int i = (short)(array[0] - '\0') * 256 + ((short)(array[1] - '\0'));
            if (i == 58557) return "h"; //浣字的首字母
            if (i == 63182) return "x"; //鑫字首字母
            if (i == 60105) return "s"; //晟字首字母
            if (i == 59627) return "h"; //桦字首字母
            if (i < 0xB0A1) return "*";
            if (i < 0xB0C5) return "a";
            if (i < 0xB2C1) return "b";
            if (i < 0xB4EE) return "c";
            if (i < 0xB6EA) return "d";
            if (i < 0xB7A2) return "e";
            if (i < 0xB8C1) return "f";
            if (i < 0xB9FE) return "g";
            if (i < 0xBBF7) return "h";
            if (i < 0xBFA6) return "j";
            if (i < 0xC0AC) return "k";
            if (i < 0xC2E8) return "l";
            if (i < 0xC4C3) return "m";
            if (i < 0xC5B6) return "n";
            if (i < 0xC5BE) return "o";
            if (i < 0xC6DA) return "p";
            if (i < 0xC8BB) return "q";
            if (i < 0xC8F6) return "r";
            if (i < 0xCBFA) return "s";
            if (i < 0xCDDA) return "t";
            if (i < 0xCEF4) return "w";
            if (i < 0xD1B9) return "x";
            if (i < 0xD4D1) return "y";
            if (i < 0xD7FA) return "z";
            return "*";
        }


        /// <summary>  
        /// 把Unicode解码为普通文字  
        /// </summary>  
        /// <param name="unicodeString">要解码的Unicode字符集</param>  
        /// <returns>解码后的字符串</returns>  
        public static string ToGB(this string unicodeString)
        {
            string[] strArray = unicodeString.Split(new[] { @"/u" }, StringSplitOptions.None);
            string result = string.Empty;
            for (int i = 0; i < strArray.Length; i++)
            {
                if (strArray[i].Trim() == "" || strArray[i].Length < 2 || strArray.Length <= 1)
                {
                    result += i == 0 ? strArray[i] : @"/u" + strArray[i];
                    continue;
                }
                for (int j = strArray[i].Length > 4 ? 4 : strArray[i].Length; j >= 2; j--)
                {
                    try
                    {
                        result += char.ConvertFromUtf32(Convert.ToInt32(strArray[i].Substring(0, j), 16)) +
                                  strArray[i].Substring(j);
                        break;
                    }
                    catch
                    {
                        continue;
                    }
                }
            }
            return result;
        }

        /// <summary>  
        /// 把汉字字符转码为Unicode字符集  
        /// </summary>  
        /// <param name="strGB">要转码的字符</param>  
        /// <returns>转码后的字符</returns>  
        public static string ToUnicode(this string strGB)
        {
            char[] chs = strGB.ToCharArray();
            string result = string.Empty;
            foreach (char c in chs)
            {
                result += @"/u" + char.ConvertToUtf32(c.ToString(), 0).ToString("x");
            }
            return result;
        }


        /// <summary>
        /// 把用split把字符串拆分成整数数组
        /// </summary>
        /// <param name="ip">IP地址形式的字符串</param>
        /// <returns></returns>
        public static int[] ToInts(this string str, char split)
        {
            string[] list = str.Split(split);
            var result = new int[list.Length];
            for (int i = 0; i < list.Length; i++) //将全部的数字存到数组里。
            {
                result[i] = list[i].ToInt(0);
            }
            return result;
        }

        #endregion 转换操作

        #region 加密码操作

        /// <summary>
        /// 指定使用 MD5 哈希算法加密字符(默认32位)
        /// </summary>
        /// <param name="str">需要加密的字符串</param>
        /// <returns>加密后的字符串(32位)</returns>
        public static string ToMD5(this string str)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5");
        }

        /// <summary>
        /// 指定使用 SHA1 哈希算法加密密码
        /// </summary>
        /// <param name="str">需要加密的字符串</param>
        /// <returns>加密后的字符串</returns>
        public static string ToSHA1(this string str)
        {
            return FormsAuthentication.HashPasswordForStoringInConfigFile(str, FormsAuthPasswordFormat.SHA1.ToString());
        }

        ///   <summary>   
        ///   使用SHA1算法加密一个字符串    
        ///   </summary>   
        ///   <param name="str">要加密的字符串</param>
        ///   <returns>加密后的字符串</returns>
        public static string GetSHA1Str(string str)
        {
            byte[] ret;
            string strRet = "";
            SHA1 sha = new SHA1CryptoServiceProvider();
            byte[] data = Encoding.Default.GetBytes(str);
            ret = sha.ComputeHash(data);
            for (int i = 0; i < ret.Length; i++)
            {
                strRet += ret[i].ToString("X2");
            }
            return strRet;
        }

        /// <summary>
        ///Base64加密
        /// </summary>
        /// <returns>返回string</returns>
        public static string EncodeBase64(this string s)
        {
            string strResult = "";

            if ((s != null) && (s != ""))
            {
                strResult = Convert.ToBase64String(Encoding.Default.GetBytes(s));
            }

            return strResult;
        }

        /// <summary>
        ///Base64解密
        /// </summary>
        /// <returns>返回string</returns>
        public static string DecodeBase64(this string s)
        {
            string strResult = "";

            if ((s != null) && (s != ""))
            {
                strResult = Encoding.Default.GetString(Convert.FromBase64String(s));
            }

            return strResult;
        }

        #endregion 加密码操作

        #region 字符串截取

        /// <summary>
        /// 字符串截取函数，截取从左边开始指定的字节数，默认超出部分不显示
        /// </summary>
        /// <param name="text">需要截取的字符串</param>
        /// <param name="cutLength">需要截取的长度，一个中文为2个字符，大小英文为1个字符</param>
        /// <returns>处理后的字符串</returns>
        public static string Cut(this string text, int cutLength)
        {
            return Cut(text, 0, Math.Abs(cutLength), string.Empty);
        }

        /// <summary>
        /// 字符串截取函数，截取从左边开始指定的字节数，默认超出部分不显示
        /// </summary>
        /// <param name="text">需要截取的字符串</param>
        /// <param name="cutLength">需要截取的长度，一个中文为2个字符，大小英文为1个字符</param>
        /// <param name="tailStr">超出部分显示的字符</param>
        /// <returns>处理后的字符串</returns>
        public static string Cut(this string text, int cutLength, string tailStr)
        {
            return Cut(text, 0, cutLength, tailStr);
        }

        /// <summary>
        /// 字符串截取函数，截取从左边开始指定的字节数，默认超出部分不显示
        /// </summary>
        /// <param name="text">需要截取的字符串</param>
        /// <param name="startIndex">截取的起始位置，从0开始</param>
        /// <param name="cutLength">需要截取的长度，一个中文为2个字符，大小英文为1个字符</param>
        /// <param name="tailStr">超出部分显示的字符</param>
        /// <returns>处理后的字符串</returns>
        public static string Cut(this string text, int startIndex, int cutLength, string tailStr)
        {
            //判断字符串为Null或空
            if (String.IsNullOrEmpty(text))
                return string.Empty;

            if (cutLength <= 0)
                return string.Empty;

            text = text.RemoveHtml();

            var regex = new Regex("[\u4e00-\u9fa5]+", RegexOptions.Compiled);
            char[] stringChar = text.ToCharArray();
            var sb = new StringBuilder();
            int nLength = 0;
            bool isCut = false;
            for (int i = startIndex; i <= startIndex + cutLength && i < stringChar.Length; i++)
            {
                if (regex.IsMatch((stringChar[i]).ToString()))
                {
                    sb.Append(stringChar[i]);
                    nLength += 2;
                }
                else
                {
                    sb.Append(stringChar[i]);
                    nLength = nLength + 1;
                }

                if (nLength >= cutLength)
                {
                    isCut = true;
                    break;
                }
            }
            if (isCut)
                return sb + tailStr;
            else
                return sb.ToString();
        }

        #endregion 字符串截取

        #region 其它方法

        /// <summary>
        /// 获取指定字符串的长度，一个中文字符为占2个位，特殊字符占1位
        /// </summary>
        /// <param name="str">需要操作的字符串</param>
        /// <returns>返回指定定符串的长度位数</returns>
        public static int Length(this string str)
        {
            //判断字符串为Null或空
            if (String.IsNullOrEmpty(str))
                return 0;

            //把字符串转换为字节
            byte[] bsSrcString = Encoding.Default.GetBytes(str);

            return bsSrcString.Length;
        }

        /// <summary>
        /// 过滤字符串中的指定字符
        /// </summary>
        /// <param name="str">指定字符串</param>
        /// <param name="filter">需要过滤的字符</param>
        /// <returns>返回过滤后的字符串</returns>
        public static string Filter(this string str, string filter)
        {
            return str.Replace(filter, string.Empty);
        }

        /// <summary>
        /// 替换字符串中的指定字符，若替换字符的长度超过字符串，则返回原字符串
        /// </summary>
        /// <param name="str">指定字符串</param>
        /// <param name="index">需要替换的字符开始位置，从0开始</param>
        /// <param name="length">需要替换的字符的长度</param>
        /// <param name="charVal">替换的字符</param>
        /// <returns>返回替换后的字符串</returns>
        public static string Filter(this string str, int index, int length, char charVal)
        {
            //判断字符串的长度是否在过滤范围内
            if (str.Length < index + length)
                return str;

            var cs = new char[str.Length];

            for (int i = 0; i < str.Length; i++)
            {
                if (i >= index && i < (index + length))
                {
                    cs[i] = charVal;
                }
                else
                {
                    cs[i] = str[i];
                }
            }

            return new string(cs);
        }

        /// <summary>
        /// 过滤所有HTML代码
        /// </summary>
        /// <param name="text">需要过滤的字符文本</param>
        /// <returns>返回过滤后的字符文本</returns>
        public static string RemoveHtml(this string text)
        {
            return Regex.Replace(text, @"<[^>]*>", string.Empty, RegexOptions.IgnoreCase);
        }

        /// <summary>
        /// 获取指定字符在指定字符串中出现的次数
        /// </summary>
        /// <param name="str">指定字符串(字符串区分大小写)</param>
        /// <param name="c">指定字符</param>
        public static int GetCharCount(this string str, string c)
        {
            //把出现的字符串替换为空，然后再获取替换后的长度，再除字符的长度
            return (str.Length - str.Replace(c, string.Empty).Trim().Length) / c.Trim().Length;
        }

        /// <summary>
        /// 根据字符串分割字符串
        /// </summary>
        /// <param name="strContent">需要分割的字符串</param>
        /// <param name="strSplit">分割符</param>
        public static string[] SplitStr(this string strContent, string strSplit)
        {
            if (strContent.IndexOf(strSplit) < 0)
            {
                string[] tmp = { strContent };
                return tmp;
            }
            return Regex.Split(strContent, Regex.Escape(strSplit), RegexOptions.IgnoreCase);
        }

        /// <summary>
        /// 判断指定的 System.String 对象是否为 null 或 System.String.Empty
        /// </summary>
        /// <param name="value">指定字符串</param>
        public static bool IsEmpty(this string value)
        {
            return String.IsNullOrEmpty(value);
        }

        /// <summary>
        /// 返回字符串中每个汉字的拼音首字母
        /// </summary>
        /// <param name="strText">汉字字符串</param>
        public static string GetChineseSpell(this string strText)
        {
            int len = strText.Length;
            string result = string.Empty;
            for (int i = 0; i < len; i++)
            {
                result += GetSpell(strText.Substring(i, 1));
            }

            return result;
        }

        /// <summary>
        /// 返回首个汉字的拼音首字母
        /// </summary>
        /// <param name="value">汉字字符串</param>
        public static string GetSpell(this string value)
        {
            byte[] arrCN = Encoding.Default.GetBytes(value);

            if (arrCN.Length > 1)
            {
                int area = arrCN[0];
                int pos = arrCN[1];
                int code = (area << 8) + pos;
                int[] areacode =
                    {
                        45217, 45253, 45761, 46318, 46826, 47010, 47297, 47614, 48119, 48119, 49062, 49324,
                        49896, 50371, 50614, 50622, 50906, 51387, 51446, 52218, 52698, 52698, 52698, 52980,
                        53689, 54481
                    };

                for (int i = 0; i < 26; i++)
                {
                    int max = 55290;

                    if (i != 25) max = areacode[i + 1];

                    if (areacode[i] <= code && code < max)
                    {
                        return Encoding.Default.GetString(new[] { (byte)(65 + i) });
                    }
                }

                return "*";
            }

            return value;
        }

        /// <summary>
        /// 将指定 System.String 中的格式项替换为指定数组中相应 System.Object 实例的值的文本等效项，与 String.Format 功能效果相同
        /// </summary>
        /// <param name="str">指定的字符串</param>
        /// <param name="args">替换项的数组</param>
        public static string FormatWith(this string str, params object[] args)
        {
            //判断字符串如果为Null或空，则直接返回空值
            if (String.IsNullOrEmpty(str))
                return string.Empty;

            return String.Format(str, args);
        }

        #endregion 其它方法

        #region 验证方法

        /// <summary>
        /// 判断字符串是否为数字类型
        /// </summary>
        /// <param name="value">需要判断的字符串</param>
        public static bool IsInt(this string value)
        {
            int i;
            return Int32.TryParse(value, out i);
        }

        /// <summary>
        /// 判断字符串是否为电子信箱格式，是返回 true，否返回 false
        /// </summary>
        /// <param name="value">需要判断的字符串</param>
        public static bool IsEmail(this string value)
        {
            string strRegex =
                @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            var re = new Regex(strRegex);
            return re.IsMatch(value);
        }

        /// <summary>
        /// 判断字符串是否为 IP4 地址格式，是返回 true，否返回 false
        /// </summary>
        /// <param name="value">需要判断的字符串</param>
        public static bool IsIP4(this string value)
        {
            return Regex.IsMatch(value, @"^((2[0-4]\d|25[0-5]|[01]?\d\d?)\.){3}(2[0-4]\d|25[0-5]|[01]?\d\d?)$");
        }

        /// <summary>
        /// 判断字符串是否为 Url 格式，是返回 true，否返回 false
        /// </summary>
        /// <param name="value">需要判断的字符串</param>
        public static bool IsUrl(this string value)
        {
            return Regex.IsMatch(value, @"^http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?$");
        }

        /// <summary>
        /// 匹配3位或4位区号的电话号码，其中区号可以用小括号括起来，也可以不用，
        /// 区号与本地号间可以用连字号“-”或空格间隔，也可以没有间隔
        /// 正则为：\(0\d{2}\)[- ]?\d{8}|0\d{2}[- ]?\d{8}|\(0\d{3}\)[- ]?\d{7}|0\d{3}[- ]?\d{7}
        /// </summary>
        /// <param name="value">需要判断的字符串</param>
        public static bool IsPhone(this string value)
        {
            string pattern = @"^\(0\d{2}\)[- ]?\d{8}|0\d{2}[- ]?\d{8}|\(0\d{3}\)[- ]?\d{7}|0\d{3}[- ]?\d{7}$";
            return Regex.IsMatch(value, pattern);
        }

        /// <summary>
        /// 判断字符串是否为 中国身份证号码(支持18位与15位) 格式，是返回 true，否返回 false
        /// </summary>
        /// <param name="value">需要判断的字符串</param>
        public static bool IsIDCard(this string value)
        {
            return Regex.IsMatch(value, @"^\d{17}[\d|X]|\d{15}$");
        }

        /// <summary>
        /// 判断字符串是否为日期格式，如果该字符串为空则返回False
        /// </summary>
        /// <param name="value">需要判断的字符串</param>
        public static bool IsDataTime(this string value)
        {
            if (String.IsNullOrEmpty(value))
                return false;

            DateTime dt;
            return DateTime.TryParse(value, out dt);
        }

        /// <summary>
        /// 判断sql参数是否存在危险字符
        /// </summary>
        /// <param name="value">需要验证的字符</param>
        public static bool IsSafeSqlaParms(this string value)
        {
            if (value.IsEmpty())
                return false;
            return Regex.IsMatch(value, @"\s*('|--|insert|select|delete|update|truncate|exec|drop table| and | or |where|count\(|execute|alter)", RegexOptions.IgnoreCase);
        }

        /// <summary>
        /// 判断是否存在Sql危险字符
        /// </summary>
        /// <param name="value">需要验证的字符</param>
        public static bool IsSafeSql(this string value)
        {
            return Regex.IsMatch(value, @"[-|;|,|\/|\(|\)|\[|\]|\}|\{|%|@|\*|!|\']");
        }

        /// <summary>
        /// 判断是否强度足够的密码
        /// </summary>
        /// <param name="value">需要验证的字符</param>
        public static bool IsGoodPwd(this string value)
        {
            var regex = new Regex(@"
                                    (?=.*[0-9])                                       #必须包含数字
                                    (?=.*[a-zA-Z])                                  #必须包含小写或大写字母
                                    (?=([\x21-\x7e]+)[^a-zA-Z0-9])   #必须包含特殊符号
                                    .{6,20}                                               #至少6个字符，最多20个字符
                                    ", RegexOptions.Multiline | RegexOptions.IgnorePatternWhitespace);
            return regex.IsMatch(value);
        }
        /// <summary>
        /// 判断是否存在危险的可能用于链接的字符串
        /// </summary>
        /// <param name="value">需要验证的字符</param>
        /// <returns>
        /// <c>true</c> 表示存在危险链接字符串; 否则, <c>false</c>.
        /// </returns>
        public static bool IsSafeLink(this string value)
        {
            return !Regex.IsMatch(value, @"^\s*$|^c:\\con\\con$|[%,\*" + "\"" + @"\s\t\<\>\&]|游客|^Guest", RegexOptions.IgnoreCase);
        }

        #endregion 验证方法
    }
}
