USE [Dtcms_mvc]
GO
/****** Object:  Table [dbo].[dt_mail_template]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_mail_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[maill_title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'maill_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_mail_template'
GO
SET IDENTITY_INSERT [dbo].[dt_mail_template] ON
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (2, N'注册激活账户邮件', N'regverify', N'激活注册账户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 欢迎您成为{webname}会员用户，请点击如下的网址进行激活您的会员账户：
</p>
<p>
	&nbsp;&nbsp;&nbsp; <a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行注册；如果您从未注册过本站会员，请忽略本邮件；此邮件为系统自动发出，请勿回复。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (3, N'用户取回密码', N'getpassword', N'找回密码提示(请勿回复此邮件)', N'<strong>{username}，您好：</strong><br />
<p>
	您在<span style="color:#FF0000;">{webname}</span>点击了“忘记密码”找回申请，故系统自动为您发送了这封邮件。您可以点击以下链接修改您的密码：<br />
<a href="{linkurl}" target="_blank">{linkurl}</a> 
</p>
<hr />
<p>
	此链接有效期为{valid}天，请在{valid}天内点击链接进行修改。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。<br />
任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (4, N'欢迎新用户邮件', N'welcomemsg', N'欢迎新用户(请勿回复此邮件)', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp; 您已成功注册并正式成为{webname}会员用户，请您注意保管好个人账户信息，防止丢失或泄漏。
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (5, N'订单确认通知', N'order_confirm', N'订单确认通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货，请您耐心等待，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (6, N'订单发货通知', N'order_express', N'订单发货通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单已经发货，订单号为：{orderno}，共计{amount}元，请您注意查收，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
INSERT [dbo].[dt_mail_template] ([id], [title], [call_index], [maill_title], [content], [is_sys]) VALUES (7, N'订单完成通知', N'order_complete', N'订单完成通知', N'<p>
	<strong>尊敬的{username}，您好：</strong> 
</p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您在{webname}的一笔订单交易完成，订单号为：{orderno}，共计{amount}元，期待您下次光临，祝您购物愉快！
</p>
<hr />
<p>
	此邮件为系统自动发出，请勿回复本邮件，任何疑问，请拨打客服热线咨询：{webtel}。谢谢您的支持！
</p>
<div style="text-align:right;">
	{webname} {weburl}
</div>', 1)
SET IDENTITY_INSERT [dbo].[dt_mail_template] OFF
/****** Object:  Table [dbo].[dt_link]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[title] [nvarchar](255) NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[site_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[is_image] [int] NOT NULL,
	[sort_id] [int] NOT NULL,
	[is_red] [tinyint] NOT NULL,
	[is_lock] [tinyint] NOT NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK__dt_link__16644E42] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_link] ON
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (1, 1, N'动软中国', N'', N'', N'', N'http://www.maticsoft.com', N'http://www.maticsoft.com/images/logo/logo12.gif', 1, 99, 1, 0, CAST(0x0000A48D0015CDA4 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (2, 1, N'读科技', N'', N'', N'', N'http://www.dukeji.com', N'http://www.dukeji.com/Content/themes/base/CMS/images/logo.jpg', 1, 99, 0, 0, CAST(0x0000A48D001C735A AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (3, 1, N'中国站长网', N'', N'', N'', N'http://www.chinaz.com', N'http://www.chinaz.com/images/chinaz.gif', 1, 99, 1, 0, CAST(0x0000A48D001CAACE AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (4, 1, N'我要源码站', N'', N'', N'', N'http://www.51aspx.com', N'http://img.51aspx.com/p/images/logo_88x31.gif', 1, 99, 0, 0, CAST(0x0000A48D001E65E1 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (5, 1, N'懒人图库', N'', N'', N'', N'http://www.lanrentuku.com', N'http://img.lanrentuku.com/img/images/logo88x31.gif', 1, 99, 0, 0, CAST(0x0000A48D00217018 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (6, 1, N'深圳体验设计专业委员会', N'', N'', N'', N'http://www.uxdc.org', N'http://www.uxdc.org/logo/uxdc_logo.gif', 1, 99, 0, 0, CAST(0x0000A48D00228774 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (7, 1, N'腾讯CDC', N'', N'', N'', N'http://cdc.tencent.com', N'http://cdc.tencent.com/wp-content/uploads/cdc_logo.gif', 1, 99, 1, 0, CAST(0x0000A48D0022BB96 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (8, 1, N'视觉同盟', N'', N'', N'', N'http://www.visionunion.com', N'http://www.visionunion.com/help/images/vu_logo.gif', 1, 99, 1, 0, CAST(0x0000A48D0022FCB5 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (9, 1, N'百度搜索用户体验中心', N'', N'', N'', N'http://ued.baidu.com', N'http://cdc.tencent.com/wp-content/uploads/2015/02/ued.baidu_.com_.jpg', 1, 99, 1, 0, CAST(0x0000A48D00240099 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (10, 1, N'蓝色理想', N'', N'', N'', N'http://www.blueidea.com', N'http://www.blueidea.com/logo.gif', 1, 99, 1, 0, CAST(0x0000A48D0024A247 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (11, 1, N'盒子UI设计', N'', N'', N'', N'http://www.boxui.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00255466 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (12, 1, N'图标下载', N'', N'', N'', N'http://www.easyicon.net/', N'', 0, 99, 1, 0, CAST(0x0000A48D00258403 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (13, 1, N'素材天下', N'', N'', N'', N'http://www.sucaitianxia.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0025BF3C AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (14, 1, N'设计联盟', N'', N'', N'', N'http://www.cndu.cn', N'', 0, 99, 1, 0, CAST(0x0000A48D0025E484 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (15, 1, N'插画中国', N'', N'', N'', N'http://www.chahua.org', N'', 0, 99, 1, 0, CAST(0x0000A48D00261835 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (16, 1, N'设计路上', N'', N'', N'', N'http://www.sj63.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00264A5C AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (17, 1, N'UI制造者', N'', N'', N'', N'http://www.uimaker.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002676B5 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (18, 1, N'视觉中国', N'', N'', N'', N'http://www.shijue.me', N'', 0, 99, 1, 0, CAST(0x0000A48D0026CF1E AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (19, 1, N'美图看看', N'', N'', N'', N'http://kankan.meitu.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0026F9D9 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (20, 1, N'包装设计网', N'', N'', N'', N'http://www.chndesign.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00272ECD AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (21, 1, N'火星网', N'', N'', N'', N'http://www.hxsd.com.cn', N'', 0, 99, 1, 0, CAST(0x0000A48D0027B09E AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (22, 1, N'桌面城市', N'', N'', N'', N'http://www.deskcity.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0027D690 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (23, 1, N'天堂图片', N'', N'', N'', N'http://www.ivsky.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00280930 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (24, 1, N'游艺网', N'', N'', N'', N'http://www.game798.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002830A3 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (25, 1, N'JQuery', N'', N'', N'', N'http://www.jquery.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00287C1C AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (26, 1, N'dowebok', N'', N'', N'', N'http://www.dowebok.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0028EB91 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (27, 1, N'前端开发仓库', N'', N'', N'', N'http://code.ciaoca.com', N'', 0, 99, 1, 0, CAST(0x0000A48D00292080 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (28, 1, N'Discuz社区', N'', N'', N'', N'http://www.discuz.net', N'', 0, 99, 1, 0, CAST(0x0000A48D00299958 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (29, 1, N'IT之家', N'', N'', N'', N'http://www.ithome.com', N'', 0, 99, 1, 0, CAST(0x0000A48D0029C44A AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (30, 1, N'中国IT实验室', N'', N'', N'', N'http://www.chinaitlab.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002A1589 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (31, 1, N'驱动之家', N'', N'', N'', N'http://www.mydrivers.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002A47B0 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (32, 1, N'雷锋网', N'', N'', N'', N'http://www.leiphone.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002A71AA AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (33, 1, N'ckplayer视频播放器', N'', N'', N'', N'http://www.ckplayer.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002A983C AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (34, 1, N'快递查询', N'', N'', N'', N'http://www.kuaidi100.com', N'', 0, 99, 1, 0, CAST(0x0000A48D002AE9E5 AS DateTime))
INSERT [dbo].[dt_link] ([id], [site_id], [title], [user_name], [user_tel], [email], [site_url], [img_url], [is_image], [sort_id], [is_red], [is_lock], [add_time]) VALUES (35, 1, N'动力启航', N'', N'', N'', N'http://www.dtsoft.net', N'', 0, 99, 1, 0, CAST(0x0000A48D002B09B3 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_link] OFF
/****** Object:  Table [dbo].[dt_feedback]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[user_name] [nvarchar](50) NULL,
	[user_tel] [nvarchar](30) NULL,
	[user_qq] [nvarchar](30) NULL,
	[user_email] [nvarchar](100) NULL,
	[add_time] [datetime] NOT NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
	[is_lock] [tinyint] NOT NULL,
 CONSTRAINT [PK__dt_feedback__0FB750B3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_feedback] ON
INSERT [dbo].[dt_feedback] ([id], [site_id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (1, 1, N'这是第一条沙发留言，请多关照', N'这是第一条沙发留言，请多关照！如果能成功，应该可以顺利看到！', N'匿名用户', N'13800138000', N'932235529', N'test@qq.com', CAST(0x0000A76900075472 AS DateTime), N'已收到你的留言信息，感谢您的支持！', CAST(0x0000A76900077E62 AS DateTime), 0)
INSERT [dbo].[dt_feedback] ([id], [site_id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (2, 1, N'制作模板时应该注意些什么？', N'制作模板时经常遇到编码错误，请问如何能解决？', N'前线战士', NULL, NULL, NULL, CAST(0x0000A78D006C0082 AS DateTime), N'首先需要注意该模板的保存文本格式为UTF-8；第二在模板页写Javascript代码时&lt;SCRIPT&gt;要改为小写&lt;script&gt;，遇到大括号{}时不要写成一行，一定要换行，否则模板引擎当成变量处理。', CAST(0x0000A78D006C20FA AS DateTime), 0)
INSERT [dbo].[dt_feedback] ([id], [site_id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (3, 1, N'模板生成后，测览页面时提示错误', N'模板生成后，测览页面时提示错误，错误信息：非法字符？', N'新手上路', NULL, NULL, NULL, CAST(0x0000A78D006C82FE AS DateTime), N'此类问题大部分是由于模板页面文件的保存格式为GBK或其它编码造成的，解决方法是找到该模板页，右键选择记事本打开，重新保存一下格式为UTF-8编码即可。', CAST(0x0000A78D006C9A8D AS DateTime), 0)
INSERT [dbo].[dt_feedback] ([id], [site_id], [title], [content], [user_name], [user_tel], [user_qq], [user_email], [add_time], [reply_content], [reply_time], [is_lock]) VALUES (4, 1, N'模板生成后，测览页面时提示错误，错误信息：缺少}结束符？', N'模板生成后，测览页面时提示错误，错误信息：缺少}结束符？请问如何解决？', N'疑点重重', NULL, NULL, NULL, CAST(0x0000A78D006CF46C AS DateTime), N'一般在模板页使用循环或判断标签时，如果忘了加上结束标签则会出现以上错误，解决方法是找到模板页中有循环或判断的地方未加结束标签的加上对应的结束标签。 ', CAST(0x0000A78D006D1034 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[dt_feedback] OFF
/****** Object:  Table [dbo].[dt_express]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_express](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[express_code] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[website] [nvarchar](255) NULL,
	[remark] [ntext] NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_EXPRESS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配送费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流快递' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_express'
GO
SET IDENTITY_INSERT [dbo].[dt_express] ON
INSERT [dbo].[dt_express] ([id], [title], [express_code], [express_fee], [website], [remark], [sort_id], [is_lock]) VALUES (1, N'顺丰快递', N'shunfeng', CAST(0.00 AS Decimal(9, 2)), N'www.sf-express.com', N'', 99, 0)
SET IDENTITY_INSERT [dbo].[dt_express] OFF
/****** Object:  Table [dbo].[dt_channel_article_video]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_article_video](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[click] [int] NOT NULL,
	[status] [int] NOT NULL,
	[is_msg] [int] NOT NULL,
	[is_top] [int] NOT NULL,
	[is_red] [int] NOT NULL,
	[is_hot] [int] NOT NULL,
	[is_slide] [int] NOT NULL,
	[is_sys] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[like_count] [int] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
	[video_src] [nvarchar](255) NULL,
	[sub_title] [nvarchar](255) NULL,
 CONSTRAINT [PK__dt_channel_artic__45544755] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_channel_article_video] ON
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (71, 1, 3, 32, N'', N'闪电侠第一季', N'', N'/upload/201504/19/201504191342113486.jpg', N'闪电侠第一季', N'闪电侠,美剧,电视剧', N'Barry Allen（Grant Gustin）11岁那年，他的母亲在一起离奇而可怕的事故中遇难，父亲则被错误地指控为谋杀犯。这场悲剧彻底改变了Barry的生活，但Joe West侦探（Jesse L. Martin）在他最困难的时候伸出了援手。', N'美剧', N'Barry Allen（Grant Gustin）11岁那年，他的母亲在一起离奇而可怕的事故中遇难，父亲则被错误地指控为谋杀犯。这场悲剧彻底改变了Barry的生活，但Joe West侦探（Jesse L. Martin）在他最困难的时候伸出了援手。', N'Barry Allen（Grant Gustin）11岁那年，他的母亲在一起离奇而可怕的事故中遇难，父亲则被错误地指控为谋杀犯。这场悲剧彻底改变了Barry的生活，但Joe West侦探（Jesse L. Martin）在他最困难的时候伸出了援手。', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00E30D00 AS DateTime), CAST(0x0000A47F00FEDDBE AS DateTime), N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'更新至18集')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (72, 1, 3, 32, N'', N'绿箭侠第三季', N'', N'/upload/201504/19/201504191354133349.jpg', N'绿箭侠第三季', N'绿箭侠,视频,视频分享,视频搜索,视频播放', N'《绿箭》第三季已经有了大致框架——剧中将至少出现两位爱搅局的人——而其中一位将不断向奥利弗？奎恩(Oliver Queen)生命中的女人大献殷勤。', N'美剧', N'《绿箭》第三季已经有了大致框架——剧中将至少出现两位爱搅局的人——而其中一位将不断向奥利弗？奎恩(Oliver Queen)生命中的女人大献殷勤。', N'《绿箭》第三季已经有了大致框架——剧中将至少出现两位爱搅局的人——而其中一位将不断向奥利弗？奎恩(Oliver Queen)生命中的女人大献殷勤。', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00E52360 AS DateTime), CAST(0x0000A47F00FEF802 AS DateTime), N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'更新至19集')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (73, 1, 3, 32, N'', N'绝望主妇第一季', N'', N'/upload/201504/19/201504191415058556.jpg', N'绝望主妇第一季', N'绝望主妇,视频,视频分享,视频搜索,视频播放', N'故事紧接上一季结尾开始，四位主妇将嘉比丈夫卡洛斯杀死的人埋在了树林中。苏珊由于受到凶杀事件的影响，经常无法入睡，变得越来越精神紧张和情绪失控，并且避而不见其她主妇。勒奈特和汤姆的婚姻危机愈演愈烈，两人开始分居。', N'美剧', N'故事紧接上一季结尾开始，四位主妇将嘉比丈夫卡洛斯杀死的人埋在了树林中。苏珊由于受到凶杀事件的影响，经常无法入睡，变得越来越精神紧张和情绪失控，并且避而不见其她主妇。勒奈特和汤姆的婚姻危机愈演愈烈，两人开始分居。布瑞在提出埋尸野外的计划后，又想到要将死者的汽…', N'<span class="px-r">故事紧接上一季结尾开始，四位主妇将嘉比丈夫卡洛斯杀死的人埋在了树林中。苏珊由于受到凶杀事件的影响，经常无法入睡，变得越来越精神紧张和情绪失控，并且避而不见其她主妇。勒奈特和汤姆的婚姻危机愈演愈烈，两人开始分居。布瑞在提出埋尸野外的计划后，又想到要将死者的汽车处理掉，在一个抢匪无意的帮助下，她和嘉比顺利地将车处理掉。布瑞在嘉比家阻止苏珊向麦克说出真相后，在自家门前的邮箱中收到一封神秘的来信。然而这封信的内容竟然与当年导致玛丽・爱丽丝・杨格自杀的信的内容一样。难道这一切预示着她们极力隐瞒的秘密已经被发现了吗？</span>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00EADFBC AS DateTime), CAST(0x0000A47F00FF07A2 AS DateTime), N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'23集全')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (74, 1, 3, 33, N'', N'武媚娘传奇', N'', N'/upload/201504/19/201504191419256058.jpg', N'武媚娘传奇', N'视频,视频分享,视频搜索,视频播放', N'主要从她在家乡的成长讲述到她14岁入宫闱后的权力斗争，与以往的武则天不同的是，“范冰冰版”的武则天在感情故事上下了更多的笔墨，对她入宫前后的生活和感情有了更细致的描写。范冰冰之所以选择拍摄武则天的成长史主要是因为在她看来武则天最后舍我其谁的性格都是在少女期养成的，而她的感情故事和政治谋略也是随着剧情的发展而呈现出不同的精彩。', N'大陆剧', N'主要从她在家乡的成长讲述到她14岁入宫闱后的权力斗争，与以往的武则天不同的是，“范冰冰版”的武则天在感情故事上下了更多的笔墨，对她入宫前后的生活和感情有了更细致的描写。范冰冰之所以选择拍摄武则天的成长史主要是因为在她看来武则天最后舍我其谁的性格都是在少女期养…', N'<span class="px-r">主要从她在家乡的成长讲述到她14岁入宫闱后的权力斗争，与以往的武则天不同的是，“范冰冰版”的武则天在感情故事上下了更多的笔墨，对她入宫前后的生活和感情有了更细致的描写。范冰冰之所以选择拍摄武则天的成长史主要是因为在她看来武则天最后舍我其谁的性格都是在少女期养成的，而她的感情故事和政治谋略也是随着剧情的发展而呈现出不同的精彩。</span>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00EC130E AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'96集全')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (75, 1, 3, 33, N'', N'活色生香', N'', N'/upload/201504/19/201504191423290999.jpg', N'活色生香', N'视频,视频分享,视频搜索,视频播放', N'由唐嫣、李易峰、舒畅、陈伟霆主演的年代剧《活色生香》于湖南卫视播出，该剧也是李易峰、陈伟霆继《古剑奇谭》后再度合作的电视剧。有意思的是，该剧除了李易峰会反串女角外，还举行了九次婚礼，被网友调侃为“史上结婚最多的电视剧”。', N'', N'由唐嫣、李易峰、舒畅、陈伟霆主演的年代剧《活色生香》于湖南卫视播出，该剧也是李易峰、陈伟霆继《古剑奇谭》后再度合作的电视剧。有意思的是，该剧除了李易峰会反串女角外，还举行了九次婚礼，被网友调侃为“史上结婚最多的电视剧”。', N'<p>
	<span class="px-r"><span class="px-r">由唐嫣、李易峰、舒畅、陈伟霆主演的年代剧《活色生香》于湖南卫视播出，该剧也是李易峰、陈伟霆继《古剑奇谭》后再度合作的电视剧。有意思的是，该剧除了李易峰会反串女角外，还举行了九次婚礼，被网友调侃为“史上结婚最多的电视剧”。</span></span>
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00ED2C92 AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'主演：李易峰 / 陈伟霆 / 唐嫣')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (76, 1, 3, 34, N'', N'贤内助女王', N'', N'/upload/201504/19/201504191427360596.jpg', N'贤内助女王', N'视频,视频分享,视频搜索,视频播放', N'梦想成为灰姑娘的智爱（金南珠饰）选择了与医大学生温达秀（吴智昊饰）结婚，原以为自己挑选了王子，没想到却是个傻蛋温达。上帝给了温达秀聪明的头脑，但是又给了胆小怕事和小心眼的性格。', N'', N'梦想成为灰姑娘的智爱（金南珠饰）选择了与医大学生温达秀（吴智昊饰）结婚，原以为自己挑选了王子，没想到却是个傻蛋温达。上帝给了温达秀聪明的头脑，但是又给了胆小怕事和小心眼的性格。现在丈夫是个无业游民，她取出了自己的积蓄，卖掉了结婚戒指，向夫家伸手，断绝了与朋…', N'梦想成为灰姑娘的智爱（金南珠饰）选择了与医大学生温达秀（吴智昊饰）结婚，原以为自己挑选了王子，没想到却是个傻蛋温达。上帝给了温达秀聪明的头脑，但是又给了胆小怕事和小心眼的性格。现在丈夫是个无业游民，她取出了自己的积蓄，卖掉了结婚戒指，向夫家伸手，断绝了与朋友们的聚会，断绝了购物和美容。她接受了灰姑娘的梦想已经破灭的现实。当她好不容易为丈夫谋得一份工作的时候，却发生了一件震惊的事情，学生时期自己的跟班变成真正的灰姑娘出现在面前。现在的她向朋友低头哈腰，但是对她怀恨在心的朋友毫无留情地践踏了她的自尊心。', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00EE4E50 AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'主演：金南珠 / 吴志浩')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (77, 1, 3, 35, N'', N'心花路放', N'', N'/upload/201504/19/201504191433361724.jpg', N'心花路放', N'', N'电影《心花路放》讲述了耿浩（黄渤饰）在生活中遭遇了情感危机，面对情感的背叛，耿浩陷入难以自拔的痛苦之中。好基友郝义（徐峥饰）为了帮助他摆脱痛苦，于是一对“暴走兄弟”带上一只狗，开始了一段搞笑的疯狂的猎艳之旅。', N'', N'电影《心花路放》讲述了耿浩（黄渤饰）在生活中遭遇了情感危机，面对情感的背叛，耿浩陷入难以自拔的痛苦之中。好基友郝义（徐峥饰）为了帮助他摆脱痛苦，于是一对“暴走兄弟”带上一只狗，开始了一段搞笑的疯狂的猎艳之旅。影片上映后，首周票房超6亿，成为史上最快突破6亿票…', N'<p>
	电影《心花路放》讲述了耿浩（黄渤饰）在生活中遭遇了情感危机，面对情感的背叛，耿浩陷入难以自拔的痛苦之中。好基友郝义（徐峥饰）为了帮助他摆脱痛苦，于是一对“暴走兄弟”带上一只狗，开始了一段搞笑的疯狂的猎艳之旅。
</p>
<p>
	影片上映后，首周票房超6亿，成为史上最快突破6亿票房的华语电影[1] 。票房总计11.67亿， 登2014年度国产电影榜首，并成为国产电影史继《泰囧》和《西游降魔》之后的第三名。
</p>', 99, 1, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00EFF373 AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'主演：黄渤 / 徐峥 / 袁泉')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (78, 1, 3, 35, N'', N'有种你爱我', N'', N'/upload/201504/19/201504191438024482.jpg', N'有种你爱我', N'有种你爱我,视频,视频分享,视频搜索,视频播放', N'建筑师左小欣渴望拥有一个只有孩子没有男人的“幸福生活”，机缘巧合结识了人气主持人査义，并生下非婚子左松松。为科学抚养，在孩子周岁时通知了査义，此刻他才明白自己成了朋友们的笑柄——中国“大种马”。査义决计报复，左小欣也不是吃素的，俩人斗智斗勇，玩过火的他们将如何收场？孩子究竟归谁？', N'', N'建筑师左小欣渴望拥有一个只有孩子没有男人的“幸福生活”，机缘巧合结识了人气主持人査义，并生下非婚子左松松。为科学抚养，在孩子周岁时通知了査义，此刻他才明白自己成了朋友们的笑柄——中国“大种马”。査义决计报复，左小欣也不是吃素的，俩人斗智斗勇，玩过火的他们将…', N'建筑师左小欣渴望拥有一个只有孩子没有男人的“幸福生活”，机缘巧合结识了人气主持人査义，并生下非婚子左松松。为科学抚养，在孩子周岁时通知了査义，此刻他才明白自己成了朋友们的笑柄——中国“大种马”。査义决计报复，左小欣也不是吃素的，俩人斗智斗勇，玩过火的他们将如何收场？孩子究竟归谁？', 99, 2, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00F12B64 AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'主演：江一燕 / 郑恺')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (79, 1, 3, 36, N'', N'速度与激情7', N'', N'/upload/201504/19/201504191450190071.jpg', N'速度与激情7', N'视频,视频分享,视频搜索,视频播放', N'故事开始于多米尼克和布莱恩各自的小队成员带着赦免令回到美国的一年之后。他们过着循规蹈矩的日子，家乡生活的感觉很好。然而他们都不知道，危险正在悄然接近。', N'', N'故事开始于多米尼克和布莱恩各自的小队成员带着赦免令回到美国的一年之后。他们过着循规蹈矩的日子，家乡生活的感觉很好。然而他们都不知道，危险正在悄然接近，冷血的英国特勤杀手肖出现了。从东京的韩被残忍谋杀，到洛杉矶霍布斯的死里逃生，肖有条不紊地追杀着在上一部中干…', N'<p>
	故事开始于多米尼克和布莱恩各自的小队成员带着赦免令回到美国的一年之后。他们过着循规蹈矩的日子，家乡生活的感觉很好。然而他们都不知道，危险正在悄然接近，冷血的英国特勤杀手肖出现了。从东京的韩被残忍谋杀，到洛杉矶霍布斯的死里逃生，肖有条不紊地追杀着在上一部中干掉了欧文的团队成员，因为欧文是他的弟弟。
</p>
<p>
	肖出现了在托雷托家，多米尼克必须去找政府高级特工帮忙。主人公们唯一的希望就是继续开着赛车为美国政府保护一台高科技追踪设备的样品。作为回报，他们可以利用这个设备在肖大开杀戒之前就追查到他的行踪。他们组成了史上最亲密的团队：多米尼克、布莱恩、霍布斯、莱蒂、罗姆、特尔佳、米娅——他们将面临最大的威胁，从阿布扎比转战阿塞拜疆……在那些与家园似曾相识的街道上极速飞驰。
</p>', 99, 7, 0, 1, 0, 0, 0, 1, 1, N'admin', 0, CAST(0x0000A47F00F4FC92 AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'上映时间：2015年4月12日')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (80, 1, 3, 36, N'', N'绿灯侠', N'', N'/upload/201504/19/201504191502166718.jpg', N'绿灯侠', N'绿灯侠,电影,在线影院,好莱坞影院', N'影片讲述宇宙间有一群维护宇宙治安的“绿灯军团”，每个成员都配备了一枚神奇的戒指，可以随心所欲的变出各种东西或实现任何目的。', N'', N'在巨大神秘的宇宙中，一种虽小但力量强大的能源已经存在了数个世纪。一个被称作“绿灯军团”的队伍维护着和平与公正，每位成员都配备了一枚具有神奇力量的戒指。然而，当一名叫做Parallax的大反派闯入之后，威胁着宇宙的平衡，“绿灯军团”以及地球的命运就掌握在一位新成员的…', N'<p>
	在巨大神秘的宇宙中，一种虽小但力量强大的能源已经存在了数个世纪。一个被称作“绿灯军团”的队伍维护着和平与公正，每位成员都配备了一枚具有神奇力量的戒指。然而，当一名叫做Parallax的大反派闯入之后，威胁着宇宙的平衡，“绿灯军团”以及地球的命运就掌握在一位新成员的手中，他就是第一个被召唤成“绿灯侠”的人类哈尔·乔丹（瑞安·雷诺兹饰）。
</p>
<p>
	哈尔本是一名颇有天赋却相当狂妄的试飞员，但是绿灯军团对人类并不是特别信任，人类此前从未戴上那枚具有无穷力量的戒指。但是哈尔的果断与意志力证明了他具有绿灯军团成员们所没有的品质，那就是“人性”。在同伴们和青梅竹马的朋友卡洛儿·菲丽丝（布蕾克·莱弗利饰）的鼓励下，只要哈尔能够迅速掌握新的力量，并克服他的缺点，他将证明自己不但能击败Parallax，还将成为史上最伟大的绿灯侠。
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00F7D3B4 AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'2011年6月17日美国上映')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (81, 1, 3, 35, N'', N'熊出没之雪岭熊风', N'', N'/upload/201504/19/201504191509158578.jpg', N'熊出没之雪岭熊风', N'熊出没之雪岭熊风', N'在狗熊岭百年不遇的大雪中，熊二偶遇了小时候曾有过一面之缘的神秘小伙伴，除了重逢的喜悦，小伙伴也给熊二带来了不少麻烦：穷凶极恶的追猎者、神秘而未知的重大传说。', N'', N'在狗熊岭百年不遇的大雪中，熊二偶遇了小时候曾有过一面之缘的神秘小伙伴，除了重逢的喜悦，小伙伴也给熊二带来了不少麻烦：穷凶极恶的追猎者、神秘而未知的重大传说。一系列的阴差阳错，熊大熊二光头强和动物们不可避免地被卷入其中。在小镇和森林中，他们闹出了不少惊险又好…', N'<p>
	在狗熊岭百年不遇的大雪中，熊二偶遇了小时候曾有过一面之缘的神秘小伙伴，除了重逢的喜悦，小伙伴也给熊二带来了不少麻烦：穷凶极恶的追猎者、神秘而未知的重大传说。
</p>
<p>
	一系列的阴差阳错，熊大熊二光头强和动物们不可避免地被卷入其中。在小镇和森林中，他们闹出了不少惊险又好笑的意外，在传说的驱使下，一行人踏上了前往白熊山的旅程，一路上，他们经历了欢笑和感动，勇气日渐增长，友谊也越加深厚，熊大和熊二学会了理解对方，矛盾也渐渐地化解。可是，一场灾难意外地爆发，在千钧一发之际，熊二鼓起勇气，承担起了拯救大家的责任，危机最终圆满解决。
</p>', 99, 8, 0, 1, 0, 0, 0, 1, 1, N'admin', 0, CAST(0x0000A47F00F9CAE0 AS DateTime), CAST(0x0000A47F00FF1524 AS DateTime), N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'2015年1月30日在中国上映')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (82, 1, 3, 37, N'', N'星梦奇缘', N'', N'/upload/201504/19/201504191553366190.jpg', N'星梦奇缘', N'马玲,男生宿舍,告白,跳泳池,求爱', N'天津卫视和韩国CJ E&M娱乐共同制作，明星媒人出谋划策，为相亲者奋勇追求心仪对象。', N'', N'各大卫视在创新真人秀类型的基础上，对于有稳定收视群体的恋爱类节目依旧难舍，纷纷由演播室搬至户外，并请来大牌明星加盟，已经定档的有6个之多，如何在同质化中寻找突破，天津卫视与韩国顶尖娱乐公司CJEM联合研发制作的“明星家长式”户外交友真人秀《星梦奇缘》据悉，《星梦…', N'各大卫视在创新真人秀类型的基础上，对于有稳定收视群体的恋爱类节目依旧难舍，纷纷由演播室搬至户外，并请来大牌明星加盟，已经定档的有6个之多，如何在同质化中寻找突破，天津卫视与韩国顶尖娱乐公司CJEM联合研发制作的“明星家长式”户外交友真人秀《星梦奇缘》据悉，《星梦奇缘》于4月10日开播。', 99, 2, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F0105EFAE AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'马玲蹲守男生宿舍大胆告白 为爱跳泳池换取求爱机会')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (83, 1, 3, 37, N'', N'奔跑吧兄弟', N'', N'/upload/201504/19/201504191612121323.jpg', N'奔跑吧兄弟', N'视频,视频分享,视频搜索,视频播放', N'奔跑吧兄弟是浙江卫视全新推出的大型户外竞技真人秀节目，节目于2014年8月28日正式开机。', N'', N'奔跑吧兄弟是浙江卫视全新推出的大型户外竞技真人秀节目，节目于2014年8月28日正式开机，10月10日将登陆浙江卫视周五黄金档。该节目原型为韩版《runningman》，中国改名为《奔跑吧兄弟》由浙江卫视和韩版《Running Man》制作团队SBS联合制作。', N'奔跑吧兄弟是浙江卫视全新推出的大型户外竞技真人秀节目，节目于2014年8月28日正式开机，10月10日将登陆浙江卫视周五黄金档。该节目原型为韩版《runningman》，中国改名为《奔跑吧兄弟》由浙江卫视和韩版《Running Man》制作团队SBS联合制作。', 99, 4, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F010B0EE7 AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'大型户外竞技真人秀节目')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (84, 1, 3, 38, N'', N'非诚勿扰', N'', N'/upload/201504/19/201504191621314730.jpg', N'非诚勿扰', N'非诚勿扰,视频,视频分享,视频搜索,视频播放', N'《非诚勿扰》是适应现代生活节奏的大型婚恋交友节目，新的互动形式完全突破传统的交友方式，完全体现新时代男女的婚恋观。外形靓丽养眼、打扮时髦前卫、表现大胆奔放的男女嘉宾们一次又一次引爆争议热点！', N'', N'《非诚勿扰》是适应现代生活节奏的大型婚恋交友节目，新的互动形式完全突破传统的交友方式，完全体现新时代男女的婚恋观。外形靓丽养眼、打扮时髦前卫、表现大胆奔放的男女嘉宾们一次又一次引爆争议热点！', N'<p>
	《非诚勿扰》是适应现代生活节奏的大型婚恋交友节目，新的互动形式完全突破传统的交友方式，完全体现新时代男女的婚恋观。外形靓丽养眼、打扮时髦前卫、表现大胆奔放的男女嘉宾们一次又一次引爆争议热点！
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F010DB728 AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'现代生活节奏的相亲节目')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (85, 1, 3, 38, N'', N'调解面对面', N'', N'/upload/201504/19/201504191628502165.jpg', N'调解面对面', N'调解面对面,视频,视频分享,视频搜索,视频播放', N'智者形象 调解矛盾纠纷 领悟智慧人生通过智者的调解不仅解决当事人的矛盾，观众通过观看节目能学到、领悟到人生智慧。', N'', N'《调解面对面》聚焦社区民情民意，通过媒体调解方式和典型社区案例来化解矛盾，挖掘真情，唤醒良知，引导人性。节目以人和、家和、天下和为口号，定位于调解社区矛盾、关注社区和谐、破解法律疑点，全面创新媒体参与社会管理的职能。', N'<p>
	《调解面对面》聚焦社区民情民意，通过媒体调解方式和典型社区案例来化解矛盾，挖掘真情，唤醒良知，引导人性。节目以人和、家和、天下和为口号，定位于调解社区矛盾、关注社区和谐、破解法律疑点，全面创新媒体参与社会管理的职能。
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F010F9A5A AS DateTime), NULL, N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'以人和、家和、天下和为口号')
INSERT [dbo].[dt_channel_article_video] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [video_src], [sub_title]) VALUES (86, 1, 3, 39, N'', N'舌尖上的中国2：脚步', N'', N'/upload/201504/19/201504191635524475.jpg', N'舌尖上的中国2：脚步', N'舌尖上的中国,视频,视频分享,视频搜索,视频播放', N'延续第一季的主题，探讨中国人与食物的关系。150多个人物，300余种美食，一张张餐桌，见证生命的诞生、成长、相聚、别离。通过美食，使人们可以有滋有味地认知这个古老的东方国度。', N'', N'《舌尖上的中国2》定位为中华美食文化纪录片，延续第一季的主题，探讨中国人与食物的关系。150多个人物，300余种美食，一张张餐桌，见证生命的诞生、成长、相聚、别离。通过美食，使人们可以有滋有味地认知这个古老的东方国度。《舌尖上的中国2》是2012年纪录片《舌尖上的…', N'<p>
	《舌尖上的中国2》定位为中华美食文化纪录片，延续第一季的主题，探讨中国人与食物的关系。150多个人物，300余种美食，一张张餐桌，见证生命的诞生、成长、相聚、别离。通过美食，使人们可以有滋有味地认知这个古老的东方国度。</p><p>
	《舌尖上的中国2》是2012年纪录片《舌尖上的中国》的续集，于2014年4月18日起在中央电视台综合频道（CCTV-1）与中央电视台纪录频道（CCTV-9）开播，并在爱奇艺、乐视网等多个网络平台同步播出。</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F0111870C AS DateTime), CAST(0x0000A78E00EBB0B7 AS DateTime), N'http://movie.ks.js.cn/flv/other/1_0.mp4', N'探讨中国人与美食的关系')
SET IDENTITY_INSERT [dbo].[dt_channel_article_video] OFF
/****** Object:  Table [dbo].[dt_channel_article_product]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_article_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[click] [int] NOT NULL,
	[status] [int] NOT NULL,
	[is_msg] [int] NOT NULL,
	[is_top] [int] NOT NULL,
	[is_red] [int] NOT NULL,
	[is_hot] [int] NOT NULL,
	[is_slide] [int] NOT NULL,
	[is_sys] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[like_count] [int] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
	[bigimg] [nvarchar](255) NULL,
	[tedian] [ntext] NULL,
	[yongtu] [ntext] NULL,
	[guige] [ntext] NULL,
	[productid] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_channel_article_product] ON
INSERT [dbo].[dt_channel_article_product] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [bigimg], [tedian], [yongtu], [guige], [productid]) VALUES (1, 1, 8, 52, N'', N'真空式鲁氏鼓风机', N'', N'/upload/201906/03/201906032242472086.jpg', N'', N'', N'', N'', N'本产品系三叶式鲁氏鼓风机。内转子以CNC四轴同动加工、精度高所以可得准确之转子间隙，进而提高鼓风机之性能。又三叶式鼓风机出风的脉动小、所以轴承震动小, 相对地也减低噪音。一般鼓风机多采黄油及机油润滑，保养上比较不便。龙铁-LT型鼓风机-设计双油箱，使得润滑上可…', N'<p>本产品系三叶式鲁氏鼓风机。内转子以CNC四轴同动加工、精度高所以可得准确之转子间隙，进而提高鼓风机之性能。又三叶式鼓风机出风的脉动小、所以轴承震动小, 相对地也减低噪音。</p><p>一般鼓风机多采黄油及机油润滑，保养上比较不便。龙铁-LT型鼓风机-设计双油箱，使得润滑上可只使用机油对保养者较为便利。又机油的润滑及散热效果比黄油好，所以能提高轴承及齿轮的寿命。</p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA6101752FF0 AS DateTime), CAST(0x0000AA660108B2F4 AS DateTime), N'/upload/201906/05/201906052234570577.jpg', N'<ol class=" list-paddingleft-2" style="list-style-type: decimal;"><li><p>较低的能源损耗：三叶式的设计能减少逆流对转子的压力,相对地也减少能源的耗损</p></li><li><p>较低的噪音：压力脉冲是主要的噪声源，三叶式鼓风机出风的脉动小、所以轴承震动小，相对地也减低噪音达5dB。</p></li><li><p>轴承寿命延长：由于叶轮传递的振动减少,得以延长轴承寿命达20％</p></li><li><p>排出气体洁净、不含油污。</p></li><li><p>风量稳定，压力变化对风量之影响小。</p></li><li><p>风量压力真空度范围广。</p></li><li><p>构造坚实简单、保养维护容易。</p></li><li><p>轴承均为机油润滑、散热佳、寿命长。</p></li><li><p>严格质量管理，标准化制品。</p></li></ol>', N'<ol class=" list-paddingleft-2" style="list-style-type: decimal;"><li><p>利用空压输送：塑料、水泥、谷物等粒状物输送。</p></li><li><p>废水处理：搅拌沉淀物或水处理净化作用。</p></li><li><p>电镀槽：向电镀槽送空气以循环电解质。</p></li><li><p>焚化炉：分解纸张、整理纸、配纸作业。</p></li><li><p>养殖池氧气的补充。</p></li></ol>', N'<div class="sidebar"><div class="title">LT型各規格性能表</div><ul class=" list-paddingleft-2"><li><p><a href="ProductDetailed.html?id=1#specs">LT-050</a></p></li><li><p><a href="ProductDetailed.html?id=2#specs">LT-065</a></p></li><li><p><a href="ProductDetailed.html?id=3#specs">LT-080</a></p></li><li><p><a href="ProductDetailed.html?id=4#specs">LT-100</a></p></li><li><p><a href="ProductDetailed.html?id=5#specs">LT-125</a></p></li><li><p><a href="ProductDetailed.html?id=6#specs">LT-150</a></p></li></ul></div><div class="specs-content">LT性能表<div class="table-responsive"><table class="table table-bordered table-striped"><thead><tr class="firstRow"><th>#</th><th>First Name</th><th>Last Name</th><th>Username</th></tr></thead><tbody><tr><th scope="row">1</th><td>Mark</td><td>Otto</td><td>@mdo</td></tr><tr><th scope="row">2</th><td>Jacob</td><td>Thornton</td><td>@fat</td></tr><tr><th scope="row">3</th><td>Larry</td><td>the Bird</td><td>@twitter</td></tr></tbody></table></div></div>', N'1')
SET IDENTITY_INSERT [dbo].[dt_channel_article_product] OFF
/****** Object:  Table [dbo].[dt_channel_article_photo]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_article_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[click] [int] NOT NULL,
	[status] [int] NOT NULL,
	[is_msg] [int] NOT NULL,
	[is_top] [int] NOT NULL,
	[is_red] [int] NOT NULL,
	[is_hot] [int] NOT NULL,
	[is_slide] [int] NOT NULL,
	[is_sys] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[like_count] [int] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
	[sub_title] [nvarchar](255) NULL,
	[wapbanner] [nvarchar](255) NULL,
	[dropdownlist1] [nvarchar](255) NULL,
	[dropdownlist2] [nvarchar](255) NULL,
	[checkbox1] [nvarchar](255) NULL,
 CONSTRAINT [PK__dt_channel_artic__558AAF1E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_channel_article_photo] ON
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (55, 1, 4, 14, N'', N'banner1', N'', N'/upload/201907/03/201907030957500739.jpg', N'', N'', N'', N'', N'', N'', 5, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA63016EB10C AS DateTime), CAST(0x0000AA8000A96AA7 AS DateTime), N'', N'/upload/201907/03/201907030957500739.jpg', NULL, NULL, NULL)
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (56, 1, 4, 62, N'', N'业务查询', N'/content/check.html', N'/upload/201907/11/201907110102534777.jpg', N'', N'', N'', N'', N'广州金冠燃气技术开发有限公司已在微信公众号上设立了相关的业务查询功能；欢迎前往微信公众号查询所需办理业务的内容或可致电020-81405151、020-81406162咨询。', N'<p>广州金冠燃气技术开发有限公司已在微信公众号上设立了相关的业务查询功能；<br/>欢迎前往微信公众号查询所需办理业务的内容或可致电020-81405151、020-81406162咨询。</p>', 99, 0, 0, 0, 1, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F00A4AD08 AS DateTime), CAST(0x0000AA8700114753 AS DateTime), N'Business Query', N'', NULL, NULL, NULL)
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (57, 1, 4, 62, N'', N'燃具展销', N'/content/show.html', N'/upload/201907/11/201907110102263683.jpg', N'', N'', N'', N'', N'◆报装条件1. 属于小区，并配有管道燃气设施，或已贴通知准备开发小区；2. 开放式、封闭式厨房或者厨房移位改变用途等不符合城镇燃气规范的业主不能报装。◆报装程序1. 选择小区、楼栋，填写房号；拍照上传房产证第一二页及身份证正反两面；确认提交并缴费；2. 我供气单位…', N'<p>◆报装条件</p><p>1. 属于小区，并配有管道燃气设施，或已贴通知准备开发小区；</p><p>2. 开放式、封闭式厨房或者厨房移位改变用途等不符合城镇燃气规范的业主不能报装。</p><p>◆报装程序</p><p>1. 选择小区、楼栋，填写房号；拍照上传房产证第一二页及身份证正反两面；确认提交并缴费；</p><p>2. 我供气单位将于2个月内上门查勘、复合条件并安装通气点火。</p><p><br/></p>', 99, 0, 0, 0, 1, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F00A4D864 AS DateTime), CAST(0x0000AA87001380E5 AS DateTime), N'Gas appliance Exhibition', N'', NULL, NULL, NULL)
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (58, 1, 4, 62, N'', N'报装开通', N'/content/service.html', N'/upload/201907/11/201907110058418997.jpg', N'', N'', N'', N'', N'', N'', 3, 0, 0, 0, 1, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F00A4FA60 AS DateTime), CAST(0x0000AA870010223F AS DateTime), N'Installation & OApening', N'', NULL, NULL, NULL)
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (59, 1, 4, 63, N'', N'打造以“安全供气、优质服务”为企业精神的区域性管道燃气专业公司', N'', N'', N'', N'', N'', N'', N'多年来，公司始终坚持服务工作的核心思想，即：全心全意为客户服务的企业宗旨，发扬“诚信高效 服务用户、团结进取争创效益”的企业精神，努力做到让客户放心，让客户满意，从而得到了广大用户的广泛认可。', N'', 2, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F00A60DFE AS DateTime), NULL, N'', NULL, NULL, NULL, NULL)
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (60, 1, 4, 14, N'', N'banner2', N'', N'/upload/201907/11/201907110109500715.jpg', N'', N'', N'', N'', N'', N'', 1, 0, 0, 1, 0, 0, 1, 0, 1, N'admin', 0, CAST(0x0000AA8700133765 AS DateTime), NULL, N'', N'', NULL, NULL, NULL)
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (61, 1, 4, 73, NULL, N'111', NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, 99, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7E0097449C AS DateTime), NULL, N'', N'', N'1', N'1', N'0')
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (62, 0, 4, 73, NULL, N'7.22修改111', NULL, N'/upload/201907/22/201907221003327718.docx', NULL, NULL, NULL, NULL, N'', NULL, 99, 0, 0, 0, 0, 0, 0, 0, 0, N'hrlong', 0, CAST(0x0000AA9200A30278 AS DateTime), CAST(0x0000AA9200A5CAC9 AS DateTime), N'222', N'', N'1', N'1,2', N'1')
INSERT [dbo].[dt_channel_article_photo] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner], [dropdownlist1], [dropdownlist2], [checkbox1]) VALUES (63, 1, 4, 73, NULL, N'111', NULL, N'/upload/201907/21/201907211752535530.docx', NULL, NULL, NULL, NULL, N'', NULL, 99, 0, 0, 1, 1, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7E0097449C AS DateTime), NULL, N'222', N'/upload/201907/21/201907211752330250.docx', N'1', N'', N'1')
SET IDENTITY_INSERT [dbo].[dt_channel_article_photo] OFF
/****** Object:  Table [dbo].[dt_channel_article_news]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_article_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[click] [int] NOT NULL,
	[status] [int] NOT NULL,
	[is_msg] [int] NOT NULL,
	[is_top] [int] NOT NULL,
	[is_red] [int] NOT NULL,
	[is_hot] [int] NOT NULL,
	[is_slide] [int] NOT NULL,
	[is_sys] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[like_count] [int] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
 CONSTRAINT [PK__dt_channel_artic__73501C2F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_channel_article_news] ON
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (38, 1, 1, 56, N'', N'“传播文明，引领风尚，共同建设一个文明、健康、和谐的社会文化新天地”', N'', N'/upload/201907/03/201907031010168059.jpg', N'', N'', N'', N'', N'8月15日，广州金冠燃气公司为进一步做好创文明服务工作，客服中心组织班组员工认真学习《广州市燃气行业服务规范》，清晰服务流程的操作规范，强调服务用语，提高服务质量', N'<p>8月15日，广州金冠燃气公司为进一步做好创文明服务工作，客服中心组织班组员工认真学习《广州市燃气行业服务规范》，清晰服务流程的操作规范，强调服务用语，提高服务质量。</p><p>为创造文明活动的浓厚气氛，服务大厅里悬挂了宣传标语，分别设置了服务区、休息区等，并设置了无障碍通道。</p><p>广州金冠燃气技术开发有限公司。</p><p><br/></p>', 99, 0, 0, 0, 1, 1, 0, 0, 1, N'hrlong', 0, CAST(0x0000A93D0165B37C AS DateTime), CAST(0x0000AA8001738847 AS DateTime))
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (41, 1, 1, 53, N'', N'城市燃气安全管理规定', N'', N'', N'', N'', N'', N'城市燃气安全管理规定', N'本规定所称城市燃气，是指供给城市中生活、生产等使用的天然气、液化石油气、人工煤气（煤制气、重油制气）等气体燃料', N'<p><strong>城市燃气安全管理规定</strong></p><p>【分类号】 21911199102<br/></p><p>【标题】 城市燃气安全管理规定</p><p>【时效性】 有效</p><p>【颁布单位】 建设部／劳动部／公安部</p><p>【颁布日期】 19910330</p><p>【实施日期】 19910501</p><p>【失效日期】</p><p>【内容分类】 城市管理</p><p>【文号】 令第10号</p><p>【名称】 城市燃气安全管理规定</p><p>【题注】</p><p><strong>【章名】 第一章 总 则</strong></p><p>第一条 为了加强城市燃气的安全管理，保护人身和财产安全，制定本规定。</p><p>第二条 本规定所称城市燃气，是指供给城市中生活、生产等使用的天然气、液化石油气、人工煤气（煤制气、重油制气）等气体燃料。</p><p>第三条 城市燃气的生产、储存、输配、经营、使用以及燃气工程的设计、施工和燃气用具的生产，均应遵守本规定。</p><p>第四条 根据国务院规定的职责分工和有关法律、法规的规定，建设部负责管理全国城市燃气安全工作，劳动部负责全国城市燃气的安全监察，公安部负责全国城市燃气的消防监督。</p><p>县级以上地方人民政府城建、劳动（安全监察）、公安（消防监督）部门按照同级人民政府规定的职责分工，共同负责本行政区域的城市燃气安会监督管理工作。</p><p>第五条城市燃气的生产、储存、输配、经营和使用，必须贯彻“安全第一、预防为主”的方针，高度重视燃气安全工作。</p><p>第六条第六条 城市燃气生产、储存、输配、经营单位应当指定一名企业负责人主管燃气安全工作，并设立相应的安全管理机构，配备专职安全管理人员；车间班组应当设立群众性安全组织和安全员，形成三级安全管理网络。</p><p>单位用户应当确立相应的安全管理机构，明确专人负责。</p><p>第七条 城市燃气生产、储存、输配、经营单位应当严格遵守有关安全规定及技术操作规程，建立健全相应的安全管理规章制度，并严格执行。</p><p><strong>【章名】 第二章 城市燃气工程的建设</strong></p><p>第八条 城市燃气厂（站）、输配设施等的选址，必须符合城市规划、消防安全等要求。在选址审查时，应当征求城建、劳动、公安消防部门的意见。</p><p>第九条 城市燃气工程的设计、施工，必须由持有相应资质证书的单位承担。</p><p>第十条 城市燃气工程的设计、施工，必须按照国家或主管部门有关安全的标准、规范、规定进行。审查燃气工程设计时，应当有城建、公安消防、劳动部门参加，并对燃气安全设施严格把关。</p><p>第十一条 城市燃气工程的施工必须保证质量，确保安全可靠。竣工验收时，应当组织城建、公安消防、劳动等有关部门及燃气安全方面的专家参加。凡验收不合格的，不准交付使用。</p><p>第十二条 城市燃气工程的通气作业，必须有严格的安全防范措施，并在燃气生产、储存、输配、经营单位和公安消防部门的监督配合下进行。</p><p><strong>【章名】 第三章 城市燃气的生产、储存和输配</strong></p><p>第十三条城市燃气生产单位向城市供气的压力和质量应当符合国家规定的标准，无臭燃气应当按照规定进行加臭处理。在使用发生炉、水煤气炉、油制气炉生产燃气及电捕焦油器时，其含氧量必须符合《工业企业煤气安全规程》的规定。</p><p>第十四条对于制气和净化使用的原料，应当按批进行质量分析；原料品种作必要变更时，应当进行分析试验。凡达不到规定指标的原料，不得投入使用。</p><p>第十五条 城市燃气生产、储存和输配所采用的各类锅炉、压力容器和气瓶设备，必须符合劳动部门颁布的有关安全管理规定，按要求办理使用登记和建立档案，并定期检验；其安全附件必须齐全、可靠，并定期校验。</p><p>凡有液化石油气充装单位的城市，必须设置液化石油气瓶定期检验站。气瓶定期检验站和气瓶充装单位应当同时规划、同时建设、同时验收运行。气瓶定期检验工作不落实的充装单位，不得从事气瓶充装业务。气瓶定期检验站须经省、自治区、直辖市人民政府劳动部门审查批准，并取得资格证书后，方可从事气瓶检验工作。</p><p>第十六条 城市燃气管道和容器在投入运行前，必须进行气密试验和置换。在置换过程中，应当定期巡回检查，加强监护和检漏，确保安全无泄漏。对于各类防爆设施和各种安全装置，应当进行定期检查，并配备足够的备用设备、备品备件以及抢修人员和工具，保证其灵敏可靠。</p><p>第十七条 城市燃气生产、储存、输配系统的动火作业应当建立分级审批制度，由动火作业单位填写动火作业审批报告和动火作业方案，并按级向安全管理部门申报，取得动火证后方可实施。</p><p>在动火作业时，必须在作业点周围采取保证安全的隔离措施和防范措施。</p><p>第十八条 城市燃气生产、储存和输配单位应当按照设备的负荷能力组织生产、储存和输配。</p><p>特殊情况确需强化生产时，必须进行科学分析和技术验证，并经企业总工程师或技术主管负责人批准后，方能调整设备的工艺参数和生产能力。</p><p>第十九条 城市燃气生产、储存、输配经营单位和管理部门必须制定停气、降压作业的管理制度，包括停气、降压的审批权限、申报程序以及恢复供气的措施等，并指定技术部门负责。</p><p>涉及用户的停气、降压工程，不宜在夜间恢复供气。除紧急事故外，停气及恢复供气应当事先通知用户。</p><p>第二十条 任何单位和个人严禁在城市燃气管道及设施上修筑建筑物、构筑物和堆放物品。确需在城市燃气管道及设施附近修筑建筑物、构筑物和堆放物品时，必须符合城市燃气设计规范及消防技术规范中的有关规定。</p><p>第二十一条 凡在城市燃气管道及设施附近进行施工，有可能影响管道及设施安全运营的，施工单位须事先通知城市燃气生产、储存、输配、经营单位，经双方商定保护措施后方可施工。施工过程中，城市燃气生产、储存、输配经营单位应当根据需要进行现场监护。施工单位应当在施工现场设置明显标志严禁明火，保护施工现场中的燃气管道及设施。</p><p>第二十二条 城市燃气生产、储存、输配经营单位应当对燃气管道及设施定期进行检查，发现管道和设施有破损、漏气等情况时，必须及时修理或更换。</p><p><strong>【章名】 第四章 城市燃气的使用</strong></p><p>第二十三条 单位和个人使用城市燃气必须向城市燃气经营单位提出申请，经许可后方可使用。</p><p>城市燃气经营单位应当建立用户档案，与用户签订供气、使用合同协议。</p><p>第二十四条 使用城市燃气的单位和个人需要增加安装供气及使用设施时，必须经城市燃气经营单位批准。</p><p>第二十五条 城市燃气经营单位必须制定用户安全使用规定，对居民用户进行安全教育，定期对燃气设施进行检修，并提供咨询等服务；居民用户应当严格遵守安全使用规定。</p><p>城市燃气经营单位对单位用户要进行安全检查和监督，并负责其操作和维修人员的技术培训。</p><p>第二十六条 使用燃气管道设施的单位和个人，不得擅自拆、改、迁、装燃气设施和用具，严禁在卧室安装燃气管道设施和使用燃气，并不得擅自抽取或采用其他不正当手段使用燃气。</p><p>第二十七条 用户不得用任何手段加热和摔、砸、倒卧液化石油气钢瓶，不得自行倒罐、排残和拆修瓶阀等附件，不得自行改换检验标记或瓶体漆色。</p><p><strong>【章名】 第五章 城市燃气用具的生产和销售</strong></p><p>第二十八条 城市燃气用具生产单位生产实行生产许可制度的产品时，必须取得归口管理部门颁发的《生产许可证》，其产品受颁证机关的安全监督。</p><p>第二十九条 民用燃具的销售，必须经销售地城市人民政府城建行政主管部门指定的检测中心（站）进行检测，经检测符合销售地燃气使用要求，并在销售地城市人民政府城建行政主管部门指定的城市燃气经营单位的安全监督下方可销售。</p><p>第三十条 凡经批准销售的燃气用具，其销售单位应当在销售地设立维修站点，也可以委托当地城市燃气经营单位代销代修，并负责提供修理所需要的燃气用具零部件。城市燃气经营单位应当对专业维修人员进行考核。</p><p>第三十一条 燃气用具产品必须有产品合格证和安全使用说明书，重点部位要有明显的警告标志。</p><p><strong>【章名】 第六章 城市燃气事故的抢修和处理</strong></p><p>第三十二条 城市燃气事故是指由燃气引起的中毒、火灾、爆炸等造成人员伤亡和经济损失的事故。</p><p>第三十三条 任何单位和个人发现燃气事故后，必须立即切断气源，采取通风等防火措施，并向城市燃气生产、储存、输配、经营单位报告。城市燃气生产、储存、输配、经营单位接到报告后，应当立即组织抢修。对于重大事故，应当立即报告公安消防、劳动部门和城市燃气生产、储存、输配、经营单位，并立即切断气源，迅速隔离和警戒事故现场，在不影响救护的情况下保护事故现场，维护现场秩序，控制事故发展。</p><p>第三十四条 城市燃气生产、储存、输配、经营单位必须设置专职抢修队伍，配齐抢修人员、防护用品、车辆、器材、通讯设备等，并预先制定各类突发事故的抢修方案，事故发生后，必须迅速组织抢修。</p><p>第三十五条 对于城市燃气事故的处理，应当根据其性质，分别依照劳动、公安部门的有关规定执行。</p><p>对于重大和特别重大的城市燃气事故，应当在城市人民政府的统一领导下尽快做好善后工作，由城建、公安、劳动部门组成事故调查组，查清事故原因，按照有关法律、法规、规章的规定进行严肃处理，并向上报告。</p><p><strong>【章名】 第七章 奖励与处罚</strong></p><p>第三十六条 对于维护城市燃气安全做出显著成绩的单位和个人，城市人民政府城建行政主管部门或城市燃气生产、储存、输配、经营单位应当予以表彰和奖励。</p><p>第三十七条 对于破坏、盗窃、哄抢燃气设施，尚不够刑事处罚的，由公安机关依照《中华人民共和国治安管理处罚条例》给予处罚；构成犯罪的，由司法机关依法追究其刑事责任。</p><p>第三十八条 对于违反本规定第二十条的，城市燃气生产、储存、输配、经营单位有权加以制止，并限期拆除违章设施和要求违章者赔偿经济损失。</p><p>第三十九条 对于违反本规定第二十一条、二十四条、二十六条、二十七条的，城市燃气生产、储存、输配、经营单位有权加以制止，责令恢复原状，对于屡教不改或者危及燃气使用安全的，城市燃气生产、储存、输配、经营单位可以报经城市人民政府城建行政主管部门批准后，采取暂停供气的措施，以确保安全。</p><p>第四十条 当事人对处罚决定不服的，可以依照《中华人民共和国行政诉讼法》的有关规定，申请复议或者向人民法院起诉。逾期不申请复议或者不向人民法院起诉，又不履行处罚决定的，由做出处罚决定的行政机关申请人民法院强制执行，或者依法强制执行。</p><p><strong>【章名】 第八章 附 则</strong></p><p>第四十一条 各省、自治区、直辖市人民政府建设行政主管部门可以会同劳动、公安部门根据本规定制订实施细则，报同级人民政府批准执行。</p><p>第四十二条 本规定由建设部负责解释。</p><p>第四十三条 本规定自一九九一年五月一日起施行。以前发布的有关规定，凡与本规定相抵触的，均按本规定执行。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 1, 0, 1, N'admin', 0, CAST(0x0000AA79008F154C AS DateTime), CAST(0x0000AA810092B5FB AS DateTime))
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (42, 1, 1, 53, N'', N'广东省燃气管理条例', N'', N'', N'', N'', N'', N'广东省燃气管理条例', N'为加强对燃气的管理，规范经营和使用燃气行为，保障社会和人民生命财产安全，以及经营者、使用者的合法权益，促进燃气事业的健康发展，根据有关法律、法规，结合本省实际，制定本条例', N'<p style="text-align: center;">广东省燃气管理条例</p><p>广东省人民代表大会常务委员会</p><p>（1997年7月26日广东省第八届人民代表大会常务委员会第三十次会议通过）</p><p><br/></p><p><strong>第一章 总则</strong></p><p>第一条 为加强对燃气的管理，规范经营和使用燃气行为，保障社会和人民生命财产安全，以及经营者、使用者的合法权益，促进燃气事业的健康发展，根据有关法律、法规，结合本省实际，制定本条例。</p><p>第二条 本省行政区域内燃气的规划、建设和贮存、输配、经营、使用及其管理，适用本条例。</p><p>第三条 省、市、县人民政府建设行政主管部门（以下简称“主管部门”）负责本行政区域内燃气行业的监督管理和本条例的组织实施。</p><p>政府的其他有关行政管理部门在各自职责范围内做好燃气的管理工作。</p><p>第四条 各级人民政府应当将燃气的发展纳入城市总体规划及国民经济和社会发展计划，并对燃气实行统一规划和管理。</p><p><strong>第二章 规划与建设管理</strong></p><p>第五条 燃气专项规划由主管部门组织编制。编制燃气专项规划时，应当征求公安消防、劳动、环境保护等有关部门的意见。</p><p>第六条 燃气建设必须符合城市燃气专项规划，执行有关法律、法规以及国家和省的技术标准、规范、规程。</p><p>第七条 燃气工程的设计和施工，应当由具有相应资质等级的设计和施工单位承担。</p><p>第八条 高层民用建筑的燃气管道、设施，应当与主体工程同时设计、同时施工、同时交付使用。</p><p>已有管道燃气的地区，对尚未安装燃气管道的高层民用建筑，应当安装燃气管道并使用管道燃气。</p><p>无管道燃气的地区，对已有的高层民用建筑，应当安装集中的管道供气装置。</p><p>第九条 城市新区开发和旧区改造时，应当依照燃气专项规划，配套建设燃气设施。</p><p>第十条 新建、改建、扩建燃气工程项目，应当经主管部门会同有关部门按规定的权限审查同意。</p><p>任何单位和个人无正当理由不得阻挠经批准的公共管道燃气工程项目的施工安装。</p><p>第十一条 燃气工程项目完工后，由主管部门组织有关部门验收合格，方可交付使用。</p><p>第十二条 燃气工程的建设资金必须专款专用，并接受财政、物价、审计部门的监督。</p><p style="text-align: left;"><strong>第三章 燃气的经营管理</strong></p><p>第十三条 同一城市的管道燃气实行统一经营；瓶装燃气实行多家经营。</p><p>第十四条 设立燃气经营企业（含管道燃气和瓶装燃气经营企业，下同）应当符合下列条件：</p><p>（一）有稳定的、符合标准的燃气来源；</p><p>（二）有符合国家规范要求的储存、输配、充装设施；</p><p>（三）有与燃气经营规模相适应的自有资金；</p><p>（四）有固定的、符合安全条件的经营场所；</p><p>（五）有相应资格的专业管理人员和技术人员；</p><p>（六）有健全的安全管理制度和企业内部管理制度；</p><p>（七）有与供气规模相适应的抢险抢修人员、设备和交通工具，或者已委托当地具备抢险抢修条件的单位负责抢险抢修；</p><p>（八）法律、法规和国家燃气企业资质标准规定的其他条件。</p><p>第十五条 具备第十四条规定条件需从事燃气经营的，应当向当地主管部门申请，经地级市以上的主管部门依规定的权限审查合格，取得燃气企业资质证书。</p><p>燃气经营企业设立燃气分销机构（含销售网点），应当符</p><p>第十四条第（二）、（四）、（五）、（六）、（七）、（八）项规定的条件，向分销机构所在地的主管部门申领燃气经营许可证。其中，成片管道供气和有贮存、输配燃气业务的分销机构，其燃气经营许可证由地级市以上的</p><p>主管部门依规定的权限核发。</p><p>燃气企业资质证书和燃气经营许可证实行年审制度。未经年审或者年审不合格的，不得继续从事燃气经营活动。</p><p>禁止出租、出借、转让燃气企业资质证书和燃气经营许可证。</p><p>第十六条 自建燃气设施供本单位使用的，应当具备第十四条第（二）、（五）、（六）、（七）、（八）项规定的条件，并应当向主管部门领取燃气使用许可证后，方可运行。</p><p>燃气使用许可证实行年审制度。未经年审或者年审不合格的，其燃气设施不得运行。</p><p>只持有燃气使用许可证的单位，不得对外经营燃气。</p><p>第十七条 管道燃气经营企业应当在批准的供气区域内开展供气业务，并根据供气区内社会发展计划和燃气专业规划，及时调整燃气供应量，保证安全稳定供气，不得出现燃气供应不足和停气。</p><p>第十八条 管道燃气经营企业不得拒绝给供气区内符合供气和用气条件的单位和个人供气。</p><p>第十九条 燃气经营企业应当保证燃气的热值、组份、嗅味、压力等质量要求符合国家和省规定的标准。</p><p>未经国家和省的主管部门组织劳动部门、公安消防部门、环境保护部门、卫生部门、技术监督部门及其他有关部门和专家鉴定合格的新型复合气体燃料，不得作为民用燃料使用。</p><p>第二十条 管道燃气经营企业因施工、检修等原因停止供气、降压供气影响用户正常使用燃气的，除紧急情况外，应当提前二十四小时通知用户：连续停止供气四十八小时以上的，除不可抗力外，应当赔偿用户因此所受到的损失。具体赔偿办法由双方在供气用气合同中约定。</p><p>第二十一条 燃气企业的技术人员和安全人员，应当经考核合格，方可上岗。</p><p>第二十二条 燃气经营企业中止或者终止经营活动，应当提前九十日向原批准成立的主管部门提出申请。在不影响正常供气时，主管部门方可批准。</p><p>第二十三条 从事瓶装燃气充气的燃气经营企业不得有下列行为：</p><p>（一）给过期未检测的钢瓶或者报废的钢瓶充装燃气；</p><p>（二）给残液量超过规定的钢瓶充装燃气；</p><p>（三）超过国家的允差范围给钢瓶充装燃气；</p><p>（四）用槽车直接向钢瓶充装燃气；</p><p>（五）给不符合国家标准的钢瓶充装燃气；</p><p>（六）给未取得燃气经营许可证的经营者提供气源。</p><p>第二十四条 燃气价格的确定和调整，由主管部门和物价部门审核，报同级人民政府批准后公布施行。</p><p>燃气经营中的服务性收费，应当经主管部门审核，物价部门批准，向社会公布后施行。</p><p>第二十五条 管道燃气经营企业应当设置用户联系电话和抢险抢修电话，并向社会公布。抢险抢修电话应当有专人每天二十四小时值班。</p><p>第四章 燃气的使用管理</p><p>第二十六条 使用管道燃气的用户，应当向当地管道燃气经营企业提出申请，管道燃气经营企业对具备供气和用气条件的用户，自完成管道安装之日起二十日内应当予以通气。逾期不予通气的，主管部门自接到投诉之日起五日内，应当责令其向用户免费提供瓶装燃气和相应的燃气用具</p><p>，直到通气为止。</p><p>管道燃气经营企业应当建立用户档案，与用户用统一合同文本签订供气用气合同，明确双方的权利和义务。</p><p>第二十七条 管道燃气用户需扩大用气范围，改变燃气用途和过户，安装、改装、拆迁固定的燃气设施和燃气器具，应当到管道燃气经营企业申请办理手续。</p><p>第二十八条 管道燃气的用气量，应当以法定的计量检测机构依法认可的燃气计量装置的记录为准。</p><p>用户对燃气计量装置准确度有异议的，可以向供气的管道燃气经营企业申请测试，管道燃气经营企业在接到申请之日起三日或者与用户约定的时间内，由法定的计量检测机构测试。</p><p>经测试的燃气计量装置，其误差在法定的范围内的，测试费用由用户支付，其误差超过法定范围的，测试费用由管道燃气企业支付，并由管道燃气企业更换合格的燃气计量装置。</p><p>用户对测试结果有异议的，可以向技术监督部门投诉。</p><p>使用超过法定误差范围的燃气计量装置的用户，其在申请之日前二个月的燃气费，按测试误差调整后收取。</p><p>第二十九条 管道燃气用户应当在接到管道燃气经营企业通知之日起七日内缴交燃气费；逾期不交的，管道燃气企业可以从逾期之日起每日对从事生产经营的用户收取应交燃气费1％的滞纳金，对其他用户收取应交燃气费3‰的滞纳金；连续两次抄表不交纳燃气费的用户，管道燃气经</p><p>营企业可以对其中止供气。用户再申请用气时，必须缴清所欠燃气费和滞纳金。</p><p>第三十条 用户有权就燃气经营的收费和服务向燃气经营企业查询，可以向有关行政部门、组织投诉；有关行政部门应当自接到投诉之日起十五日内予以答复。</p><p>第五章 燃气的安全管理</p><p>第三十一条 建设单位在燃气管道安全保护范围内进行施工作业，应当在开工前十五日通知燃气企业，施工单位的保护措施得到燃气企业的认可后，方可施工。施工时，燃气企业可以派人到施工现场监护。</p><p>施工单位进行施工时，应当在现场设置严禁火种的标志。</p><p>第三十二条 燃气企业应当建立安全责任制，健全燃气安全保障体系，制定用户安全用气规定，向用户发放安全用气手册，进行安全宣传教育。</p><p>燃气用户应当遵守安全用气规定，依照规则使用燃气。</p><p>第三十三条 燃气企业应当在管道燃气设施所在地的建筑物及重要设施上设置明显的警示标志。</p><p>在燃气管道和设施的安全保护范围内，不得进行危害燃气设施的活动，不得擅自移动、涂改、覆盖或者拆除燃气设施统一标志。</p><p>第三十四条 燃气企业应当至少每年检查二次燃气管道和设施，并建立完整的检查档案，发现事故隐患，应当及时排除。</p><p>第三十五条 禁止在燃气管道及设施上修筑建筑物、构筑物和堆放物品。</p><p>第三十六条 用户不得有下列行为：</p><p>（一）在浴室和密室内安装直排式热水器；</p><p>（二）在卧室内使用管道燃气；</p><p>（三）用明火试验是否漏气；</p><p>（四）偷用管道燃气；</p><p>（五）加热、摔砸钢瓶或者在使用燃气时倒卧钢瓶；</p><p>（六）自行清除钢瓶内的残液；</p><p>（七）用钢瓶与钢瓶互相过气；</p><p>（八）自行改换钢瓶的检验标志和漆色；</p><p>（九）自行安装、改装、拆装燃气管道、计量装置和燃气器具。</p><p>管道燃气经营企业工作人员入户抄表、维修燃气设施和安全检查时应当出示身份证明。用户经核实后，连续三次无正当理由不准管道燃气经营企业的工作人员入户的，管道燃气经营企业可以中止供气。</p><p>第三十七条 燃气贮存、输配所使用的压力容器、钢瓶和有关安全附件，经依法成立的压力容器检验机构检测合格，劳动行政主管部门核发使用许可证后，方可使用。</p><p>钢瓶内的残液应当由从事充装瓶装燃气的燃气经营企业指定专人负责清除；未按规定清除残液造成质量问题的，由燃气经营企业负责。</p><p>第三十八条 从事燃气运输的机动车辆，应当到公安消防部门申请并领取准运证后方可运输。</p><p>第三十九条 除消防等紧急情况外，未经燃气企业同意，任何人不得开启或者关闭燃气管道上的公共阀门。</p><p>第四十条 任何单位和个人发现燃气设施和燃气器具损坏，燃气泄漏或者由燃气引起的中毒、火灾、爆炸等造成的人员伤亡和经济损失事故，应当立即通知燃气经营企业以及医疗、消防部门。</p><p>燃气企业接到报告后，应当立即组织抢险抢修，因玩忽职守，造成用户直接损失的，应当承担赔偿责任。</p><p>第四十一条 抢修管道燃气影响市政设施的运作或者需要中断电力、通信，以及损坏其他设施时，可采取应急措施，并及时通知有关部门。事后，由燃气企业承担维修责任或者负责补偿。</p><p>第四十二条 燃气事故的处理，应当依照有关安全事故方面的法律、法规的规定处理。</p><p>第四十三条 燃气器具应当附有产品合格证和安全使用说明书。适用于非液化石油气的器具，应经法定的检测机构对其气源适配性进行检测，符合当地燃气使用要求的，方可销售。</p><p>燃气经营企业不得强制用户购买其指定的燃气器具。</p><p>第六章 法律责任</p><p>第四十四条 违反本条例规定，给他人造成损失的，责任人应当赔偿；构成犯罪的，依法追究刑事责任。</p><p>第四十五条 违反本条例第七条规定的，由主管部门责令停止违法行为，对建设单位处以该项工程投资预算千分之五以上百分之一以下的罚款，对设计单位处以约定收费二倍的罚款，对施工单位处以工程承包额百分之五以上百分之十以下的罚款。</p><p>第四十六条 违反本条例第十条第一款规定的，由主管部门责令停工，限期补办手续，并处以投资预算千分之五的罚款。</p><p>违反本条例第十条第二款规定的，主管部门可以给予警告；情节严重的，可以处以个人五百元以上一千元以下、单位二万元以上五万元以下的罚款。</p><p>第四十七条 违反本条例第十一条规定的，由主管部门责令停止使用，由此所造成的损失，由燃气企业承担。</p><p>第四十八条 违反本条例第十五条第一款、第二款、第四款规定的，由主管部门责令其停止违法经营活动，没收违法所得和非法财物，并处以违法所得一倍以上三倍以下的罚款。&nbsp;</p><p>第四十九条 违反本条例第十六条第一款规定的，由主管部门责令停止运行。</p><p>违反本条例第十六条第三款规定的，由主管部门责令停止违法行为，没收违法所得，并可以处以违法所得一倍以上三倍以下的罚款。</p><p>第五十条 违反本条例第十七条、第十八条、第十九条第一款、第二十条规定的，由主管部门责令限期改正，给予警告；情节严重的，处以二万元以上五万元以下的罚款。</p><p>违反本条例第十九条第二款规定的，由主管部门责令停止经营，没收违法所得，并处以违法所得三倍以上五倍以下的罚款。</p><p>第五十一条 违反本条例第二十三条规定之一的，由主管部门责令改正，给予警告；情节严重的，处以一万元以上五万元以下的罚款。</p><p>第五十二条 违反本条例第二十七条、第三十二条第二款、第三十六条第一款和第三十九条规定的，由主管部门责令改正，给予警告；情节严重的，处以三百元以上一千五百元以下的罚款。</p><p>第五十三条 违反本条例第三十一条规定的，由主管部门责令停止施工，限期改正，可以处以五千元以上一万元以下的罚款；情节严重的，处以五万元以上十万元以下的罚款。</p><p>第五十四条 违反本条例第三十二条第一款、第三十三条第一款、第三十四条规定的，由主管部门责令改正，可以处以一万元以上五万元以下的罚款。</p><p>违反本条例第三十三条第二款规定的，由主管部门责令限期改正，可以处以一千元以上三千元以下的罚款。</p><p>第五十五条 违反本条例第三十五条规定的，由主管部门责令其予以清除，可以处以三千元以上一万元以下的罚款；情节严重的，处以五万元以上十万元以下的罚款。</p><p>第五十六条 违反本条例第四十三条第二款规定的，由省或者地级市的主管部门责令其停止违法行为，可以根据情节处以五万元以上二十万元以下的罚款，借此销售质次价高燃气器具的，应当没收违法所得，可以处以违法所得一倍以上三倍以下的罚款。</p><p>第五十七条 主管部门和其他有关行政管理部门工作人员玩忽职守、滥用职权、徇私舞弊、索贿受贿的，依法追究行政责任；构成犯罪的，依法追究刑事责任。</p><p>第五十八条 当事人对主管部门和其他有关行政管理部门作出的处罚不服的，可按《行政复诉条例》的规定申请复议，也可以直接向人民法院起诉。</p><p>当事人在处罚决定书送达之日起十五日内既不申请复议，也不向人民法院起诉，又不执行处罚决定的，作出处罚决定的机关可以申请人民法院强制执行。</p><p>第七章 附则</p><p>第五十九条 本条例所称燃气，是指供给居民生活、公共建筑和生产（不含发电）等用于燃烧的天然气、液化石油气、人工煤气和其他气体燃料。</p><p>本条例所称燃气企业，是指燃气经营企业和持有燃气使用许可证的自供气企业。</p><p>本条例所称高层民用建筑，是指十层及十层以上的住宅建筑和建筑高度超过二十四米的其他民用建筑。</p><p>本条例所称燃气工程，是指燃气的贮存、输配设施和管道燃气供气设施的新建、扩建、改建工程。</p><p>第六十条 广州市的燃气主管部门由广州市人民政府确定。</p><p>第六十一条 本条例自1997年12月1日起施行。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA730092499C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (43, 1, 1, 53, N'', N'广州市城市燃气管理暂行规定', N'', N'', N'', N'', N'', N'广州市城市燃气管理暂行规定', N'为加强本市城市燃气管理，确保城市燃气的安全使用和正常供应，维护燃气用户的合法权益，根据国家有关法规制定本规定', N'<p><strong>第一章&nbsp; 总则</strong><br/></p><p>第一条&nbsp; 为加强本市城市燃气管理，确保城市燃气的安全使用和正常供应，维护燃气用户的合法权益，根据国家有关法规制定本规定。</p><p>第二条&nbsp; 本规定适用于在本市行政区域内城市燃气的储存、输配、销售和使用。工矿企业生产的燃气一部分用于生产，一部分用于生活或外供生产使用部分以及民用燃气专业生产厂的生产也适用于本规定。</p><p>第三条&nbsp; 本规定所指的城市燃气系指液化石油气、油制气、炼厂气、焦炉气、天然气、混合气及其他用作燃料的气体。</p><p>第四条&nbsp; 本市城市燃气事业的发展，实行统一管理，贯彻多种气源、多种途径的方针，优先供给民用，适当供给公共福利事业、事业单位，合理发展须用燃气作为能源的企业。</p><p>第五条&nbsp; 广州市公用事业局（以下简称市公用局）是本市城市燃气管理的行政主管部门，负责对全市燃气的统一规划、建设和管理。 城市规划、公安、工商、劳动、计量、物价、环保等部门，应根据各自的职责分工，协同市公用局做好城市燃气的规划、建设和监督管理工作。</p><p>第二章&nbsp; 规划与建设</p><p>第六条&nbsp; 城市燃气的发展规划，应纳入城市总体规划。新建住宅区和旧城区的成片改造，应按照本市城市燃气规划要求，配套建设燃气供应设施。</p><p>第七条&nbsp; 城市燃气建设工程应严格执行城市燃气工程的设计、施工、技术等管理规范，并实行燃气管道承装准可证制度。城市燃气建设工程的审批，应报市公用局初审后，方可按正常的基建程序办理。工程竣工，必须由市公用局会同有关部门验收；验收不合格的，不得交付使用。</p><p>第八条&nbsp; 城市燃气工程的建设（含贮灌厂、站），其防火、防爆管理，应按现行的《建筑设计防火规范》执行，其他安全、卫生、电力照明、通风、给排水、交通等设施，也应符合有关专业管理的规定要求。</p><p>第九条&nbsp; 城市燃气工程建设的资金，可由国家、用户等多种渠道集资解决，新增用户均应缴纳城市燃气建设集资费。向用户收取城市燃气建设集资费，应遵循受益和合理负担的原则。未经市人民政府批准，任何单位和个人不得向用户收取集资费。</p><p>第三章&nbsp; 燃气的经营与管理</p><p>第十条&nbsp; 经营燃气的单位，应遵循经济效益为基础，社会效益和环境效益为目的，搞好优质服务。</p><p>第十一条&nbsp; 经营燃气的单位资质标准，应当符合国家规定，未达到标准的应限期改进。</p><p>第十二条&nbsp; 生产、储存、输配燃气的企业应符合下列条件：</p><p>（一）技术管理、生产管理、消防管理、受压设备安全管理、环境保护、计量器具必须符合国家规范和本市的有关规定；</p><p>（二）管理机构健全，有一定比例的专业技术人员，有足够的生产资金和符合规定的燃气贮灌设施及运输设施。</p><p>第十三条&nbsp; 经营燃气的销售点（或供应站）应符合下列条件：</p><p>（一）防火防爆责任制度落实，并应有责任人员；</p><p>（二）有稳定的、符合标准的燃气来源和安全规范的气瓶库；</p><p>（三）气瓶及其他设施的管理使用，应符合有关专业部门的管理规范。</p><p>第十四条&nbsp; 经营燃气单位（含销售点、贮灌厂、站）按下列程序申请办理经营许可证：</p><p>（一）持上级主管单位批准的文件和符合本规定第十三条规定有关条件的资料，向市公用局提出申请，领取申请表；</p><p>（二）申请表应分别经公安、劳动、计量、环保等部门，签署认可意见后，由市公用局核发经营许可证；</p><p>（三）凭经营燃气许可证，向有管辖权的工商行政管理部门申请营业执照。</p><p>未按以上审批程序办理经营许可证的单位，不得经营燃气。个体经营者不得以任何方式经营燃气及燃气钢瓶。</p><p>第十五条&nbsp; 自购燃气供本单位使用（含自产自供燃气用于生活）应按照本规定第十三条和第十四条第（一）、（二）项规定，办理使用燃气许可证手续。持有使用燃气许可证的单位，不得对外经营。</p><p>第十六条&nbsp; 不具备燃气贮存条件的自购自用单位，应在符合条件的定点单位代存、代管。各定点单位应根据自身的贮存能力，搞好代办业务。</p><p>第十七条&nbsp; 本规定颁布前已开业经营燃气的单位（含自产燃气对外供应的厂矿企业单位）和自购自用燃气的单位（含自产自供燃气一部分用于生产一部分用于生活的单位），应在本规定颁布之日起三十天内，到市公用局补办登记及资质审查手续。个体经营者应在本规定颁布之日起三十天内停止经营燃气及燃气钢瓶业务。</p><p>第十八条&nbsp; 凡被批准经营、使用燃气的单位，应按市物价部门核定的标准缴纳管理费，管理费应用于城市燃气的规划建设和管理。</p><p>第十九条&nbsp; 使用管道燃气的用户，应依表计量，按期交付燃气使用费。</p><p>第二十条&nbsp; 经营燃气的单位必须按物价部门核准的价格进行销售。</p><p>第四章&nbsp; 燃气设施安全管理</p><p>第二十一条&nbsp; 燃气厂、贮灌厂（站）、配气站、调压站、液化石油气船运码头及铁路专用线、燃气输送管道以及附设的各种设备、燃气钢瓶等均属城市燃气的重要设施，必须认真做好安全管理和维护工作，如需变更使用的，应按有关规定办理手续。</p><p>第二十二条&nbsp; 燃气设施应有明显的标志，任何单位和个人不得擅自涂改、毁坏和覆盖，不得擅自在设施上修建构筑物或建筑物。</p><p>第二十三条&nbsp; 凡进行对燃气设施有危害的施工作业，建设单位必须事先报经市公用局批准，并在专业人员的监护下方可进行。</p><p>第二十四条&nbsp; 燃气设施、燃气用具及燃气计量器具的制造、安装、维修、使用以及安全防护，均应符合国家及本市燃气管理的有关规定。</p><p>第二十五条&nbsp; 专业抢修人员在处理城市燃气事故的紧急状况中，对影响抢修的其他设施，有权采取应急措施，事后应及时恢复原状，并按有关规定补办手续。</p><p>第五章&nbsp; 罚则</p><p>第二十六条&nbsp; 凡生产、储存、输配燃气的单位，如不符合本规定第十二条规定的，可责令其限期整顿，逾期不符合规定的，可责令停业。</p><p>第二十七条&nbsp; 凡不符合经营燃气条件的或不办理经营、使用许可证的，除责令限期改正外，并处以二百元至二千元的罚款。逾期仍不改正的，可责令停止经营，吊销其经营、使用燃气的有关证照。</p><p>第二十八条&nbsp; 个体经营者自本规定颁布半个月后，仍继续非法经营燃气及燃气钢瓶的，除责令立即停止营业，没收全部燃气及燃气钢瓶外，并按没收实物价值的百分之五十罚款。</p><p>第二十九条&nbsp; 凡自购自用燃气单位，擅自对外进行经营业务的，除责令立即停止对外经营活动，没收非法所得外，并按没收总额的百分之五十处以罚款。</p><p>第三十条&nbsp; 凡不按本规定第十七条规定期限办理登记及资质审查手续的，除责令限期办理外，并处以二百元至二千元的罚款。逾期仍不办理的，则吊销其经营燃气的有关证照或予以停止使用燃气的处理。</p><p>第三十一条&nbsp; 凡不按规定期限交纳管理费的，每逾期一天加收百分之一的滞纳金，逾期三十天仍不交纳的，可吊销其经营或使用燃气的有关证照。</p><p>第三十二条&nbsp; 凡使用管道燃气的用户，不依时缴纳燃气费的，每逾期一天加收百分之零点五的滞纳金，逾期三十天仍不缴纳的，可停止供气。</p><p>第三十三条&nbsp; 凡不按物价部门核定价格销售燃气的，可按国家和省、市人民政府有关物价管理规定予以处罚。</p><p>第三十四条&nbsp; 凡涂改、覆盖或损坏燃气的设施、标志，除责令赔偿损失外，并按赔偿金额的百分之五十处以罚款。对窃取燃气设施、标志的，应加重处罚。</p><p>第三十五条&nbsp; 凡在燃气设施上违章修建构筑物、建筑物的，按违章建筑处理。对燃气设施造成损害的，须赔偿损失。</p><p>第三十六条&nbsp; 凡未经批准，在燃气设施上进行危害燃气设施作业的，除责令立即停止作业，补办手续外，并处以二百元至二千元罚款；如对燃气设施造成损害后果的，须赔偿损失。</p><p>第三十七条&nbsp; 凡制造、安装、维修和使用不符合国家及本规定的燃气设施、燃气用具、计量器具的单位和个人，可责令停止制造、安装、维修和使用，对已造成危害后果的，须赔偿损失，并按赔偿总额的百分之五十处以罚款。</p><p>第三十八条&nbsp; 专业人员抢修城市燃气事故时所损坏的其它设施，事后不按本规定第二十五条规定及时恢复原状或不按规定办理有关手续的，除责令限期改正外，还要追究单位负责人和直接责任人的行政责任。</p><p>第三十九条&nbsp; 燃气管理人员玩忽职守、徇私舞弊的，其主管部门要严格追究其行政和经济责任。</p><p>第四十条&nbsp; 本规定的行政处罚，按职责分工由市公用局或有关主管部门执行。违反治安管理法规的，由公安部门依法处理，触犯刑律的，由司法机关依法追究刑事责任。</p><p>第四十一条&nbsp; 当事人对城市燃气主管部门的行政处罚不服的，可在接到处罚通知书之日起十五日内，向作出处罚决定单位的上一级机关申请复议，也可直接向人民法院起诉；上一级机关应在三十日之内作出复议决定，如对复议决定不服的，可在接到复议决定书之日起十五日内，向有管辖权的人民法院起诉，期满不申请复议、不起诉，又不执行处罚决定的，由作出处罚决定的单位向人民法院申请强制执行。</p><p>第六章&nbsp; 附则</p><p>第四十二条&nbsp; 本规定由市公用局负责解释。</p><p>第四十三条&nbsp; 本规定的实施细则由市公用局制定，报市人民政府备案。</p><p>第四十四条&nbsp; 本规定自公布之日起施行。本规定如有与国家法律、法规不符的，按国家法律、法规执行。&nbsp;</p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000AA730094EC9C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (44, 1, 1, 53, N'', N'广州市油气管道设施保护试行办法', N'', N'', N'', N'', N'', N'广州市油气管道设施保护试行办法', N'为加强本市油气管道设施的管理，保障安全运行，根据有关法律、法规规定，并结合本市实际，制定本办法', N'<p>&nbsp; &nbsp; &nbsp; &nbsp;第一条　为加强本市油气管道设施的管理，保障安全运行，根据有关法律、法规规定，并结合本市实际，制定本办法。<br/></p><p>　　第二条　本办法适用于本市行政区域内石油(包括原油、成品油)、燃气(包括天然气、代天然气、人工煤气、液化石油气)管道及其附属设施(以下简称管道设施)的保护和管理活动。</p><p>　　石油化工企业、燃气生产企业、港口码头企业、液化石油气站场内部的油气管道设施的保护不适用本办法。</p><p>　　第三条　本办法所称油气管道设施，包括：</p><p>　　(一)输送石油、燃气的管道;</p><p>　　(二)调压设备、阀门(井)、凝水缸(井)、计量表、补偿器、放散管等油气管道设施、放空设施、监控及数据采集基地站及附属建(构)筑物;</p><p>　　(三)管道防腐保护设施，包括牺牲阳极块、阴极保护站、阴极保护测试桩、阳极地床和杂散电流排流站等;</p><p>　　(四)标志桩(带)、里程桩、警示牌等管道标志、标识和穿越公(铁)路检漏装置;</p><p>　　(五)管道水工防护构筑物、抗震设施、管沟、管堤、管桥及管道专用涵洞和隧道;</p><p>　　(六)法律、法规规定的其他附属设施和装置。</p><p>　　第四条　本市建立石油管道设施保护联席会议制度协调全市石油管道设施保护的监督管理，具体工作由市经贸行政管理部门牵头会同市发展改革、安全监管、建设、规划、公安等行政管理部门组织实施。</p><p>　　市经贸行政管理部门负责联席会议的日常工作，主要履行下列职责：</p><p>　　(一)受理对破坏、盗窃、哄抢石油管道设施行为的举报，及时交由相关行政管理部门处理;</p><p>　　(二)定期组织召开联席会议，通报相关行政管理部门日常履行职责情况、举报处理情况，加强信息沟通与协同联动工作;</p><p>　　(三)协调组织开展全市石油管道设施保护的宣传工作;</p><p>　　(四)必要时牵头组织全市石油管道设施保护的专项整治与查处行动;</p><p>　　(五)协调有关行政管理部门督促石油管道设施运营企业制定应急救援预案;</p><p>　　(六)按照市政府的要求组织、协调其他石油管道设施保护管理工作。</p><p>　　相关行政管理部门按照职责分工，各负其责：</p><p>　　(一)市发展改革行政管理部门负责协调配合国家、省有关石油管道设施建设工程;</p><p>　　(二)市安全监管行政管理部门负责督促石油管道设施运营企业贯彻执行安全生产的法律、法规和标准，依法查处安全生产违法行为;</p><p>　　(三)市城乡规划行政管理部门负责在实施城乡规划管理过程中确保石油管道设施安全保护区域制度的落实;</p><p>　　(四)公安机关负责依法查处破坏、盗窃、哄抢石油管道设施以及其他危害石油管道设施的案件。</p><p>　　相关行政管理部门对市经贸行政管理部门的协调处理意见有争议，经联席会议研究后仍不能达成一致的，由市经贸行政管理部门提请市政府决定。</p><p>　　第五条　市市政行政主管部门负责全市燃气管道设施保护的统一监督管理。</p><p>　　区、县级市的市政行政管理部门分别负责本辖区内的燃气管道设施保护的监督管理，业务上受市市政行政主管部门的指导。区的市政行政管理部门没有城市燃气行政管理职能的，燃气管道设施保护的监督管理工作由市市政行政主管部门负责。</p><p>　　第六条　市各相关行政管理部门按照各自职责，协同实施本办法。</p><p>　　各区、县级市政府应当配合做好本辖区内油气管道设施保护的管理工作。</p><p>　　第七条　对危害油气管道设施的行为，任何单位和个人均有权制止，并向经贸、市政或者其他相关行政管理部门举报。市政、公安等相关行政管理部门应当公布举报电话和其他举报途径，并公布查处结果。</p><p>　　第八条　用户或者房地产开发企业建设的共用燃气管道设施，应当在投入运行前将运营、维修、养护等管理责任和相关档案资料移交给燃气管道设施运营企业，并签订移交管理协议。</p><p>　　燃气管道设施运营企业在接管共用燃气管道设施时，应当对其安全技术条件进行复查;经复查不符合安全技术条件的，不予接收。</p><p>　　本条所称共用燃气管道设施，是指同一规划红线范围内二户以上用户共同使用的燃气管道设施。</p><p>　　第九条　油气管道设施的安全保护区域分为安全保护范围和安全控制范围。</p><p>　　安全保护范围为：</p><p>　　(一)石油管道，次高压、高压、超高压燃气管道的管壁外缘两侧5米范围内的区域;</p><p>　　(二)低压、中压燃气管道的管壁外缘两侧07米范围内的区域。</p><p>　　安全控制范围为：</p><p>　　(一)石油管道，次高压、高压、超高压燃气管道的管壁外缘两侧5米至50米范围内的区域;</p><p>　　(二)低压、中压燃气管道的管壁外缘两侧07米至5米范围内的区域。</p><p>　　市经贸行政管理部门、市政行政主管部门应当按照市城乡规划行政管理部门的要求，组织油气管道设施运营企业划定油气管道设施安全保护区域控制线，提出控制要求，送市城乡规划行政管理部门审查后，由城乡规划行政管理部门在规划管理中按本办法第十条第一款第(一)项的规定执行。</p><p>　　第十条　油气管道设施安全保护范围内禁止下列行为：</p><p>　　(一)修筑建(构)筑物;</p><p>　　(二)堆放大宗物资;</p><p>　　(三)在地面或者架空的油气管道设施上行走、攀爬、悬挂杂物;</p><p>　　(四)击打油气管道设施。</p><p>　　在石油管道、次高压燃气管道、高压燃气管道、超高压燃气管道的安全保护范围和低压、中压燃气管道设施的安全控制范围内，禁止排放腐蚀性物质。</p><p>　　在油气管道设施的安全保护范围和石油管道、次高压燃气管道、高压燃气管道、超高压燃气管道的安全控制范围内，禁止爆破、开山作业。</p><p>　　在沿河、跨河、穿河、穿堤的油气管道设施安全保护范围内，除在保障油气管道设施安全的条件下为防洪或者通航而采取的疏浚作业外，不得抛锚、拖锚、掏沙、挖泥或者从事其他危及油气管道设施安全的作业。</p><p>　　第十一条　建设单位进行下列活动前，应当向城建档案管理机构或者油气管道设施运营企业查询油气管道设施情况，取得油气管道设施资料：</p><p>　　(一)在油气管道设施安全保护范围内敷设和维修管道，以及进行钻探、打桩、顶进、开挖等作业;</p><p>　　(二)在油气管道设施安全控制范围内，修筑建(构)筑物;</p><p>　　(三)在低压、中压燃气管道设施安全控制范围内进行爆破、开山、堆放大宗物资。</p><p>　　施工前，建设单位应当向施工单位提供相关资料，督促施工单位制订油气管道设施保护方案，并在开工前十五日通知油气管道设施运营企业。油气管道设施运营企业收到通知后，应当根据油气管道设施状况和保护方案提出具体的保护要求。</p><p>　　第十二条　施工单位在施工过程中发现有未查明的油气管道设施的，应当立即停止施工，并向建设单位和油气管道设施运营企业报告。</p><p>　　工程施工作业损坏油气管道设施的，施工单位应当立即通知建设单位、油气管道设施运营企业和相关行政管理部门，并采取应急保护措施。</p><p>　　第十三条　市政或者公路行政管理部门在批准涉及油气管道设施的道路挖掘申请后，应当及时告知相关油气管道设施运营企业。</p><p>　　相关挖掘工作可能对油气管道设施造成重大影响的，市政或者公路行政管理部门在批准道路挖掘申请前还应当征求油气管道设施运营企业的意见;油气管道设施运营企业应当在规定的期限内予以答复。</p><p>　　第十四条　燃气管道设施运营企业确需改动燃气管道设施的，应当持下列资料向市政行政管理部门提出申请，获得批准后方可改动：</p><p>　　(一)书面申请;</p><p>　　(二)相关燃气设施建设工程的竣工验收证书;</p><p>　　(三)设施改造的设计文件和安全施工方案;</p><p>　　(四)设施改造的现场平面位置图;</p><p>　　(五)安全防护及不影响燃气用户安全、正常用气的措施;</p><p>　　(六)规划部门核发的管线工程《建设工程规划许可证》、《道路、管、线工程审核书》及附图。</p><p>　　市政行政管理部门应当自受理申请之日起十五日内作出决定。</p><p>　　第十五条　油气管道设施运营企业应当为下列地段的油气管道设施设立明显的警示标志：</p><p>　　(一)途经城镇、居民区、厂矿、学校、车站、码头、集贸市场等人口密集区域的油气管道设施;</p><p>　　(二)穿越公路、城市主干道、铁路、地铁、河流、水利设施、桥梁、港区航道、变电站、电缆的油气管道设施。</p><p>　　任何单位和个人不得擅自移动、涂改、覆盖、拆除油气管道设施警示标志。</p><p>　　第十六条　油气管道设施运营企业应当履行下列保护义务：</p><p>　　(一)制定油气管道设施保护管理制度和相关规程;</p><p>　　(二)定期检查油气管道设施，制作完整的检查记录，及时排除事故隐患;</p><p>　　(三)对易遭受机动车或者其他外力碰撞的油气管道设施采取相应的保护措施;</p><p>　　(四)对涉及油气管道设施的挖掘工程，在施工现场标明管线位置，对重要设施或者危险性较大的地段派人现场监护;</p><p>　　(五)及时制止可能危及油气管道设施的行为，对不听劝阻的，及时将有关情况向经贸或者市政行政管理部门报告;</p><p>　　(六)建立与油气管道设施规模相适应的抢险抢修队伍及配备抢险抢修器具，并公布抢险值班电话;</p><p>　　(七)制定事故应急救援预案，报经贸或者市政行政管理部门备案，并定期举行演练。</p><p>　　第十七条　任何单位和个人发现油气管道设施事故时，应当及时告知油气管道设施运营企业，或者向政府有关部门报告。</p><p>　　油气管道设施抢修时，有关单位和个人应当给予必要的协助，不得阻挠、妨碍抢修工作。</p><p>　　第十八条　违反本办法第十条规定，危及燃气管道设施的，由市政行政管理部门责令改正，对个人可以处五百元以上二千元以下、对单位可以处三千元以上三万元以下的罚款。</p><p>　　第十九条　违反本办法第十一条、第十二条规定，危及燃气管道设施或者造成设施损坏的，由市政行政管理部门责令停止施工，限期改正，对责任单位可以处五千元以上一万元以下的罚款。</p><p>　　第二十条　违反本办法第十四条规定，燃气管道设施运营企业擅自改动燃气管道设施的，由市政行政管理部门责令改正，限期补办手续，并可处一万元以上三万元以下的罚款。</p><p>　　第二十一条　违反本办法第十五条规定，燃气管道设施运营企业未设置警示标志的，由市政行政管理部门依照《广东省燃气管理条例》第五十四条的规定予以处理。</p><p>　　第二十二条　违反本办法第十六条规定，燃气管道设施运营企业不履行油气管道设施保护义务，致使管道设施遭受损坏的，由市政行政管理部门责令改正，处二万元以上三万元以下的罚款。</p><p>　　第二十三条　违反本办法规定，法律、法规规定了其他行政处罚的，按照相关法律、法规的规定予以处理;构成治安违法行为的，由公安机关依照《中华人民共和国治安管理处罚法》予以处理。</p><p>　　第二十四条　经贸、市政或者其他相关行政管理部门及其工作人员玩忽职守、滥用职权、徇私舞弊、索贿受贿的，依法给予行政处分。</p><p>　　第二十五条　本办法自2008年11月1日起施行。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7500953C4C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (45, 1, 1, 53, N'', N'国务院关于特大安全事故行政责任追究的规定', N'', N'', N'', N'', N'', N'国务院关于特大安全事故行政责任追究的规定', N'为了有效地防范特大安全事故的发生，严肃追究特大安全事故的行政责任，保障人民群众生命、财产安全，制定本规定', N'<p>&nbsp; &nbsp; 第一条&nbsp; 为了有效地防范特大安全事故的发生，严肃追究特大安全事故的行政责任，保障人民群众生命、财产安全，制定本规定。<br/></p><p>&nbsp; &nbsp; 第二条 地方人民政府主要领导人和政府有关部门正职负责人对下列特大安全事故的防范、发生，依照法律、行政法规和本规定的规定有失职、渎职情形或者负有领导责任的，依照本规定给予行政处分；构成玩忽职守罪或者其他罪的，依法追究刑事责任：</p><p>&nbsp; &nbsp; (一)特大火灾事故；</p><p>&nbsp; &nbsp; (二)特大交通安全事故；</p><p>&nbsp; &nbsp; (三)特大建筑质量安全事故；</p><p>&nbsp; &nbsp; (四)民用爆炸物品和化学危险品特大安全事故；</p><p>&nbsp; &nbsp; (五)煤矿和其他矿山特大安全事故；</p><p>&nbsp; &nbsp; (六)锅炉、压力容器、压力管道和特种设备特大&nbsp; &nbsp; 安全事故；</p><p>&nbsp; &nbsp; (七)其他特大安全事故。</p><p>&nbsp; &nbsp; 地方人民政府和政府有关部门对特大安全事故的防范、发生直接负责的主管人员和其他直接责任人员，比照本规定给予行政处分;构成玩忽职守罪或者其他罪的，依法追究刑事责任。</p><p>&nbsp; &nbsp; 特大安全事故肇事单位和个人的刑事处罚、行政处罚和民事责任，依照有关法律、法规和规章的规定执行。</p><p>&nbsp; &nbsp; 第三条&nbsp; 特大安全事故的具体标准，按照国家有关规定执行。</p><p>&nbsp; &nbsp; 第四条&nbsp; 地方各级人民政府及政府有关部门应当依照有关法律、法规和规章的规定，采取行政措施，对本地区实施安全监督管理，保障本地区人民群众生命、财产安全，对本地区或者职责范围内防范特大安全事故的发生、特大安全事故发生后的迅速和妥善处理负责。</p><p>&nbsp; &nbsp; 第五条 地方各级人民政府应当每个季度至少召开一次防范特大安全事故工作会议，由政府主要领导人或者政府主要领导人委托政府分管领导人召集有关部门正职负责人参加，分析、布置、督促、检查本地区防范特大安全事故的工作。会议应当作出决定井形成纪要，会议确定的各项防范措施必须严格实施。</p><p>&nbsp; &nbsp; 第六条&nbsp; 市(地、州)、县(市、区)人民政府应当组织有关部门按照职责分工对本地区容易发生特大安全事故的单位、设施和场所安全事故的防范明确责任、采取措施，并组织有关部门对上述单位、设施和场所进行严格检查。</p><p>&nbsp; &nbsp; 第七条&nbsp; 市(地、州)、县(市、区)人民政府必须制定本地区特大安全事故应急处理预案。本地区特大安全事故应急处理预案经政府主要领导人签署后，报上一级人民政府备案。</p><p>&nbsp; &nbsp; 第八条&nbsp; 市(地、州)、县(市、区)人民政府应当组织有关部门对本规定第二条所列各类特大安全事故的隐患进行查处；发现特大安全事故隐患的，责令立即排除；特大安全事故隐患排除前或者排除过程中，无法保证安全的，责令暂时停产、停业或者停止使用。法律、行政法规对查处机关另有规定的，依照其规定。</p><p>&nbsp; &nbsp;第九条&nbsp; 市(地、州)、县(市、区)人民政府及其有关部门对本地区存在的特大安全事故隐患，超出其管辖或者职责范围的，应当立即向有管辖权或者负有职责的—级人民政府或者政府有关部门报告;情况紧急的，可以立即采取包括责令暂时停产、停业在内的紧急措施，同时报告；有关上级人民政府或者政府有关部门接到报告后，应当立即组织查处。</p><p>&nbsp; &nbsp; 第十条&nbsp; 中小学校对学生进行劳动技能教育以及组织学生参加公益劳动等社会实践活动，必须确保学生安全。严禁以任何形式、名义组织学生从事接触易燃、易爆、有毒、有害等危险品的劳动或者其他危险性劳动。严禁将学校场地出租作为从事易燃、易爆、有毒、有害等危险品的生产、经营场所。</p><p>&nbsp; &nbsp; 中小学校违反前款规定的，按照学校隶属关系，对县(市、区)、 乡(镇)人民政府主要领导人和县(巾、区)人民政府教育行政部门正职负责人，根据情节轻重，给予记过，降级直至撤职的行政处分；构成玩忽职守罪或者其他罪的，依法追究刑事责任。</p><p>&nbsp; &nbsp; 中小学校违反本条第一款规定的，对校长给予撤职的行政处分，对直接组织者给予开除公职的行政处分，构成非法制造爆炸物罪或者其他罪的，依法追究刑事责任。</p><p>&nbsp; &nbsp; 第十一条&nbsp; 依法对涉及安全生产事项负责行政审批(包括批准、核准、许可、注册、认证、颁发证照、竣工验收等，下同)的政府部门或者机构，必须严格依照法律、法规和规章规定的安全条件和程序进行审查；不符合法律、法规和规章规定的安全条件的，不得批准；不符合法律、法规和规章规定的安全条件，弄虚作假，骗取批准或者勾结串通行政审批工作人员取得批准的，负责行政审批的政府部门或者机构除必须立即撤消原批准外，应当对弄虚作假或者勾结串通行政审批工作人员的当事人依法给予行政处罚；构成行贿罪，或者其它罪的，依法追究行事责任。</p><p>&nbsp; &nbsp; 负责行政审批的政府部门或者机构违反前款规定，对不符合法律、法规和规章规定的安全条什予以批准的、对部门或者机构的正职负责人，根据情节轻重，给予降级、撤职直至开除公职的行政处分；与当事人勾结串通的，应当开除公职；构成受贿罪、玩忽职守罪或者其他罪的，依法追究刑事责任。</p><p>&nbsp; &nbsp; 第十二条&nbsp; 对依照本规定第十—条第一款的规定取得批准的单位和个人，负责行政审批的政府部门或者机构必须对其实施严格监督检查；发现其不再具备安全条件的，必须立即撤销原批准。</p><p>&nbsp; &nbsp; 负责行政审批的政府部门或者机构违反前款规定，不对取得批准的单位和个人实施严格监督检查，或者发现其不再具备安全条件而不立即撤销原批准的，对部门或者机构的正职负责人，根据情节轻重，给予降级或者撤职的行政处分；构成受贿罪、玩忽职守罪或者其他罪的，依法追究刑事责任。</p><p>&nbsp; &nbsp; 第十三条&nbsp; 对未依法取得批准，擅自从事有关活动的，负责行政审批的政府部门或者机构发现或者接到举报后，应当立即予以查封、取缔，并依法给予行政处罚；属于经营单位的，由工商行政管理部门依法相应吊销营业执照。</p><p>&nbsp; &nbsp; 负责行政审批的政府部门或者机构违反前款规定，对发现或者举报的未依法取得批准而擅自从事有关活动的，不予查封、取缔、不依法给予行政处罚，工商行政管理部门不予吊销营业执照的，对部门或者机构的正职负责人，根据情节轻重，给予降级或者撤职的行政处分，构成受贿罪、玩忽职守罪或者其他罪的，依法追究刑事责任。</p><p>&nbsp; &nbsp; 第十四条&nbsp; 市(地、州)、县(市、区)人民政府依照本规定应当履行职责而未履行，或者未按照规定的职责和程序履行，本地区发生特大安全事故的，对政府主要领导人，根据情节轻重，给予降级或者撤职的行政处分；构成玩忽职守罪的，依法追究刑事责任。</p><p>&nbsp; &nbsp; 负责行政审批的政府部门或者机构、负责安全监督管理的政府有关部门，未依照本规定履行职责，发生特大安全事故的，对部门或者机构的正职负责人，根据情节轻重，给予撤职或者开除公职的行政处分；构成玩忽职守罪或者其他罪的，依法追究刑事责任。</p><p>&nbsp; &nbsp; 第十五条&nbsp; 发生特大安全事故，社会影响特别恶劣或者性质特别严重的，由国务院对负有领导责任的省长、自治区主席、直辖市市长和国务院有关部门正职负责人给予行政处分。</p><p>&nbsp; &nbsp; 第十六条&nbsp; 特大安全事故发生后，有关县(市、区)、市(地、州)和省、自治区、直辖市人民政府及政府有关部门应当按照国家规定的程序和时限立即上报，不得隐瞒不报、谎报或者拖延报告，井应当配合、协助事故调查，不得以任何方式阻碍、干涉事故调查。</p><p>&nbsp; &nbsp; 特大安全事故发生后，有关地方人民政府及政府有关部门违反前款规定的，对政府主要领导人和政府部门正职负责人给予降级的行政处分。</p><p>&nbsp; &nbsp; 第十七条&nbsp; 特大安全事故发生后，有关地方人民政府应当迅速组织救助，有关部门应当服从指挥、调度，参加或者配合救助，将事故损失降到最低限度。</p><p>&nbsp; &nbsp; 第十八条&nbsp; 特大安全事故发生后，省、自治区、直辖市人民政府应当按照国家有关规定迅速、如实发布事故消息。</p><p>&nbsp; &nbsp; 第十九条 特大安全事故发生后，按照国家有关规定组织调查组对事故进行调查。事故调查工作应当自事故发生之日起60日内完成，并由调查组提出调查报告；遇有特殊情况的，经调查组提出并报国家安全生产监督管理机构批准后，可以适当延长时间。调查报告应当包括依照本规定对有关责任人员追究行政责任或者其他法律责任的意见。</p><p>&nbsp; &nbsp; 省、自治区、直辖市人民政府应当自调查报告提交之日起30日内，对有关责任人员作出处理决定；必要时，国务院可以对特大安全事故的有关责任人员作出处理决定。</p><p>&nbsp; &nbsp; 第二十条&nbsp; 地方人民政府或者政府部门阻挠、干涉对特大安全事故有关责任人员追究行政责任的，对该地方人民政府主要领导人或者政府部门正职负责人，根据情节轻重，给予降级或者撤职的行政处分。</p><p>&nbsp; &nbsp; 第二十一条&nbsp; 任何单位和个人均有权向有关地方人民政府或者政府部门报告特大安全事故隐患，有权向上级人民政府或者政府部门举报地方人民政府或者政府部门不履行安全监督管理职责或者不按照规定履行职责的情况。接到报告或者举报的有关人民政府或者政府部门，应当立即组织对事故隐患进行查处，或者对举报的不履行、不按照规定履行安全监督管理职责的情况进行调查处理。</p><p>&nbsp; &nbsp; 第二十二条&nbsp; 监察机关依熙行政监察法的规定，对地方各级人民政府和政府部门及其工作人员履行安全监督管理职责实施监察。</p><p>&nbsp; &nbsp; 第二十三条&nbsp; &nbsp;对特大安全事故以外的其他安全事故的防范、发生追究行政责任的办法，由省、自治区、直辖市人民政府参照本规定制定。</p><p>&nbsp; &nbsp; 第二十四条 本规定自公布之日起施行。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7800958D28 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (46, 1, 1, 53, N'', N'燃气燃烧器具安装维修管理规定', N'', N'', N'', N'', N'', N'燃气燃烧器具安装维修管理规定', N'为了加强燃气燃烧器具的安装、维修管理，维护燃气用户、燃气供应企业、燃气燃烧器具安装，维修企业的合法权益，提高安装、维修质量和服务水平，根据《中华人民共和国建筑法》及国家有关规定，制定本规定', N'<p><strong>第一章&nbsp; &nbsp; 总则</strong><br/></p><p>第一条&nbsp; 为了加强燃气燃烧器具的安装、维修管理，维护燃气用户、燃气供应企业、燃气燃烧器具安装，维修企业的合法权益，提高安装、维修质量和服务水平，根据《中华人民共和国建筑法》及国家有关规定，制定本规定。</p><p>第二条&nbsp; 从事燃气燃烧器具安装、维修业务和实施对燃气燃烧器具安装维修的监督管理，应当遵守本规定。</p><p>第三条&nbsp; 本规定所称燃气燃烧器具是指家用的燃气热水器具、燃气开水器具、燃气灶具、燃气烘烤器具、燃气取暖器具、燃气制冷器具等。</p><p>第四条&nbsp; 燃气燃烧器具的安装、维修应当坚持保障使用安全、维护消费者合法权益的原则。</p><p>第五条&nbsp; 国务院建设行政主管部门负责全国燃气燃烧器具安装、维修的监督管理工作。</p><p>县级以上地方人民政府建设行政主管部门或者委托的燃气行业管理单位(以下简称燃气管理部门)负责本行政区域内燃气燃烧器具安装、维修的监督管理工作。</p><p>第六条&nbsp; 国家鼓励推广燃气燃烧器具及其安装维修的新技术、新设备、新工艺，淘汰落后的技术、设备、工艺。</p><p>&nbsp;</p><p>第二章&nbsp; &nbsp; 从业资格</p><p>第七条&nbsp; 从事燃气燃烧器具安装、维修的企业应当具备下列条件：</p><p>(一)有与经营规模相适应的固定场所、通讯工具；</p><p>(二)有4名以上有工程、经济、会计等专业技术职称的人员，其中有工程系列职称的人员不少于2人；</p><p>(三)有与经营规模相适应的安装、维修作业人员；</p><p>(四)有必备的安装、维修的设备、工具和检测仪器；</p><p>(五)有完善的安全管理制度。</p><p>省、自治区、直辖市人民政府建设行政主管部门应当根据本地区的实际情况，制定燃气燃烧器具安装、维修企业的资质标准，其条件不得低于前款的规定。</p><p>第八条&nbsp; 从事燃气燃烧器具安装、维修的企业，应当经企业所在地设区的城市人民政府燃气管理部门审查批准(不设区的城市和县，由省、自治区人民政府建设行政主管部门确定审查批准机构)，取得《燃气燃烧器具安装维修企业资质证书》(以下简称《资质证书》)，并持《资质证书》到工商行政管理部门办理注册登记后，方可从事安装、维修业务。</p><p>燃气管理部门应当将取得《资质证书》的企业向省级人民政府建设行政主管部门备案，并接受其监督检查。</p><p>取得《资质证书》的安装、维修企业由燃气管理部门编制《燃气燃烧器具安装维修企业目录》，并通过媒体等形式向社会公布。</p><p>第九条&nbsp; 燃气管理部门应当对燃气燃烧器具安装、维修企业进行资质年检。</p><p>第十条&nbsp; 燃气燃烧器具安装、维修企业中直接从事安装、维修的作业人员，取得燃气管理部门颁发的《职业技能岗位证书》(以下简称《岗位证书》)，方可从事燃气燃烧器具的安装、维修业务。</p><p>第十一条&nbsp; 从事燃气燃烧器具安装、维修的人员，有下列情况之一的，燃气管理部门应当收回其《岗位证书》：</p><p>(一)停止安装、维修业务一年以上的；</p><p>(二)违反标准、规范进行安装、维修的；</p><p>(三)欺诈用户，乱收费的。</p><p>第十二条&nbsp; 燃气燃烧器具安装、维修人员应当在一个单位执业，不得以个人名义承揽燃气燃烧器具安装、维修业务。</p><p>第十三条&nbsp; 《资质证书》和《岗位证书》的格式由国务院建设行政主管部门制定。</p><p>第十四条&nbsp; 任何单位和个人不得伪造、涂改、出租、借用、转让、出卖《资质证书》或者《岗位证书》。</p><p>&nbsp;</p><p>第三章&nbsp; &nbsp; 安装维修</p><p>第十五条&nbsp; 燃气燃烧器具的安装、改装、迁移或者拆除，应当由持有《资质证书》的燃气燃烧器具安装企业进行。</p><p>第十六条&nbsp; 燃气燃烧器具安装企业受理用户安装申请时，不得限定用户购买本企业生产的或者其指定的燃气燃烧器具和相关产品。</p><p>第十七条&nbsp; 安装燃气燃烧器具应当按照国家有关的标准和规范进行，并使用符合国家有关标准的燃气燃烧器具安装材料和配件。</p><p>第十八条&nbsp; 对用户提供的不符合标准的燃气燃烧器具或者提出不符合安全的安装要求时，燃气燃烧器具安装企业应当拒绝安装。</p><p>第十九条&nbsp; 燃气燃烧器具安装企业应当在家用燃气计量表后安装燃气燃烧器具，未经燃气供应企业同意，不得移动燃气计量表及表前设施。</p><p>第二十条&nbsp; 燃气燃烧器具安装完毕后，燃气燃烧器具安装企业应当进行检验。检验合格的，检验人员应当给用户出具合格证书。</p><p>合格证书应当包括燃气燃烧器具安装企业的名称、地址、电话、出具时间等内容，并盖有企业公章，检验人员应当在合格证书上签名。</p><p>第二十一条&nbsp; 未通气的管道燃气用户安装燃气燃烧器具后，还应当向燃气供应企业申请通气验收。通气验收合格后，方可通气使用。</p><p>通气验收不合格，确属安装质量问题的，原燃气燃烧器具安装企业应当免费重新安装。</p><p>第二十二条&nbsp; 燃气燃烧器具的安装应当设定保修期，保修期不得低于1年。</p><p>第二十三条&nbsp; 从事燃气燃烧器具维修的企业，应当是燃气燃烧器具生产企业设立的，或者是经燃气燃烧器具生产企业委托设立的燃气燃烧器具维修企业。</p><p>委托设立的燃气燃烧器具维修企业应当与燃气燃烧器具生产企业签订维修委托协议。</p><p>第二十四条&nbsp; 燃气燃烧器具维修企业接到用户报修后，应当在24小时内或者在与用户约定的时间内派人维修。</p><p>第二十五条&nbsp; 燃气燃烧器具的安装、维修企业对本企业所安装、维修的燃气燃烧器具负有指导用户安全使用的责任。</p><p>第二十六条&nbsp; 从事燃气燃烧器具安装、维修的企业，应当建立健全管理制度和规范化服务标准。</p><p>第二十七条&nbsp; 燃气燃烧器具的安装、维修企业，应当按照规定的标准向用户收取费用。</p><p>第二十八条&nbsp; 燃气燃烧器具安装、维修企业应当建立用户档案，定期向燃气管理部门报送相关报表。</p><p>第二十九条&nbsp; 任何单位和个人发现燃气事故后，应当立即切断气源，采取通风、防火等措施，并向有关部门报告。有关部门应当按照《城市燃气安全管理规定》和《城市燃气管理办法》等规定对事故进行调查。确属燃气燃烧器具安装、维修原因的，应当按照有关规定对燃气燃烧器具安装、维修企业进行处理。</p><p>&nbsp;</p><p>第四章&nbsp; &nbsp; 法律责任</p><p>第三十条&nbsp; 燃气燃烧器具安装、维修企业违反本规定，有下列行为之一的，由燃气管理部门吊销《资质证书》，并可处以1万元以上3万元以下罚款：</p><p>(一)伪造、涂改、出租、借用、转让或者出卖《资质证书》；</p><p>(二)年检不合格的企业，继续从事安装、维修业务；</p><p>(三)由于燃气燃烧器具安装、维修原因发生燃气事故；</p><p>(四)未经燃气供应企业同意，移动燃气计量表及表前设施。</p><p>燃气管理部门吊销燃气燃烧器具安装、维修企业《资质证书》后，应当提请工商行政管理部门吊销其营业执照。</p><p>第三十一条&nbsp; 燃气燃烧器具安装、维修企业违反本规定，有下列行为之一的，由燃气管理部门给予警告，并处以1万元以上3万元以下罚款：</p><p>(一)限定用户购买本企业生产的或者其指定的燃气燃烧器具和相关产品；</p><p>(二)聘用无《岗位证书》的人员从事安装、维修业务。</p><p>第三十二条&nbsp; 燃气燃烧器具安装、维修企业没有在规定的时间内或者与用户约定的时间安装、维修的，由燃气管理部门给予警告，并可处以3000元以下的罚款。</p><p>第三十三条&nbsp; 无《资质证书》的企业从事燃气燃烧器具安装、维修业务的，由燃气管理部门处以1万元以上3万元以下的罚款。</p><p>第三十四条&nbsp; 燃气燃烧器具安装、维修企业的安装、维修人员违反本规定，有下列行为之一的，由燃气管理部门给予警告、并处以5000元以下的罚款：</p><p>(一)无《岗位证书》，擅自从事燃气燃烧器具的安装、维修业务；</p><p>(二)以个人名义承揽燃气燃烧器具的安装、维修业务。</p><p>第三十五条&nbsp; 由于燃气燃烧器具安装、维修的原因造成燃气事故的，燃气燃烧器具安装、维修企业应当承担相应的赔偿责任。</p><p>第三十六条&nbsp; 燃气管理部门工作人员严重失职、索贿受贿或者侵害企业合法权益的，给予行政处分；构成犯罪的，依法追究刑事责任。</p><p>&nbsp;</p><p>第五章&nbsp; &nbsp; 附则</p><p>第三十七条&nbsp; 本规定由国务院建设行政主管部门负责解释。</p><p>第三十八条&nbsp; 本规定自2000年3月1日起施行。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA780095CA18 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (47, 1, 1, 53, N'', N'中华人民共和国安全生产法', N'', N'', N'', N'', N'', N'中华人民共和国安全生产法', N'为了加强安全生产监督管理，防止和减少生产安全事故，保障人民群众生命和财产安全，促进经济发展，制定本法', N'<p><strong>目 录</strong><br/></p><p>第一章&nbsp; &nbsp;总 则</p><p>第二章&nbsp; &nbsp;生产经营单位的安全生产保障</p><p>第三章&nbsp; &nbsp;从业人员的权利和义务</p><p>第四章&nbsp; &nbsp;安全生产的监督管理</p><p>第五章&nbsp; &nbsp;生产安全事故的应急救援与调查处理</p><p>第六章&nbsp; &nbsp;法律责任</p><p>第七章&nbsp; &nbsp;附 则</p><p>&nbsp;</p><p>第一章&nbsp; &nbsp; 总 则</p><p>第一条&nbsp; &nbsp; 为了加强安全生产监督管理，防止和减少生产安全事故，保障人民群众生命和财产安全，促进经济发展，制定本法。</p><p>第二条&nbsp; &nbsp; 在中华人民共和国领域内从事生产经营活动的单位（以下统称生产经营单位）的安全生产，适用本法；有关法律、行政法规对消防安全和道路交通安全、铁路交通安全、水上交通安全、民用航空安全另有规定的，适用其规定。</p><p>第三条&nbsp; &nbsp;安全生产管理，坚持安全第一、预防为主的方针。</p><p>第四条&nbsp; &nbsp; 生产经营单位必须遵守本法和其他有关安全生产的法律、法规，加强安全生产管理，建立、健全安全生产责任制度，完善安全生产条件，确保安全生产。</p><p>第五条&nbsp; &nbsp; &nbsp;生产经营单位的主要负责人对本单位的安全生产工作全面负责。</p><p>第六条&nbsp; &nbsp; &nbsp;生产经营单位的从业人员有依法获得安全生产保障的权利，并应当依法履行安全生产方面的义务。</p><p>第七条&nbsp; &nbsp; &nbsp; 工会依法组织职工参加本单位安全生产工作的民主管理和民主监督，维护职工在安全生产方面的合法权益。</p><p>第八条&nbsp; &nbsp; &nbsp; &nbsp;国务院和地方各级人民政府应当加强对安全生产工作的领导，支持、督促各有关部门依法履行安全生产监督管理职责。县级以上人民政府对安全生产监督管理中存在的重大问题应当及时予以协调、解决。</p><p>第九条&nbsp; &nbsp; &nbsp; &nbsp; 国务院负责安全生产监督管理的部门依照本法，对全国安全生产工作实施综合监督管理；县级以上地方各级人民政府负责安全生产监督管理的部门依照本法，对本行政区域内安全生产工作实施综合监督管理。国务院有关部门依照本法和其他有关法律、行政法规的规定，在各自的职责范围内对有关的安全生产工作实施监督管理；县级以上地方各级人民政府有关部门依照本法和其他有关法律、法规的规定，在各自的职责范围内对有关的安全生产工作实施监督管理。</p><p>第十条&nbsp; &nbsp; &nbsp; &nbsp; 国务院有关部门应当按照保障安全生产的要求，依法及时制定有关的国家标准或者行业标准，并根据科技进步和经济发展适时修订。生产经营单位必须执行依法制定的保障安全生产的国家标准或者行业标准。</p><p>第十一条&nbsp; &nbsp; &nbsp;各级人民政府及其有关部门应当采取多种形式，加强对有关安全生产的法律、法规和安全生产知识的宣传，提高职工的安全生产意识。</p><p>第十二条&nbsp; &nbsp; &nbsp;第十二条 依法设立的为安全生产提供技术服务的中介机构，依照法律、行政法规和执业准则，接受生产经营单位的委托为其安全生产工作提供技术服务。</p><p>第十三条&nbsp; &nbsp; &nbsp;国家实行生产安全事故责任追究制度，依照本法和有关法律、法规的规定，追究生产安全事故责任人员的法律责任。</p><p>第十四条&nbsp; &nbsp; &nbsp;国家鼓励和支持安全生产科学技术研究和安全生产先进技术的推广应用，提高安全生产水平。</p><p>第十五条&nbsp; &nbsp; &nbsp;国家对在改善安全生产条件、防止生产安全事故、参加抢险救护等方面取得显著成绩的单位和个人，给予奖励。&nbsp;</p><p>第二章&nbsp; 生产经营单位的安全生产保障</p><p>第十六条&nbsp; &nbsp; &nbsp;生产经营单位应当具备本法和有关法律、行政法规和国家标准或者行业标准规定的安全生产条件；不具备安全生产条件的，不得从事生产经营活动。</p><p>第十七条&nbsp; &nbsp; &nbsp;生产经营单位的主要负责人对本单位安全生产工作负有下列职责：</p><p>(一)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;建立、健全本单位安全生产责任制；</p><p>(二)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;组织制定本单位安全生产规章制度和操作规程；</p><p>(三)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;保证本单位安全生产投入的有效实施；</p><p>(四)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;督促、检查本单位的安全生产工作，及时消除生产安全事故隐患；</p><p>(五)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;组织制定并实施本单位的生产安全事故应急救援预案；</p><p>(六)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;及时、如实报告生产安全事故。</p><p>第十八条&nbsp; &nbsp; &nbsp;生产经营单位应当具备的安全生产条件所必需的资金投入，由生产经营单位的决策机构、主要负责人或者个人经营的投资人予以保证，并对由于安全生产所必需的资金投入不足导致的后果承担责任。</p><p>第十九条&nbsp; &nbsp; &nbsp; 矿山、建筑施工单位和危险物品的生产、经营、储存单位，应当设置安全生产管理机构或者配备专职安全生产管理人员。前款规定以外的其他生产经营单位，从业人员超过三百人的，应当设置安全生产管理机构或者配备专职安全生产管理人员；从业人员在三百人以下的，应当配备专职或者兼职的安全生产管理人员，或者委托具有国家规定的相关专业技术资格的工程技术人员提供安全生产管理服务。生产经营单位依照前款规定委托工程技术人员提供安全生产管理服务的，保证安全生产的责任仍由本单位负责。</p><p>第二十条&nbsp; &nbsp; &nbsp; 生产经营单位的主要负责人和安全生产管理人员必须具备与本单位所从事的生产经营活动相应的安全生产知识和管理能力。危险物品的生产、经营、储存单位以及矿山、建筑施工单位的主要负责人和安全生产管理人员，应当由有关主管部门对其安全生产知识和管理能力考核合格后方可任职。考核不得收费。</p><p>第二十一条&nbsp; 生产经营单位应当对从业人员进行安全生产教育和培训，保证从业人员具备必要的安全生产知识，熟悉有关的安全生产规章制度和安全操作规程，掌握本岗位的安全操作技能。未经安全生产教育和培训合格的从业人员，不得上岗作业。</p><p>第二十二条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位采用新工艺、新技术、新材料或者使用新设备，必须了解、掌握其安全技术特性，采取有效的安全防护措施，并对从业人员进行专门的安全生产教育和培训。</p><p>第二十三条&nbsp; 生产经营单位的特种作业人员必须按照国家有关规定经专门的安全作业培训，取得特种作业操作资格证书，方可上岗作业。特种作业人员的范围由国务院负责安全生产监督管理的部门会同国务院有关部门确定。</p><p>第二十四条&nbsp; &nbsp; 生产经营单位新建、改建、扩建工程项目（以下统称建设项目）的安全设施，必须与主体工程同时设计、同时施工、同时投入生产和使用。安全设施投资应当纳入建设项目概算。</p><p>第二十五条&nbsp; &nbsp; 矿山建设项目和用于生产、储存危险物品的建设项目，应当分别按照国家有关规定进行安全条件论证和安全评价。</p><p>第二十六条&nbsp; &nbsp; &nbsp;建设项目安全设施的设计人、设计单位应当对安全设施设计负责。矿山建设项目和用于生产、储存危险物品的建设项目的安全设施设计应当按照国家有关规定报经有关部门审查，审查部门及其负责审查的人员对审查结果负责。</p><p>第二十七条&nbsp; &nbsp; &nbsp;矿山建设项目和用于生产、储存危险物品的建设项目的施工单位必须按照批准的安全设施设计施工，并对安全设施的工程质量负责。矿山建设项目和用于生产、储存危险物品的建设项目竣工投入生产或者使用前，必须依照有关法律、行政法规的规定对安全设施进行验收；验收合格后，方可投入生产和使用。验收部门及其验收人员对验收结果负责。</p><p>第二十八条&nbsp; 生产经营单位应当在有较大危险因素的生产经营场所和有关设施、设备上，设置明显的安全警示标志。</p><p>第二十九条&nbsp; &nbsp;安全设备的设计、制造、安装、使用、检测、维修、改造和报废，应当符合国家标准或者行业标准。生产经营单位必须对安全设备进行经常性维护、保养，并定期检测，保证正常运转。维护、保养、检测应当作好记录，并由有关人员签字。</p><p>第三十条&nbsp; &nbsp; &nbsp; 生产经营单位使用的涉及生命安全、危险性较大的特种设备，以及危险物品的容器、运输工具，必须按照国家有关规定，由专业生产单位生产，并经取得专业资质的检测、检验机构检测、检验合格，取得安全使用证或者安全标志，方可投入使用。检测、检验机构对检测、检验结果负责。涉及生命安全、危险性较大的特种设备的目录由国务院负责特种设备安全监督管理的部门制定，报国务院批准后执行。</p><p>第三十一条&nbsp; &nbsp;国家对严重危及生产安全的工艺、设备实行淘汰制度。生产经营单位不得使用国家明令淘汰、禁止使用的危及生产安全的工艺、设备。</p><p>第三十二条&nbsp; &nbsp;生产、经营、运输、储存、使用危险物品或者处置废弃危险物品的，由有关主管部门依照有关法律、法规的规定和国家标准或者行业标准审批并实施监督管理。生产经营单位生产、经营、运输、储存、使用危险物品或者处置废弃危险物品，必须执行有关法律、法规和国家标准或者行业标准，建立专门的安全管理制度，采取可靠的安全措施，接受有关主管部门依法实施的监督管理。</p><p>第三十三条&nbsp; &nbsp; &nbsp;生产经营单位对重大危险源应当登记建档，进行定期检测、评估、监控，并制定应急预案，告知从业人员和相关人员在紧急情况下应当采取的应急措施。生产经营单位应当按照国家有关规定将本单位重大危险源及有关安全措施、应急措施报有关地方人民政府负责安全生产监督管理的部门和有关部门备案。</p><p>第三十四条&nbsp; &nbsp; 生产、经营、储存、使用危险物品的车间、商店、仓库不得与员工宿舍在同一座建筑物内，并应当与员工宿舍保持安全距离。生产经营场所和员工宿舍应当设有符合紧急疏散要求、标志明显、保持畅通的出口。禁止封闭、堵塞生产经营场所或者员工宿舍的出口。</p><p>第三十五条&nbsp; &nbsp; &nbsp;生产经营单位进行爆破、吊装等危险作业，应当安排专门人员进行现场安全管理，确保操作规程的遵守和安全措施的落实。</p><p>第三十六条&nbsp; &nbsp; 生产经营单位应当教育和督促从业人员严格执行本单位的安全生产规章制度和安全操作规程；并向从业人员如实告知作业场所和工作岗位存在的危险因素、防范措施以及事故应急措施。</p><p>第三十七条&nbsp; &nbsp; &nbsp;生产经营单位必须为从业人员提供符合国家标准或者行业标准的劳动防护用品，并监督、教育从业人员按照使用规则佩戴、使用。</p><p>第三十八条&nbsp; &nbsp; &nbsp; 生产经营单位的安全生产管理人员应当根据本单位的生产经营特点，对安全生产状况进行经常性检查；对检查中发现的安全问题，应当立即处理；不能处理的，应当及时报告本单位有关负责人。检查及处理情况应当记录在案。</p><p>第三十九条&nbsp; &nbsp; &nbsp;生产经营单位应当安排用于配备劳动防护用品、进行安全生产培训的经费。</p><p>第四十条&nbsp; &nbsp; &nbsp; 两个以上生产经营单位在同一作业区域内进行生产经营活动，可能危及对方生产安全的，应当签订安全生产管理协议，明确各自的安全生产管理职责和应当采取的安全措施，并指定专职安全生产管理人员进行安全检查与协调。</p><p>第四十一条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位不得将生产经营项目、场所、设备发包或者出租给不具备安全生产条件或者相应资质的单位或者个人。生产经营项目、场所有多个承包单位、承租单位的，生产经营单位应当与承包单位、承租单位签订专门的安全生产管理协议，或者在承包合同、租赁合同中约定各自的安全生产管理职责；生产经营单位对承包单位、承租单位的安全生产工作统一协调、管理。</p><p>第四十二条&nbsp; &nbsp; &nbsp; 生产经营单位发生重大生产安全事故时，单位的主要负责人应当立即组织抢救，并不得在事故调查处理期间擅离职守。</p><p>第四十三条&nbsp; &nbsp; &nbsp; 生产经营单位必须依法参加工伤社会保险，为从业人员缴纳保险费。</p><p>第三章&nbsp; 从业人员的权利和义务</p><p>第四十四条&nbsp; &nbsp; &nbsp;生产经营单位与从业人员订立的劳动合同，应当载明有关保障从业人员劳动安全、防止职业危害的事项，以及依法为从业人员办理工伤社会保险的事项。生产经营单位不得以任何形式与从业人员订立协议，免除或者减轻其对从业人员因生产安全事故伤亡依法应承担的责任。</p><p>第四十五条&nbsp; &nbsp; &nbsp; 生产经营单位的从业人员有权了解其作业场所和工作岗位存在的危险因素、防范措施及事故应急措施，有权对本单位的安全生产工作提出建议。</p><p>第四十六条&nbsp; &nbsp; &nbsp; 从业人员有权对本单位安全生产工作中存在的问题提出批评、检举、控告；有权拒绝违章指挥和强令冒险作业。生产经营单位不得因从业人员对本单位安全生产工作提出批评、检举、控告或者拒绝违章指挥、强令冒险作业而降低其工资、福利等待遇或者解除与其订立的劳动合同。</p><p>第四十七条&nbsp; &nbsp; &nbsp; &nbsp;从业人员发现直接危及人身安全的紧急情况时，有权停止作业或者在采取可能的应急措施后撤离作业场所。生产经营单位不得因从业人员在前款紧急情况下停止作业或者采取紧急撤离措施而降低其工资、福利等待遇或者解除与其订立的劳动合同。</p><p>第四十八条&nbsp; &nbsp; &nbsp; 因生产安全事故受到损害的从业人员，除依法享有工伤社会保险外，依照有关民事法律尚有获得赔偿的权利的，有权向本单位提出赔偿要求。</p><p>第四十九条&nbsp; &nbsp; &nbsp; 从业人员在作业过程中，应当严格遵守本单位的安全生产规章制度和操作规程，服从管理，正确佩戴和使用劳动防护用品。</p><p>第五十条&nbsp; &nbsp; &nbsp; 从业人员应当接受安全生产教育和培训，掌握本职工作所需的安全生产知识，提高安全生产技能，增强事故预防和应急处理能力。</p><p>第五十一条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 从业人员发现事故隐患或者其他不安全因素，应当立即向现场安全生产管理人员或者本单位负责人报告；接到报告的人员应当及时予以处理。</p><p>第五十二条&nbsp; &nbsp; &nbsp; 工会有权对建设项目的安全设施与主体工程同时设计、同时施工、同时投入生产和使用进行监督，提出意见。工会对生产经营单位违反安全生产法律、法规，侵犯从业人员合法权益的行为，有权要求纠正；发现生产经营单位违章指挥、强令冒险作业或者发现事故隐患时，有权提出解决的建议，生产经营单位应当及时研究答复；发现危及从业人员生命安全的情况时，有权向生产经营单位建议组织从业人员撤离危险场所，生产经营单位必须立即作出处理。工会有权依法参加事故调查，向有关部门提出处理意见，并要求追究有关人员的责任。</p><p>第四章&nbsp; 安全生产的监督管理</p><p>第五十三条&nbsp; &nbsp; &nbsp;县级以上地方各级人民政府应当根据本行政区域内的安全生产状况，组织有关部门按照职责分工，对本行政区域内容易发生重大生产安全事故的生产经营单位进行严格检查；发现事故隐患，应当及时处理。</p><p>第五十四条&nbsp; &nbsp; &nbsp;依照本法第九条规定对安全生产负有监督管理职责的部门（以下统称负有安全生产监督管理职责的部门）依照有关法律、法规的规定，对涉及安全生产的事项需要审查批准（包括批准、核准、许可、注册、认证、颁发证照等，下同）或者验收的，必须严格依照有关法律、法规和国家标准或者行业标准规定的安全生产条件和程序进行审查；不符合有关法律、法规和国家标准或者行业标准规定的安全生产条件的，不得批准或者验收通过。对未依法取得批准或者验收合格的单位擅自从事有关活动的，负责行政审批的部门发现或者接到举报后应当立即予以取缔，并依法予以处理。对已经依法取得批准的单位，负责行政审批的部门发现其不再具备安全生产条件的，应当撤销原批准。</p><p>第五十五条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 负有安全生产监督管理职责的部门对涉及安全生产的事项进行审查、验收，不得收取费用；不得要求接受审查、验收的单位购买其指定品牌或者指定生产、销售单位的安全设备、器材或者其他产品。</p><p>第五十六条&nbsp; &nbsp; &nbsp;负有安全生产监督管理职责的部门依法对生产经营单位执行有关安全生产的法律、法规和国家标准或者行业标准的情况进行监督检查，行使以下职权：</p><p>(一) 进入生产经营单位进行检查，调阅有关资料，向有关单位和人员了解情况。</p><p>(二)&nbsp; &nbsp;对检查中发现的安全生产违法行为，当场予以纠正或者要求限期改正；对依法应当给予行政处罚的行为，依照本法和其他有关法律、行政法规的规定作出行政处罚决定。</p><p>(三)&nbsp; 对检查中发现的事故隐患，应当责令立即排除；重大事故隐患排除前或者排除过程中无法保证安全的，应当责令从危险区域内撤出作业人员，责令暂时停产停业或者停止使用；重大事故隐患排除后，经审查同意，方可恢复生产经营和使用。</p><p>(四)&nbsp; 对有根据认为不符合保障安全生产的国家标准或者行业标准的设施、设备、器材予以查封或者扣押，并应当在十五日内依法作出处理决定。监督检查不得影响被检查单位的正常生产经营活动。</p><p>第五十七条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位对负有安全生产监督管理职责的部门的监督检查人员（以下统称安全生产监督检查人员）依法履行监督检查职责，应当予以配合，不得拒绝、阻挠。</p><p>第五十八条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 安全生产监督检查人员应当忠于职守，坚持原则，秉公执法。安全生产监督检查人员执行监督检查任务时，必须出示有效的监督执法证件；对涉及被检查单位的技术秘密和业务秘密，应当为其保密。</p><p>第五十九条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 安全生产监督检查人员应当将检查的时间、地点、内容、发现的问题及其处理情况，作出书面记录，并由检查人员和被检查单位的负责人签字；被检查单位的负责人拒绝签字的，检查人员应当将情况记录在案，并向负有安全生产监督管理职责的部门报告。</p><p>第六十条&nbsp; &nbsp; &nbsp; 负有安全生产监督管理职责的部门在监督检查中，应当互相配合，实行联合检查；确需分别进行检查的，应当互通情况，发现存在的安全问题应当由其他有关部门进行处理的，应当及时移送其他有关部门并形成记录备查，接受移送的部门应当及时进行处理。</p><p>第六十一条&nbsp; &nbsp; 监察机关依照行政监察法的规定，对负有安全生产监督管理职责的部门及其工作人员履行安全生产监督管理职责实施监察。</p><p>第六十二条&nbsp; &nbsp; &nbsp;承担安全评价、认证、检测、检验的机构应当具备国家规定的资质条件，并对其作出的安全评价、认证、检测、检验的结果负责。</p><p>第六十三条&nbsp; &nbsp; &nbsp;负有安全生产监督管理职责的部门应当建立举报制度，公开举报电话、信箱或者电子邮件地址，受理有关安全生产的举报；受理的举报事项经调查核实后，应当形成书面材料；需要落实整改措施的，报经有关负责人签字并督促落实。</p><p>第六十四条&nbsp; &nbsp; &nbsp;任何单位或者个人对事故隐患或者安全生产违法行为，均有权向负有安全生产监督管理职责的部门报告或者举报。</p><p>第六十五条&nbsp; &nbsp; &nbsp;居民委员会、村民委员会发现其所在区域内的生产经营单位存在事故隐患或者安全生产违法行为时，应当向当地人民政府或者有关部门报告。</p><p>第六十六条&nbsp; &nbsp; &nbsp;县级以上各级人民政府及其有关部门对报告重大事故隐患或者举报安全生产违法行为的有功人员，给予奖励。具体奖励办法由国务院负责安全生产监督管理的部门会同国务院财政部门制定。</p><p>第六十七条&nbsp; &nbsp; &nbsp; 新闻、出版、广播、电影、电视等单位有进行安全生产宣传教育的义务，有对违反安全生产法律、法规的行为进行舆论监督的权利。</p><p>第五章&nbsp; 生产安全事故的应急救援与调查处理</p><p>第六十八条&nbsp; &nbsp; &nbsp;县级以上地方各级人民政府应当组织有关部门制定本行政区域内特大生产安全事故应急救援预案，建立应急救援体系。</p><p>第六十九条&nbsp; &nbsp; &nbsp; 危险物品的生产、经营、储存单位以及矿山、建筑施工单位应当建立应急救援组织；生产经营规模较小，可以不建立应急救援组织的，应当指定兼职的应急救援人员。危险物品的生产、经营、储存单位以及矿山、建筑施工单位应当配备必要的应急救援器材、设备，并进行经常性维护、保养，保证正常运转。</p><p>第七十条&nbsp; &nbsp; &nbsp; 生产经营单位发生生产安全事故后，事故现场有关人员应当立即报告本单位负责人。单位负责人接到事故报告后，应当迅速采取有效措施，组织抢救，防止事故扩大，减少人员伤亡和财产损失，并按照国家有关规定立即如实报告当地负有安全生产监督管理职责的部门，不得隐瞒不报、谎报或者拖延不报，不得故意破坏事故现场、毁灭有关证据。</p><p>第七十一条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 负有安全生产监督管理职责的部门接到事故报告后，应当立即按照国家有关规定上报事故情况。负有安全生产监督管理职责的部门和有关地方人民政府对事故情况不得隐瞒不报、谎报或者拖延不报。</p><p>第七十二条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 有关地方人民政府和负有安全生产监督管理职责的部门的负责人接到重大生产安全事故报告后，应当立即赶到事故现场，组织事故抢救。任何单位和个人都应当支持、配合事故抢救，并提供一切便利条件。</p><p>第七十三条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 事故调查处理应当按照实事求是、尊重科学的原则，及时、准确地查清事故原因，查明事故性质和责任，总结事故教训，提出整改措施，并对事故责任者提出处理意见。事故调查和处理的具体办法由国务院制定。</p><p>第七十四条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位发生生产安全事故，经调查确定为责任事故的，除了应当查明事故单位的责任并依法予以追究外，还应当查明对安全生产的有关事项负有审查批准和监督职责的行政部门的责任，对有失职、渎职行为的，依照本法第七十七条的规定追究法律责任。</p><p>第七十五条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 任何单位和个人不得阻挠和干涉对事故的依法调查处理。</p><p>第七十六条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 县级以上地方各级人民政府负责安全生产监督管理的部门应当定期统计分析本行政区域内发生生产安全事故的情况，并定期向社会公布。</p><p>第六章&nbsp; 法律责任</p><p>第七十七条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 负有安全生产监督管理职责的部门的工作人员，有下列行为之一的，给予降级或者撤职的行政处分；构成犯罪的，依照刑法有关规定追究刑事责任：</p><p>(一)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 对不符合法定安全生产条件的涉及安全生产的事项予以批准或者验收通过的；</p><p>(二)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 发现未依法取得批准、验收的单位擅自从事有关活动或者接到举报后不予取缔或者不依法予以处理的；</p><p>(三)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 对已经依法取得批准的单位不履行监督管理职责，发现其不再具备安全生产条件而不撤销原批准或者发现安全生产违法行为不予查处的。</p><p>第七十八条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 负有安全生产监督管理职责的部门，要求被审查、验收的单位购买其指定的安全设备、器材或者其他产品的，在对安全生产事项的审查、验收中收取费用的，由其上级机关或者监察机关责令改正，责令退还收取的费用；情节严重的，对直接负责的主管人员和其他直接责任人员依法给予行政处分。</p><p>第七十九条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 承担安全评价、认证、检测、检验工作的机构，出具虚假证明，构成犯罪的，依照刑法有关规定追究刑事责任；尚不够刑事处罚的，没收违法所得，违法所得在五千元以上的，并处违法所得二倍以上五倍以下的罚款，没有违法所得或者违法所得不足五千元的，单处或者并处五千元以上二万元以下的罚款，对其直接负责的主管人员和其他直接责任人员处五千元以上五万元以下的罚款；给他人造成损害的，与生产经营单位承担连带赔偿责任。对有前款违法行为的机构，撤销其相应资格。</p><p>第八十条&nbsp; &nbsp; &nbsp; 生产经营单位的决策机构、主要负责人、个人经营的投资人不依照本法规定保证安全生产所必需的资金投入，致使生产经营单位不具备安全生产条件的，责令限期改正，提供必需的资金；逾期未改正的，责令生产经营单位停产停业整顿。有前款违法行为，导致发生生产安全事故，构成犯罪的，依照刑法有关规定追究刑事责任；尚不够刑事处罚的，对生产经营单位的主要负责人给予撤职处分，对个人经营的投资人处二万元以上二十万元以下的罚款。</p><p>第八十一条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位的主要负责人未履行本法规定的安全生产管理职责的，责令限期改正；逾期未改正的，责令生产经营单位停产停业整顿。生产经营单位的主要负责人有前款违法行为，导致发生生产安全事故，构成犯罪的，依照刑法有关规定追究刑事责任；尚不够刑事处罚的，给予撤职处分或者处二万元以上二十万元以下的罚款。生产经营单位的主要负责人依照前款规定受刑事处罚或者撤职处分的，自刑罚执行完毕或者受处分之日起，五年内不得担任任何生产经营单位的主要负责人。</p><p>第八十二条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位有下列行为之一的，责令限期改正；逾期未改正的，责令停产停业整顿，可以并处二万元以下的罚款：</p><p>(一)&nbsp; 未按照规定设立安全生产管理机构或者配备安全生产管理人员的；</p><p>(二)&nbsp; 危险物品的生产、经营、储存单位以及矿山、建筑施工单位的主要负责人和安全生产管理人员未按照规定经考核合格的；</p><p>(三)&nbsp; 未按照本法第二十一条、第二十二条的规定对从业人员进行安全生产教育和培训，或者未按照本法第三十六条的规定如实告知从业人员有关的安全生产事项的；</p><p>(四) 特种作业人员未按照规定经专门的安全作业培训并取得特种作业操作资格证书，上岗作业的。</p><p>第八十三条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位有下列行为之一的，责令限期改正；逾期未改正的，责令停止建设或者停产停业整顿，可以并处五万元以下的罚款；造成严重后果，构成犯罪的，依照刑法有关规定追究刑事责任：</p><p>(一)&nbsp; 矿山建设项目或者用于生产、储存危险物品的建设项目没有安全设施设计或者安全设施设计未按照规定报经有关部门审查同意的；</p><p>(二)矿山建设项目或者用于生产、储存危险物品的建设项目的施工单位未按照批准的安全设施设计施工的；</p><p>(三)&nbsp; &nbsp;矿山建设项目或者用于生产、储存危险物品的建设项目竣工投入生产或者使用前，安全设施未经验收合格的；</p><p>(四)&nbsp; 未在有较大危险因素的生产经营场所和有关设施、设备上设置明显的安全警示标志的；安全设备的安装、使用、检测、改造和报废不符合国家标准或者行业标准的；</p><p>(五)&nbsp; 未对安全设备进行经常性维护、保养和定期检测的；</p><p>(六)&nbsp; 未为从业人员提供符合国家标准或者行业标准的劳动防护用品的；</p><p>(七)&nbsp; 特种设备以及危险物品的容器、运输工具未经取得专业资质的机构检测、检验合格，取得安全使用证或者安全标志，投入使用的；</p><p>(八)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;使用国家明令淘汰、禁止使用的危及生产安全的工艺、设备的。</p><p>第八十四条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 未经依法批准，擅自生产、经营、储存危险物品的，责令停止违法行为或者予以关闭，没收违法所得，违法所得十万元以上的，并处违法所得一倍以上五倍以下的罚款，没有违法所得或者违法所得不足十万元的，单处或者并处二万元以上十万元以下的罚款；造成严重后果，构成犯罪的，依照刑法有关规定追究刑事责任。</p><p>第八十五条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;生产经营单位有下列行为之一的，责令限期改正；逾期未改正的，责令停产停业整顿，可以并处二万元以上十万元以下的罚款；造成严重后果，构成犯罪的，依照刑法有关规定追究刑事责任：</p><p>(一)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;生产、经营、储存、使用危险物品，未建立专门安全管理制度、未采取可靠的安全措施或者不接受有关主管部门依法实施的监督管理的；</p><p>(二)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;对重大危险源未登记建档，或者未进行评估、监控，或者未制定应急预案的；</p><p>(三)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;进行爆破、吊装等危险作业，未安排专门管理人员进行现场安全管理的。</p><p>第八十六条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位将生产经营项目、场所、设备发包或者出租给不具备安全生产条件或者相应资质的单位或者个人的，责令限期改正，没收违法所得；违法所得五万元以上的，并处违法所得一倍以上五倍以下的罚款；没有违法所得或者违法所得不足五万元的，单处或者并处一万元以上五万元以下的罚款；导致发生生产安全事故给他人造成损害的，与承包方、承租方承担连带赔偿责任。生产经营单位未与承包单位、承租单位签订专门的安全生产管理协议或者未在承包合同、租赁合同中明确各自的安全生产管理职责，或者未对承包单位、承租单位的安全生产统一协调、管理的，责令限期改正；逾期未改正的，责令停产停业整顿。</p><p>第八十七条&nbsp; &nbsp;两个以上生产经营单位在同一作业区域内进行可能危及对方安全生产的生产经营活动，未签订安全生产管理协议或者未指定专职安全生产管理人员进行安全检查与协调的，责令限期改正；逾期未改正的，责令停产停业。</p><p>第八十八条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位有下列行为之一的，责令限期改正；逾期未改正的，责令停产停业整顿；造成严重后果，构成犯罪的，依照刑法有关规定追究刑事责任：</p><p>(一)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;生产、经营、储存、使用危险物品的车间、商店、仓库与员工宿舍在同一座建筑内，或者与员工宿舍的距离不符合安全要求的；</p><p>(二)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;生产经营场所和员工宿舍未设有符合紧急疏散需要、标志明显、保持畅通的出口，或者封闭、堵塞生产经营场所或者员工宿舍出口的。</p><p>第八十九条&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 生产经营单位与从业人员订立协议，免除或者减轻其对从业人员因生产安全事故伤亡依法应承担的责任的，该协议无效；对生产经营单位的主要负责人、个人经营的投资人处二万元以上十万元以下的罚款。</p><p>第九十条&nbsp; &nbsp; &nbsp; 生产经营单位的从业人员不服从管理，违反安全生产规章制度或者操作规程的，由生产经营单位给予批评教育，依照有关规章制度给予处分；造成重大事故，构成犯罪的，依照刑法有关规定追究刑事责任。</p><p>第九十一条&nbsp; 生产经营单位主要负责人在本单位发生重大生产安全事故时，不立即组织抢救或者在事故调查处理期间擅离职守或者逃匿的，给予降职、撤职的处分，对逃匿的处十五日以下拘留；构成犯罪的，依照刑法有关规定追究刑事责任。生产经营单位主要负责人对生产安全事故隐瞒不报、谎报或者拖延不报的，依照前款规定处罚。</p><p>第九十二条&nbsp; &nbsp;有关地方人民政府、负有安全生产监督管理职责的部门，对生产安全事故隐瞒不报、谎报或者拖延不报的，对直接负责的主管人员和其他直接责任人员依法给予行政处分；构成犯罪的，依照刑法有关规定追究刑事责任。</p><p>第九十三条&nbsp; &nbsp;生产经营单位不具备本法和其他有关法律、行政法规和国家标准或者行业标准规定的安全生产条件，经停产停业整顿仍不具备安全生产条件的，予以关闭；有关部门应当依法吊销其有关证照。</p><p>第九十四条&nbsp; 本法规定的行政处罚，由负责安全生产监督管理的部门决定；予以关闭的行政处罚由负责安全生产监督管理的部门报请县级以上人民政府按照国务院规定的权限决定；给予拘留的行政处罚由公安机关依照治安管理处罚条例的规定决定。有关法律、行政法规对行政处罚的决定机关另有规定的，依照其规定。</p><p>第九十五条&nbsp; &nbsp; 生产经营单位发生生产安全事故造成人员伤亡、他人财产损失的，应当依法承担赔偿责任；拒不承担或者其负责人逃匿的，由人民法院依法强制执行。生产安全事故的责任人未依法承担赔偿责任，经人民法院依法采取执行措施后，仍不能对受害人给予足额赔偿的，应当继续履行赔偿义务；受害人发现责任人有其他财产的，可以随时请求人民法院执行。</p><p>第七章&nbsp; 附 则</p><p>第九十六条&nbsp; &nbsp; 本法下列用语的含义： 危险物品，是指易燃易爆物品、危险化学品、放射性物品等能够危及人身安全和财产安全的物品。重大危险源，是指长期地或者临时地生产、搬运、使用或者储存危险物品，且危险物品的数量等于或者超过临界量的单元（包括场所和设施）。</p><p>第九十七条&nbsp; &nbsp; &nbsp;本法自２００２年１１月１日起施行。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7900961194 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (48, 1, 1, 53, N'', N'中华人民共和国节约能源法', N'', N'', N'', N'', N'', N'中华人民共和国节约能源法', N'《中华人民共和国节约能源法》已由中华人民共和国第八届全国人民代表大会常务委员会第二十八次会议于１９９７年１１月１日通过，现予公布，自１９９８年１月１日起施行', N'<p><strong>中华人民共和国主席令（第９０号）</strong><br/></p><p>《中华人民共和国节约能源法》已由中华人民共和国第八届全国人民代表大会常务委员会第二十八次会议于１９９７年１１月１日通过，现予公布，自１９９８年１月１日起施行。</p><p>中华人民共和国主席江泽民</p><p>１９９７年１１月１日</p><p>（１９９７年１１月１日第八届全国人民代表大会常务委员会第二十八次会议通过）</p><p>&nbsp;</p><p><strong>目录</strong></p><p><strong>第一章</strong> 总则</p><p>第二章 节能管理</p><p>第三章 合理使用能源</p><p>第四章 节能技术进步</p><p>第五章 法律责任</p><p>第六章 附则</p><p>第一章 总则</p><p>第一条 为了推进全社会节约能源，提高能源利用效率和经济效益，保护环境，保障国民经济和社会的发展，满足人民生活需要，制定本法。</p><p>第二条 本法所称能源，是指煤炭、原油、天然气、电力、焦炭、煤气、热力、成品油、液化石油气、生物质能和其他直接或者通过加工、转换而取得有用能的各种资源。</p><p>第三条 本法所称节能，是指加强用能管理，采取技术上可行、经济上合理以及环境和社会可以承受的措施，减少从能源生产到消费各个环节中的损失和浪费，更加有效、合理地利用能源。</p><p>第四条 节能是国家发展经济的一项长远战略方针。</p><p>国务院和省、自治区、直辖市人民政府应当加强节能工作，合理调整产业结构、企业结构、产品结构和能源消费结构，推进节能技术进步，降低单位产值能耗和单位产品能耗，改善能源的开发、加工转换、输送和供应，逐步提高能源利用效率，促进国民经济向节能型发展。国家鼓励开发、利用新能源和可再生能源。</p><p>第五条 国家制定节能政策，编制节能计划，并纳入国民经济和社会发展计划，保障能源的合理利用，并与经济发展、环境保护相协调。</p><p>第六条 国家鼓励、支持节能科学技术的研究和推广，加强节能宣传和教育，普及节能科学知识，增强全民的节能意识。</p><p>第七条 任何单位和个人都应当履行节能义务，有权检举浪费能源的行为。各级人民政府对在节能或者节能科学技术研究、推广中有显著成绩的单位和个人给予奖励。</p><p>第八条 国务院管理节能工作的部门主管全国的节能监督管理工作。国务院有关部门在各自的职责范围内负责节能监督管理工作。县级以上地方人民政府管理节能工作的部门主管本行政区域内的节能监督管理工作。县级以上地方人民政府有关部门在各自的职责范围内负责节能监督管理工作。</p><p>第二章 节能管理</p><p>第九条 国务院和地方各级人民政府应当加强对节能工作的领导，每年部署、协调、监督、检查、推动节能工作。</p><p>第十条 国务院和省、自治区、直辖市人民政府应当根据能源节约与能源开发并举，把能源节约放在首位的方针，在对能源节约与能源开发进行技术、经济和环境比较论证的基础上，择优选定能源节约、能源开发投资项目，制定能源投资计划。</p><p>第十一条 国务院和省、自治区、直辖市人民政府应当在基本建设、技术改造资金中安排节能资金，用于支持能源的合理利用以及新能源和可再生能源的开发。市、县人民政府根据实际情况安排节能资金，用于支持能源的合理利用以及新能源和可再生能源的开发。</p><p>第十二条 固定资产投资工程项目的可行性研究报告，应当包括合理用能的专题论证。固定资产投资工程项目的设计和建设，应当遵守合理用能标准和节能设计规范。达不到合理用能标准和节能设计规范要求的项目，依法审批的机关不得批准建设；项目建成后，达不到合理用能标准和节能设计规范要求的，不予验收。</p><p>第十三条 禁止新建技术落后、耗能过高、严重浪费能源的工业项目。禁止新建的耗能过高的工业项目的名录和具体实施办法，由国务院管理节能工作的部门会同国务院有关部门制定。</p><p>第十四条 国务院标准化行政主管部门制定有关节能的国家标准。</p><p>对没有前款规定的国家标准的，国务院有关部门可以依法制定有关节能的行业标准，并报国务院标准化行政主管部门备案。</p><p>制定有关节能的标准应当做到技术上先进，经济上合理，并不断加以完善和改进。</p><p>第十五条 国务院管理节能工作的部门应当会同国务院有关部门对生产量大面广的用能产品的行业加强监督，督促其采取节能措施，努力提高产品的设计和制造技术，逐步降低本行业的单位产品能耗。</p><p>第十六条 省级以上人民政府管理节能工作的部门，应当会同同级有关部门，对生产过程中耗能较高的产品制定单位产品能耗限额。</p><p>制定单位产品能耗限额应当科学、合理。</p><p>第十七条 国家对落后的耗能过高的用能产品、设备实行淘汰制度。</p><p>淘汰的耗能过高的用能产品、设备的名录由国务院管理节能工作的部门会同国务院有关部门确定并公布。具体实施办法由国务院管理节能工作的部门会同国务院有关部门制定。</p><p>第十八条 企业可以根据自愿原则，按照国家有关产品质量认证的规定，向国务院产品质量监督管理部门或者国务院产品质量监督管理部门授权的部门认可的认证机构提出用能产品节能质量认证申请；经认证合格后，取得节能质量认证证书，在用能产品或者其包装上使用节能质量认证标志。</p><p>第十九条 县级以上各级人民政府统计机构应当会同同级有关部门，做好能源消费和利用状况的统计工作，并定期发布公报，公布主要耗能产品的单位产品能耗等状况。</p><p>第二十条 国家对重点用能单位要加强节能管理。</p><p>下列用能单位为重点用能单位：</p><p>（一）年综合能源消费总量１万吨标准煤以上的用能单位；</p><p>（二）国务院有关部门或者省、自治区、直辖市人民政府管理节能工作的部门指定的年综合能源消费总量５０００吨以上不满1万吨标准煤的用能单位。</p><p>县级以上各级人民政府管理节能工作的部门应当组织有关部门对重点用能单位的能源利用状况进行监督检查，可以委托具有检验测试技术条件的单位依法进行节能的检验测试。</p><p>重点用能单位的节能要求、节能措施和管理办法，由国务院管理节能工作的部门会同国务院有关部门制定。</p><p>第三章 合理使用能源</p><p>第二十一条 用能单位应当按照合理用能的原则，加强节能管理，制定并组织实施本单位的节能技术措施，降低能耗。</p><p>用能单位应当开展节能教育，组织有关人员参加节能培训。</p><p>未经节能教育、培训的人员，不得在耗能设备操作岗位上工作。</p><p>第二十二条 用能单位应当加强能源计量管理，健全能源消费统计和能源利用状况分析制度。</p><p>第二十三条 用能单位应当建立节能工作责任制，对节能工作取得成绩的集体、个人给予奖励。</p><p>第二十四条 生产耗能较高的产品的单位，应当遵守依法制定的单位产品能耗限额。</p><p>超过单位产品能耗限额用能，情节严重的，限期治理。限期治理由县级以上人民政府管理节能工作的部门按照国务院规定的权限决定。</p><p>第二十五条 生产、销售用能产品和使用用能设备的单位和个人，必须在国务院管理节能工作的部门会同国务院有关部门规定的期限内，停止生产、销售国家明令淘汰的用能产品，停止使用国家明令淘汰的用能设备，并不得将淘汰的设备转让给他人使用。</p><p>第二十六条 生产用能产品的单位和个人，应当在产品说明书和产品标识上如实注明能耗指标。</p><p>第二十七条 生产用能产品的单位和个人，不得使用伪造的节能质量认证标志或者冒用节能质量认证标志。</p><p>第二十八条 重点用能单位应当按照国家有关规定定期报送能源利用状况报告。能源利用状况包括能源消费情况、用能效率和节能效益分析、节能措施等内容。</p><p>第二十九条 重点用能单位应当设立能源管理岗位，在具有节能专业知识、实际经验以及工程师以上技术职称的人员中聘任能源管理人员，并向县级以上人民政府管理节能工作的部门和有关部门备案。</p><p>能源管理人员负责对本单位的能源利用状况进行监督、检查。</p><p>第三十条 单位职工和其他城乡居民使用企业生产的电、煤气、天然气、煤等能源应当按照国家规定计量和交费，不得无偿使用或者实行包费制。</p><p>第三十一条 能源生产经营单位应当依照法律、法规的规定和合同的约定向用能单位提供能源。</p><p>第四章 节能技术进步</p><p>第三十二条 国家鼓励、支持开发先进节能技术，确定开发先进节能技术的重点和方向,建立和完善节能技术服务体系，培育和规范节能技术市场。</p><p>第三十三条 国家组织实施重大节能科研项目、节能示范工程，提出节能推广项目，引导企业事业单位和个人采用先进的节能工艺、技术、设备和材料。</p><p>国家制定优惠政策，对节能示范工程和节能推广项目给予支持。</p><p>第三十四条 国家鼓励引进境外先进的节能技术和设备，禁止引进境外落后的用能技术、设备和材料。</p><p>第三十五条 在国务院和省、自治区、直辖市人民政府安排的科学研究资金中应当安排节能资金，用于先进节能技术研究。</p><p>第三十六条 县级以上各级人民政府应当组织有关部门根据国家产业政策和节能技术政策，推动符合节能要求的科学、合理的专业化生产。</p><p>第三十七条 建筑物的设计和建造应当依照有关法律、行政法规的规定，采用节能型的建筑结构、材料、器具和产品，提高保温隔热性能，减少采暖、制冷、照明的能耗。</p><p>第三十八条 各级人民政府应当按照因地制宜、多能互补、综合利用、讲求效益的方针，加强农村能源建设，开发、利用沼气、太阳能、风能、水能、地热等可再生能源和新能源。</p><p>第三十九条 国家鼓励发展下列通用节能技术：</p><p>（一）推广热电联产、集中供热，提高热电机组的利用率，发展热能梯级利用技术，热、电、冷联产技术和热、电、煤气三联供技术，提高热能综合利用率；</p><p>（二）逐步实现电动机、风机、泵类设备和系统的经济运行，发展电机调速节电和电力电子节电技术，开发、生产、推广质优、价廉的节能器材，提高电能利用效率；</p><p>（三）发展和推广适合国内煤种的流化床燃烧、无烟燃烧和气化、液化等洁净煤技术，提高煤炭利用效率；</p><p>（四）发展和推广其他在节能工作中证明技术成熟、效益显著的通用节能技术。</p><p>第四十条 各行业应当制定行业节能技术政策，发展、推广节能新技术、新工艺、新设备和新材料，限制或者淘汰能耗高的老旧技术、工艺、设备和材料。</p><p>第四十一条 国务院管理节能工作的部门应当会同国务院有关部门规定通用的和分行业的具体的节能技术指标、要求和措施，并根据经济和节能技术的发展情况适时修订，提高能源利用效率，降低能源消耗，使我国能源利用状况逐步赶上国际先进水平。</p><p>第五章 法律责任</p><p>第四十二条 违反本法第十三条规定，新建国家明令禁止新建的高耗能工业项目的，由县级以上人民政府管理节能工作的部门提出意见，报请同级人民政府按照国务院规定的权限责令停止投入生产或者停止使用。</p><p>第四十三条 生产耗能较高的产品的单位，违反本法第二十四条规定，超过单位产品能耗限额用能，情节严重，经限期治理逾期不治理或者没有达到治理要求的，可以由县级以上人民政府管理节能工作的部门提出意见，报请同级人民政府按照国务院规定的权限责令停业整顿或者关闭。</p><p>第四十四条 违反本法第二十五条规定，生产、销售国家明令淘汰的用能产品的，由县级以上人民政府管理产品质量监督工作的部门责令停止生产、销售国家明令淘汰的用能产品，没收违法生产、销售的国家明令淘汰的用能产品和违法所得，并处违法所得一倍以上五倍以下的罚款；可以由县级以上人民政府工商行政管理部门吊销营业执照。</p><p>第四十五条 违反本法第二十五条规定，使用国家明令淘汰的用能设备的，由县级以上人民政府管理节能工作的部门责令停止使用，没收国家明令淘汰的用能设备；情节严重的，县级以上人民政府管理节能工作的部门可以提出意见，报请同级人民政府按照国务院规定的权限责令停业整顿或者关闭。</p><p>第四十六条 违反本法第二十五条规定，将淘汰的用能设备转让他人使用的，由县级以上人民政府管理产品质量监督工作的部门没收违法所得，并处违法所得一倍以上五倍以下的罚款。</p><p>第四十七条 违反本法第二十六条规定，未在产品说明书和产品标识上注明能耗指标的，由县级以上人民政府管理产品质量监督工作的部门责令限期改正，可以处5万元以下的罚款。</p><p>违反本法第二十六条规定，在产品说明书和产品标识上注明的能耗指标不符合产品的实际情况的，除依照前款规定处罚外，依照有关法律的规定承担民事责任。</p><p>第四十八条 违反本法第二十七条规定，使用伪造的节能质量认证标志或者冒用节能质量认证标志的，由县级以上人民政府管理产品质量监督工作的部门责令公开改正，没收违法所得，可以并处违法所得一倍以上五倍以下的罚款。</p><p>第四十九条 国家工作人员在节能工作中滥用职权、玩忽职守、徇私舞弊，构成犯罪的，依法追究刑事责任；尚不构成犯罪的，给予行政处分。</p><p>第六章 附则</p><p>第五十条 本法自１９９８年１月１日起施行</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7E0097449C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (49, 1, 1, 56, N'', N'芳村2万户居民率先用上管道天然气', N'', N'', N'', N'', N'', N'芳村2万户居民率先用上管道天然气', N'芳村2万管道燃气用户在广州全市率先用上清洁、安全、价廉的管道LNG（液化天然气）。昨日，负责芳村区域管道燃气供应的广州金冠燃气技术开发有限公司宣布，芳村的区域燃气管网从原先供应的代天然气成功转换为供应LNG', N'<p>芳村2万管道燃气用户在广州全市率先用上清洁、安全、价廉的管道LNG（液化天然气）。昨日，负责芳村区域管道燃气供应的广州金冠燃气技术开发有限公司宣布，芳村的区域燃气管网从原先供应的代天然气成功转换为供应LNG。<br/></p><p><strong>一、转换气源燃气具无需更换</strong></p><p>&nbsp; &nbsp; 城市燃气气源向天然气转换是广州城市燃气的发展方向。在广州市有关部门和广钢集团公司的支持下，已基本覆盖芳村区域主要居民区、拥有2万用户的金冠燃气公司在白鹤洞新建了一座可供民用6万户的LNG气化站，在经有关部门验收合格后交付使用。</p><p>&nbsp; &nbsp; 因为芳村用户原先用的代天然气与现在用的LNG燃烧特性相近，在国家级的权威检测中心检测及专家论证后，芳村原先供应代天然气的整个管网系统及用户所使用的代天然气燃气具都可以安全地直接换用LNG。因此，芳村用户无需负担任何改装费用，转换气源时，用户在家正常用气，毫无影响。</p><p><strong>二、用气费降两成平过瓶装气</strong></p><p>　　据悉，芳村用户原来使用的代天然气是液化石油气和氮气的综合体，热值为50MJ/立方米，而现在使用的LNG热值为40MJ/立方米。虽然热值有所降低，但“不影响居民煲汤的时间”，原来，供气商调整了气流量，在热值略低的情况下提高气流量，也就是说，用气量有所增加，烧饭做菜的时间跟以往相比没有什么区别。</p><p>　　同时，随着热值的降低，广州市物价局对芳村LNG的定价也下降了很多，以居民用户为例，过去每立方米气价为6.94元，而现在降到4.25元/立方米。经综合测算，芳村用户的气费支出（同等热值相比）比原来使用代天然气或者使用瓶装液化石油气（以85元/瓶为例）降低20％。</p><p>　　对于气价下浮如此之多，金冠燃气有关负责人解释道，芳村使用的LNG成本比原先以液化石油气为主的代天然气成本低，主要是因为芳村的LNG是从新疆引入的，其中的运输成本远低于液化石油气，</p><p>　　有关人士透露，未来等广州行政区域开始用LNG后，芳村这一区域管道燃气的LNG管网将在珠江大桥一带与广州市煤气公司的广州行政区域LNG管网接轨、并网。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7900981660 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (50, 1, 1, 56, N'', N'市物价局调整广州市区域性管道燃气销售价格', N'', N'', N'', N'', N'', N'市物价局调整广州市区域性管道燃气销售价格', N'市物价局调低广州市煤气公司、金冠燃气和国威管道燃气区域性管道燃气销售价格', N'<p>市物价局调低广州市煤气公司、金冠燃气和国威管道燃气区域性管道燃气销售价格。</p><p>鉴于近期原料进货成本不断下降，市物价局经测算后调低了广州市煤气公司、广州市金冠燃气技术开发有限公司和广州市国威管道燃气发展有限公司的的区域性管道燃气销售价格。</p><p>其中，市煤气公司和国威管道燃气供应的区域性管道液化石油气居民用户销售价格调低到16.50元/立方米，其他用户销售价格调低到18.50元/立方米；市煤气公司供应的区域性管道代天然气居民用户销售价格调低到5元/立方米，其他用户销售价格调低到6元/立方米；金冠燃气供应的区域性管道天然气居民用户销售价格调低到4.35元/立方米，其他用户销售价格调低到4.83元/立方米。（调价前后价格对比见下表）&nbsp;&nbsp;</p><table cellspacing="0" width="555"><tbody><tr style="height:75px" class="firstRow"><td width="121" valign="center" rowspan="2" style="padding: 0px; border-width: 1px; border-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">燃气类型</span></strong></p></td><td width="154" valign="center" colspan="2" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top-width: 1px; border-top-color: windowtext; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">调价前价格</span></strong></p><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">（元/立方米）</span></strong></p></td><td width="189" valign="center" colspan="2" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top-width: 1px; border-top-color: windowtext; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">调价后价格</span></strong></p><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">（元/立方米）</span></strong></p></td><td width="92" valign="center" rowspan="2" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top-width: 1px; border-top-color: windowtext; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">供应公司</span></strong></p></td></tr><tr style="height:80px"><td width="68" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">居民用户</span></strong></p></td><td width="86" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">其他用户</span></strong></p></td><td width="55" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">居民用户</span></strong></p></td><td width="134" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><strong><span style="font-family: 微软雅黑;color: rgb(51, 51, 51);font-size: 16px">其他用户</span></strong></p></td></tr><tr><td width="121" valign="center" style="padding: 0px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">区域性管道液化石油气</span></p></td><td width="68" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">18</span></p></td><td width="86" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">20</span></p></td><td width="55" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">16.5</span></p></td><td width="134" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">18.5</span></p></td><td width="92" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">广州市煤气公司</span></p><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">广州市国威管道燃气发展有限公司</span></p></td></tr><tr><td width="121" valign="center" style="padding: 0px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">区域性管道代天然气</span></p></td><td width="68" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style="font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">6</span></p></td><td width="86" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style="font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">7</span></p></td><td width="55" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style="font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">5</span></p></td><td width="134" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style="font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">6</span></p></td><td width="92" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">广州市煤气公司</span></p></td></tr><tr><td width="121" valign="center" style="padding: 0px; border-left-width: 1px; border-left-color: windowtext; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">区域性管道天然气</span></p></td><td width="68" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">4.63</span></p></td><td width="86" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">5.14</span></p></td><td width="55" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">4.35</span></p></td><td width="134" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">4.83</span></p></td><td width="92" valign="center" style="padding: 0px; border-left: none; border-right-width: 1px; border-right-color: windowtext; border-top: none; border-bottom-width: 1px; border-bottom-color: windowtext;"><p style="margin-top:7px;margin-right:0;margin-bottom:7px;margin-left:0;margin-top:auto;margin-bottom:auto;text-align:center;line-height:32px"><span style=";font-family:微软雅黑;color:rgb(51,51,51);font-size:16px">广州金冠燃气技术开发有限公司</span></p></td></tr></tbody></table><p>（以上调整价格按2009年4月3日起实际用气量计收。）</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A8B700992064 AS DateTime), CAST(0x0000AA81009D0C8D AS DateTime))
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (51, 1, 1, 56, N'', N'为了热烈庆祝金冠燃气公司燃气商品专卖场隆重开业！', N'', N'', N'', N'', N'', N'为了热烈庆祝金冠燃气公司燃气商品专卖场隆重开业！', N'凡在本燃气专卖场购买的天然气或液化气专用炉具、热水器等燃气具商品，以及配套销售的油烟机、消毒碗柜等，均由我公司确保所有的商品均具有燃气具安全入网许可（检测）证书！', N'<p><strong>金冠燃气公司向广大消费者郑重承诺：</strong></p><p>1、 凡在本燃气专卖场购买的天然气或液化气专用炉具、热水器等燃气具商品，以及配套销售的油烟机、消毒碗柜等，均由我公司确保所有的商品均具有燃气具安全入网许可（检测）证书！并对芳村地区的消费者提供免费送货上门和安装调试（不含非随机的配件）服务，非芳村地区的消费者将由我公司负责安排厂家直接送货和安装调试。</p><p>2、我公司确保所有的商品均为厂家直销价，买贵者可退还差价！（注：与广州地区大型商场的同时段标准挂牌价相比，采用临时特价的除外）。七天内质量问题无条件退货。</p><p>3、本公司的管道燃气用户可以凭我公司委托邮局印发的明信片作为会员卡，在我公司专卖场购买商品时请出示会员卡，即可享有九八折的会员价（配件及临时特价的商品除外）。</p><p>4、我公司将为所有用户建立客户服务的档案，提供长期的质量跟踪和上门服务等，免去用户面对多个厂家品牌的售后质量和维修服务等烦恼，真正实现“一个电话到金冠、一切问题均解决”的优质服务的目标！</p><p>5、本燃气专卖场专营以下五大品牌的天然气及液化气燃气专用产品及配件：万和、美的、创尔特、樱雪和雅琴等品牌，欢迎广大消费者前来购买。</p><p><img src="/upload/201907/05/201907050936470246.png" title="tx.png" alt="tx.png"/></p><p><br/></p><p>燃气专卖场（客户服务中心）地址：浣花路109号8012室（东鹏德宝商务中心一楼）</p><p>专卖场营业（客户服务）时间：上午9：00～12：00&nbsp; &nbsp; 下午：13：30～17：30</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA70009B4024 AS DateTime), CAST(0x0000AA81009EC4EC AS DateTime))
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (52, 1, 1, 56, N'', N'广州市区域性管道燃气实行政府定价', N'', N'', N'', N'', N'', N'广州市区域性管道燃气实行政府定价', N'9月5日，广州市物价局下发《关于我市区域性管道燃气价格管理有关问题的通知》(以下简称《通知》)，明确规定当CP报价(国际市场合同价格)或广州石化挂牌价等上游端连续10日的平均价格上下浮动超过10%时，区域性管道燃气经营企业可向物价部门提出调价申请，但每两次气价调整…', N'<p>9月5日，广州市物价局下发《关于我市区域性管道燃气价格管理有关问题的通知》(以下简称《通知》)，明确规定当CP报价(国际市场合同价格)或广州石化挂牌价等上游端连续10日的平均价格上下浮动超过10%时，区域性管道燃气经营企业可向物价部门提出调价申请，但每两次气价调整的时间间隔不得少于3个月。&nbsp;&nbsp;</p><p>一、区域性管道燃气实行政府定价&nbsp;&nbsp;</p><p>　　市物价局9月5日在下发《通知》的同时废止了去年颁布的已试行一年期满的管道气管理旧规。市物价局进一步明确，区域性管道燃气是指除广州市油制管道气管网以外由合法经营主体在一定区域内经营的管道燃气，实行政府定价。市物价局直接审批老八区的区域性管道燃气具体价格，番禺、花都、从化、增城、南沙物价部门则负责审批本地区的区域性管道燃气具体价格，并报市物价局备案。&nbsp;&nbsp;</p><p>二、两次调价间隔不少于3个月&nbsp;&nbsp;</p><p>　　市物价局表示，每两次气价调整的间隔时间，原则上不得少于3个月。因不可抗力造成原料进货成本大幅变动时，可随时申请调整气价。拟调定价的区域性管道燃气经营企业，需提前向物价部门提出调定价书面申请，由物价部门在10个工作日内审批。市物价局强调，区域性管道燃气价格的制定应综合考虑用户承受能力等因素。&nbsp;&nbsp;</p><p>三、不影响管道油制气价&nbsp;&nbsp;</p><p>　　据悉，自去年11月1日起，广州管道油制气居民用户价格调整为2.5元/立方米，区域性管道燃气居民用户价格为11.80元/立方米。目前广州市区域性管道燃气用户主要包括：由市煤气公司向江南小区、雅居乐南湖半岛、逸彩庭园、税辉花园、金逸雅苑等5个小区供应管道液化气；广州市国威管道燃气发展有限公司的管道液化石油气用户为2万户左右；广州金冠燃气技术开发有限公司目前有居民用户5500户，其他1500户使用代天然气。相对于全市约60万油制管道气用户，区域性燃气用户的份额较小。市物价局表示，区域性燃气如果调价，不会对管道油制气价格构成影响。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7B009C651C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (53, 1, 1, 56, N'', N'关于调整广州金冠燃气技术开发有限公司 区域性管道燃气销售价格的通知', N'', N'', N'', N'', N'', N'关于调整广州金冠燃气技术开发有限公司 区域性管道燃气销售价格的通知', N'鉴于近期原料进货成本不断下降，按照《关于我市区域性管道燃气价格管理有关问题的通知》（穗价〔2005〕166号）的规定，经测算，现将你公司经营的区域性管道燃气销售价格等问题通知如下', N'<p><strong>广州金冠燃气技术开发有限公司：</strong></p><p>鉴于近期原料进货成本不断下降，按照《关于我市区域性管道燃气价格管理有关问题的通知》（穗价〔2005〕166号）的规定，经测算，现将你公司经营的区域性管道燃气销售价格等问题通知如下：</p><p>一、你公司供应的区域性管道天然气居民用户销售价格调整为4.35元/立方米，其他用户销售价格调整为4.83元/立方米。</p><p>二、上述价格按4月3日起实际用气量计收。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;二○○九年三月二十七日</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7C009D0800 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (54, 1, 1, 56, N'', N'关于调整广州金冠燃气技术开发有限公司 区域性管道燃气销售价格的批复', N'', N'', N'', N'', N'', N'关于调整广州金冠燃气技术开发有限公司 区域性管道燃气销售价格的批复', N'《关于广州金冠燃气技术开发有限公司外供管道天然气申请调整气价的请示》（金冠燃气〔2007〕001号）收悉', N'<p><strong>广州金冠燃气技术开发有限公司：</strong></p><p>&nbsp; &nbsp; &nbsp; 你公司《关于广州金冠燃气技术开发有限公司外供管道天然气申请调整气价的请示》（金冠燃气〔2007〕001号）收悉。根据《关于我市区域性管道燃气价格管理有关问题的通知》（穗价〔2005〕166号），经审核，现将你公司经营的区域性管道燃气销售价格批复如下：</p><p>一、区域性管道天然气工业、商业及公福用户销售价格调整为4.98元/立方米。</p><p>二、上述价格按发文之日起实际用气量计收。</p><p>三、请你公司认真做好宣传解释和明码标价工作。</p><p>&nbsp;</p><p>二○○七年七月六日</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x00009969009FC4C8 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (55, 1, 1, 56, N'', N'“十一五”期间我国将建成四大油气管道', N'', N'', N'', N'', N'', N'“十一五”期间我国将建成四大油气管道', N'据新华网报道：“十一五”期间，我国将加快油气干线管网和配套设施的规划建设，逐步完善全国油气管线网络，建成西油东送、北油南运成品油管道，同时适时建设第二条西气东输管道及陆路进口油气管道', N'<p>据新华网报道：“十一五”期间，我国将加快油气干线管网和配套设施的规划建设，逐步完善全国油气管线网络，建成西油东送、北油南运成品油管道，同时适时建设第二条西气东输管道及陆路进口油气管道。</p><p>记者了解到，我国成品油生产布局不尽合理，部分生产和流通企业成品油储备量偏低。为此，国家将加快成品油西油东送、北油南运管道建设。西油东送大动脉由西部原油成品油管道干线与中哈管道共同组成。其中，西部原油成品油管道西起乌鲁木齐市，途经新疆、甘肃两省区，终点到达兰州市。西部管道建成后，将以现代化的管道运输替代原有的铁路运输，将新疆境内的原油、成品油输送出疆；并将新疆境内、甘肃境内和东部地区、西南地区的成品油输送管道连接起来，从而形成西油东送、北油南调管网。</p><p>目前，我国正增加投入，加快塔里木油气资源勘探开发的步伐，努力争取再拿到一批油气储量和产量，立足国内提高油气供应能力，与进口邻国天然气相结合，在条件成熟时尽快部署第二条西气东输大动脉。此外，由于我国石油进口量越来越大，因此必须加快石油资源保证能力的建设，其中就包括建设陆路进口油气管道。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A90F00A49CA0 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (56, 1, 1, 56, N'', N'广州燃气集团有限公司召开第六届', N'', N'', N'', N'', N'', N'广州燃气集团有限公司召开第六届', N'8月26日上午，广州燃气集团有限公司第六届服务质量义务社会监督员聘任大会在东山宾馆会议室召开。广州燃气集团有限公司党委书记周文彬，纪委书记伍碧海、副总经理程志庆、燃气集团各单位负责人以及新一届服务质量监督员等近60人参加了大会。来自社会不同阶层的20名客户获…', N'<p>8月26日上午，广州燃气集团有限公司第六届服务质量义务社会监督员聘任大会在东山宾馆会议室召开。广州燃气集团有限公司党委书记周文彬，纪委书记伍碧海、副总经理程志庆、燃气集团各单位负责人以及新一届服务质量监督员等近60人参加了大会。来自社会不同阶层的20名客户获聘为新一届服务质量义务社会监督员，周文彬书记，程志庆副总经理向他们颁发了聘书。</p><p>在大会上，周文彬书记详细介绍了燃气集团改革改制情况和当前的重点任务，围绕燃气集团工作重点对监督员提出了三点希望：一是继续关注燃气集团的发展，积极谏言献策；二是加大对燃气集团服务工作的监督检查力度；三是做好宣传引导工作，努力成为燃气集团与社会公众沟通交流的桥梁。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 广州燃气集团有限公司</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A94800A53D2C AS DateTime), CAST(0x0000AA8100A850F5 AS DateTime))
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (57, 1, 1, 56, N'', N'关于暂停办理城市道路挖掘审批的通知', N'', N'', N'', N'', N'', N'关于暂停办理城市道路挖掘审批的通知', N'为加强城市道路管理，以良好的城市面貌迎接国庆60周年和第106届广交会，确保节日和广交会期间的道路平整、交通畅通，根据《广州市城市道路挖掘管理办法》第十三条的有关规定，经研究决定，从2009年9月27日起至11月4日，除城建重点建设工程和城市基础设施管线抢修外，暂时…', N'<p>（穗市政园林函〔2009〕1448号）<br/></p><p>各有关单位：</p><p>为加强城市道路管理，以良好的城市面貌迎接国庆60周年和第106届广交会，确保节日和广交会期间的道路平整、交通畅通，根据《广州市城市道路挖掘管理办法》第十三条的有关规定，经研究决定，从2009年9月27日起至11月4日，除城建重点建设工程和城市基础设施管线抢修外，暂时停止我市城市道路挖掘工程申请的审批工作。因挖掘施工损坏道路的，应在2009年9月29日前全部修复完毕。请各单位严格按照上述规定时间，安排好本单位的工作计划。</p><p>为做好106届交易会期间的市政设施保障工作，请各区建设和市政局落实好以下工作：</p><p>一、要求道路养护单位加强对交易会展馆周边道路设施的巡查和维护，确保交易会期间道路平整、交通畅通。</p><p>二、对于确需施工的建设工程，要加强文明施工监管，完善施工现场的围蔽和警示设施，落实值班制度，并加强对施工范围周边环境卫生的管理。</p><p>三、建立应急抢险机制，落实道路设施应急抢险队伍和设备，做好应急准备，及时解决各种突发事件。</p><p>近期，我局将会同市建委和各区政府，对沿线市政设施进行动态检查，发现问题将督促责任单位即时整改。</p><p>特此通知</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 二OO九年九月二十一日&nbsp; &nbsp;</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x00009C5700A5B5E0 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (58, 1, 1, 3, N'', N'广州金冠燃气技术开发有限公司管道燃气用户缴费通知单（样板）', N'', N'', N'', N'', N'', N'广州金冠燃气技术开发有限公司管道燃气用户缴费通知单（样板）', N'广州金冠燃气技术开发有限公司管道燃气用户缴费通知单如详细内容', N'<p>正面：</p><p><img src="/upload/201907/05/201907051017491808.jpg" title="tx11.jpg" alt="tx11.jpg"/></p><p>反面：</p><p><img src="/upload/201907/05/201907051018119933.jpg" title="tx33.jpg" alt="tx33.jpg"/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A7AE00A660F8 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (59, 1, 1, 3, N'', N'旧楼加装管道天然气', N'', N'', N'', N'', N'', N'旧楼加装管道天然气', N'广州金冠燃气技术开发有限公司成立于1995年，是一家股份制的区域性燃气供应企业（参股单位有：广钢企业集团公司、珠海九丰集团有限公司、番禺港建液化气有限公司等）', N'<p style="text-align: center;"><strong>安装管道天然气</strong></p><p style="text-align: center;"><strong>客户手册&nbsp;&nbsp;</strong></p><p>为了让您能安全、稳妥、及时用上管道天然气，请认真阅读本手册</p><p>&nbsp;</p><p>一、广州市金冠燃气技术开发有限公司介绍</p><p>广州金冠燃气技术开发有限公司成立于1995年，是一家股份制的区域性燃气供应企业（参股单位有：广钢企业集团公司、珠海九丰集团有限公司、番禺港建液化气有限公司等）。为芳村地区的民用、商业和工业企业用户供应管道天然气以及开展燃气工程安装、燃气设备维护检修、抢修抢险服务和燃气技术咨询服务等。公司拥有《城市燃气企业》资质，以及《广州市城市燃气经营许可证》、《广州市城市燃气管道承装许可证》等，是广东省燃气协会和广州市燃气协会的会员单位之一。</p><p>为了树立良好的服务形象，公司明确提出了服务承诺的核心思想，即：坚持全心全意为客户服务的企业宗旨，发扬 “安全生产、优质服务、稳定供气、提高效益”的企业精神，努力做到让客户放心，让客户满意。</p><p>二、天然气常识简介</p><p>什么是天然气？天然气有什么特性？</p><p>天然气无色、无味、无毒且无腐蚀，主要成分是甲烷。城市所使用的天然气，是经过加臭后的天然气，目的是一经泄露，能及早被发现，避免发生事故，是一种具有绿色环保、安全可靠、经济实惠的气源。</p><p>1、绿色环保：天然气是一种洁净环保的优质能源，几乎不含硫、粉尘和其他有害物质，燃烧时产生二氧化碳少于其他化石燃料，造成温室效应较低，因而能从根本上改善环境质量。而且天然气是通过燃气管道直接输送到用户灶前，使用起来省时、省力，随时用，随时有。</p><p>2、安全可靠：天然气无毒、易散发，比重轻于空气，不宜积聚成爆炸性气体，是较为安全的燃气。</p><p>3、经济实惠：1公斤液化气所提供的热值约是10000千卡，其热效率为80％至85％，1罐14．5公斤的瓶装液化气提供的热量为123250千卡。按目前广州1罐液化气价格108元计算，以一户三口之家一个月使用1罐液化气为例，市民一个月需要花费108元。天然气的热值约是8600千卡／立方米，其热效率同样为80％至85％，产生与1罐液化气同等热量需要天然气16．86立方米，目前芳村地区的天然气价格是4.35元／立方米，总价格是73.341元。而每度电的热值大约是860千卡，其热效率为96％，要产生123250千卡的热量，需要168千瓦时，按0．61元／千瓦时计算，共需要102.48元。由此可见，还是使用管道天然气最便宜。不久的将来，芳村的天然气管网将与广州市市政大管网相接驳，到时使用天然气的价格将会更加便宜。</p><p>三、已建住宅管道天然气开户须知：</p><p>1、向广州金冠燃气技术开发有限公司提出开户申请，填写同意报装管道天然气意见征询单；</p><p>2、配合施工企业现场勘察是否具备安装条件；</p><p>3、如具备安装条件，办理开户登记手续，并提供业主身份证与房产证复印件（如新购房者无房产证，可提供购房合同或购房发票复印件）；&nbsp;</p><p>4、缴纳管道天然气安装费用。可在现场缴纳现金，也可到银行转帐，并凭银行转帐单换取发票；</p><p>5、配合完成施工安装和燃具改造；</p><p>6、通气点火前，与广州金冠燃气技术开发有限公司签订《管道天然气开户合同》、《银行代缴煤气费委托书》。</p><p>四、你问我答</p><p>1、小区或规划红线范围内的燃气设施应该由谁来投资？</p><p>&nbsp; &nbsp; 答：根据广州市物价局穗价[2007]23号和120号文件关于“小区或规划红线范围内的燃气设施由业主投资”的规定，在安装小区或规划红线范围内的燃气设施（庭院管、调压设备和楼栋立管等）时，所发生的费用由各业主承担，产权归业主。</p><p>2、安装管道天然气每户的安装费用是多少？</p><p>答：关于管道天然气的安装费用，现根据【穗价函（2015）57号】的文件精神，从2017年1月1日起，对于已建成住宅且需加装管道燃气居民小区或已安装管道燃气居民小区且需增补报装用户的安装费调整为2750元/户。</p><p>&nbsp; &nbsp; 上述安装费范围：包括从市政燃气管接驳口至居民用户炉前阀的管道燃气设施的设计、报建、施工、材料设备、监理、验收、通气点火、人工等全部费用；不包括炉前阀与炉的连接软管、炉具、热水器及其安装、厨房移位导致的改装或加装费用。</p><p>3、首批用户安装管道天然气通气后，以后补装用户的安装费用是多少？是否按原来一样的费用？</p><p>&nbsp; &nbsp; 答：本次暂不报装、日后报装的客户，安装费用可能会高一些，因为日后安装必然会发生二次进场的人工费用、以及材料上涨因素等），具体费用按当时的人工费和材料价格等因素确定。</p><p>4、缴了安装费用后，何时才能开始施工？</p><p>答： 缴了安装费后，业主需要委托有资质的设计单位进行工程项目的设计、规划报建、施工图审查、出施工图等工作（我公司可负责代理），约需大约两、三个月的时间。只有在设计单位出具了施工图、并办理完成市政开挖报建等有关手续后，才能进场施工。</p><p>5、管道天然气安装工程是否包括热水器安装？安装费用是多少？</p><p>&nbsp; &nbsp; 答：管道天然气安装工程不包括热水器安装。用户安装热水器时，施工单位根据实际发生的费用，需要收取安装费用，一般在200元左右；如在商场购买热水器，商场只负责挂机没有资质接管安装。</p><p>6、用户使用嵌入式炉具，安装煤气管时，需要在灶台上打洞，是否还要另外收取费用。</p><p>&nbsp; &nbsp; 答：安装工程不包括灶台上打洞这项内容，因此，安装费用中不包含灶台面板上开洞的费用。如果用户使用的是嵌入式炉具、需要在灶台面板上开洞的，可另请专业开洞人员进行开洞，收取费用一般为20至30元。</p><p>&nbsp; &nbsp; 7、原来使用液化气的炉具和热水器，在改为使用管道天然气后能否继续使用？</p><p>&nbsp; &nbsp; 答：坚决禁止使用！因为两种气源不同，如使用将危及到安全。因此，在改为使用管道天然气后，必须对原来的炉具和热水器进行改装后方可使用。</p><p>&nbsp; &nbsp; 8、炉具和热水器安全使用年限是多少？到了使用年限，经改造后，能否继续使用？</p><p>&nbsp; &nbsp; 答：根据国家燃具安全使用规定（GB17905—1999）：炉具使用8年、热水器使用6年以上的，必须更换新的炉具和热水器，不能改造继续使用。对接近安全使用年限的炉具和热水器，从安全角度考虑，建议更换新的。</p><p>&nbsp; &nbsp; 9、对原来使用液化气的炉具和热水器如何进行改造？</p><p>&nbsp; &nbsp; 答：在天然气管道安装完成后，我公司将委托具有资质和改造经验的燃器具经营公司专业人员上门服务，对原来使用液化气的炉具和热水器进行改造。</p><p>&nbsp; &nbsp; 10、炉具和热水器的改造费用大约多少钱？</p><p>答：炉具和热水器的改造费用，由负责改造的燃器具经营公司直接收取。改造价格参考广州市在天然气转换中通用的炉具和热水器改造价格，并适当压低了改造费用，以减轻客户负担。具体价格如下：炉具单炉20元/台；炉具双炉：40元/台；热水器10升以下85元/台；热水器10升以上95元/台。</p><p>五、金冠公司服务标准和承诺</p><p>1、热情服务，言行文明，态度和蔼，耐心细致。</p><p>2、供气质量符合GB17820-1999《天然气》相关标准，民用灶前压力保持在1.5—3kpa。</p><p>3、上门安装人员不推销任何产品，不收受客户物品，不“吃、拿、卡、要”。</p><p>4、上门服务人员统一佩戴公司工号卡。</p><p>5、严格按收费标准统一收费，上门服务人员不收取任何现金。</p><p>6、100%回复客户投诉，回复时限不超过1个工作日，较复杂的问题不超过2个工作日。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A7BD00A74C84 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (60, 1, 1, 55, N'', N'关于管道燃气下调气价及抄表方法的通知', N'', N'', N'', N'', N'', N'关于管道燃气下调气价及抄表方法的通知', N'根据广州市物价局文件《关于调整广州金冠燃气技术开发有限公司区域性管道燃气销售价格的通知》（穗价函2009第175号）要求，我公司管道天然气的销售价格将从2009年4月3日开始进行统一下调，具体的气价标准', N'<p><strong>尊敬的我公司各管道燃气用户：</strong></p><p>根据广州市物价局文件《关于调整广州金冠燃气技术开发有限公司区域性管道燃气销售价格的通知》（穗价函2009第175号）要求，我公司管道天然气的销售价格将从2009年4月3日开始进行统一下调，具体的气价标准为：</p><p>居民用户4.35元/立方米，其它用户4.83元/立方米。</p><p>为了改变以往每次调价都要集中、突击抄表而造成对大多数居民用户生活的干扰，而实际抄表效果又不太理想的情况，我公司决定参考其它一些燃气公司的办法，改为：从本次调价开始，一律按照用户在调价标准日前后，实际用气的天数进行平均计算用气量的办法，计算各位用户在新、旧气价期间对应的应缴气量和气款额（非居民用户除外），这样，就不会打乱大多数居民用户一直以来既定的抄表周期和抄表时间规律，敬请您给予充分理解和大力支持！</p><p>例如：某居民用户上次的抄表日为2月10日，下次的抄表日为4月10日，则旧气价的用气天数为：2月11日至4月2日，共计51天，新气价的用气天数为：4月3日至4月10日，共计8天。假如这期间，用户的总用气量为20立方米，则：旧气价的用气量为：20/59*51=17立方米，新气价的用气量为：3立方米。然后再分段计算气费额。</p><p>当然，如果个别用户觉得还是在4月3日前后进行抄表更合适的话，或有任何疑问，请尽快致电我公司客服中心（电话：81406162）咨询，或直接与负责您的抄表工作的抄表员联系，我们也可以在与您约定的时间里入户进行抄表，然后为您开始执行新的气价。</p><p>特此通知！</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 广州金冠燃气技术开发有限公司</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2009年3月31日</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A92900A7C2E0 AS DateTime), CAST(0x0000AA8100AB3176 AS DateTime))
INSERT [dbo].[dt_channel_article_news] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (61, 1, 1, 55, N'', N'网上查询已开通', N'', N'', N'', N'', N'', N'网上查询已开通', N'用户只需输入我公司的名称，即可利用搜索引擎（软件）搜索到我公司的网站网址www.jinguangas.com，用户可以登录网站，查询用户近期的抄表缴费情况以及我公司的有关信息资料等', N'<p>&nbsp; &nbsp; &nbsp;我公司的网站已经试运行中，用户只需输入我公司的名称，即可利用搜索引擎（软件）搜索到我公司的网站网址www.jinguangas.com，用户可以登录网站，查询用户近期的抄表缴费情况以及我公司的有关信息资料等。</p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000996E00A8924C AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[dt_channel_article_news] OFF
/****** Object:  Table [dbo].[dt_channel_article_goods]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_article_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[click] [int] NOT NULL,
	[status] [int] NOT NULL,
	[is_msg] [int] NOT NULL,
	[is_top] [int] NOT NULL,
	[is_red] [int] NOT NULL,
	[is_hot] [int] NOT NULL,
	[is_slide] [int] NOT NULL,
	[is_sys] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[like_count] [int] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
	[sub_title] [nvarchar](255) NULL,
	[goods_no] [nvarchar](100) NULL,
	[stock_quantity] [int] NULL,
	[market_price] [decimal](9, 2) NULL,
	[sell_price] [decimal](9, 2) NULL,
	[point] [int] NULL,
 CONSTRAINT [PK__dt_channel_artic__351DDF8C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_channel_article_goods] ON
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (87, 1, 2, 43, N'', N'华为（HUAWEI）荣耀6Plus 16G双4G版', N'', N'/upload/201504/20/thumb_201504200046589514.jpg', N'华为（HUAWEI）荣耀6Plus 16G双4G版', N'华为（HUAWEI）,荣耀6Plus,移动/联通/电信/双4G版,双800万摄像头，八核，安卓智能手机,荣耀6plus', N'华为（HUAWEI）荣耀6Plus 移动/联通/电信/双4G版（双800万摄像头，八核，安卓智能手机）荣耀6plus(白色 移动16G版/套餐一)', N'', N'荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080…', N'<p>
	荣耀6 Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB RAM+32GB ROM存储组合，支持存储卡扩展。
</p>
<p align="center">
	<span style="color:#FF0000;font-size:16px;"><img class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201503/desc04/A0004794664/3997361.jpg" /></span> 
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A480000E0574 AS DateTime), CAST(0x0000A4800010E78D AS DateTime), N'双800万摄像头，八核，安卓智能手机）荣耀6plus', N'SD9102356032', 60, CAST(2499.00 AS Decimal(9, 2)), CAST(2195.00 AS Decimal(9, 2)), 100)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (88, 1, 2, 43, N'', N'苹果Apple iPhone 6 Plus 16G 4G手机（联通三网版）', N'', N'/upload/201504/20/thumb_201504200059017695.jpg', N'苹果Apple iPhone 6 Plus 16G 4G手机（联通三网版）', N'苹果,iPhone 6 Plus 16G,4G手机,联通三网版', N'AppleiPhone 6 Plus手机金色（联通）5.5英寸16G】Apple iPhone 6 Plus 16G 4G手机（联通三网版）', N'', N'iPhone 6 Plus设计上和iPhone 6一致，做工延续了苹果的高标准。和前几代不同的是，与前几代iPhone有棱有角的设计相比，它从屏幕边缘到边框都是弧形设计，玻璃与边框贴合的十分紧凑，两者衔接的地方过度十分自然，更像是unibody一体式的设计。它一改以往的设计风格，也使得手机…', N'<p>
	iPhone 6 Plus设计上和iPhone 6一致，做工延续了苹果的高标准。
</p>
<p>
	和前几代不同的是，与前几代iPhone有棱有角的设计相比，它从屏幕边缘到边框都是弧形设计，玻璃与边框贴合的十分紧凑，两者衔接的地方过度十分自然，更像是unibody一体式的设计。它一改以往的设计风格，也使得手机十分圆滑，不太容易掌控。
</p>
<p>
	TechCrunch和Engadget都提到，iPhone 6 Plus让人想起了iPad mini，尤其是后者的侧边也是弧形设计。iPhone 6 Plus同样需要双手来操作，想要单手模式的话，轻拍两下Home键（不是按下去），显示内容会下移大约一半的尺寸。
</p>
<p>
	<br />
</p>
<p align="center">
	<img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_02.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_03.jpg" /> 
</p>
<p align="center">
	<img width="750" height="370" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_04.jpg" /> 
</p>
<p align="center">
	<img width="750" height="371" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_05.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_06.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_07.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_08.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_09.jpg" /> <img width="750" height="370" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_10.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_11.jpg" /> <img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_12.jpg" /> 
</p>
<p align="center">
	<img width="750" height="371" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201503/desc1226/1122290268/1_13.jpg" /> 
</p>', 99, 1, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A4800010BEB8 AS DateTime), CAST(0x0000A4800011C73B AS DateTime), N'支持联通移动电信三网4G，5.5英寸，1920x1080分辨率，800万像素摄像头，Touch ID指纹识别传感器', N'SD7159810321', 198, CAST(6388.00 AS Decimal(9, 2)), CAST(5780.00 AS Decimal(9, 2)), 200)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (89, 1, 2, 43, N'', N'小米（Mi）小米Note 16G双网通版', N'', N'/upload/201504/20/thumb_201504200119256512.jpg', N'小米（Mi）小米Note 16G双网通版', N'小米（Mi）小米Note 双网通版（4G、5.7英寸、16GB/64GB可选 ） Note/小米note手机(天然竹特别版 双网通/16GB内存 标配)', N'小米（Mi）小米Note 双网通版（4G、5.7英寸、16GB/64GB可选 ） Note/小米note手机(天然竹特别版 双网通/16GB内存 标配)', N'', N'小米Note此次采用的5.7英寸夏普/JDI分辨率为1920X1080的屏幕。小米Note配置方面，CPU采用的是高通骁龙801四核2.5GHZ处理器，3GB的运行内存。4G双卡双待，1300万像素后置摄像头和400万前置摄像头组合，首次加入HiFi模块，高保真音质，电池容量为3000mAh。小米Note顶配版升级了C…', N'<p>
	小米Note此次采用的5.7英寸夏普/JDI分辨率为1920X1080的屏幕。小米Note配置方面，CPU采用的是高通骁龙801四核2.5GHZ处理器，3GB的运行内存。
</p>
<p>
	4G双卡双待，1300万像素后置摄像头和400万前置摄像头组合，首次加入HiFi模块，高保真音质，电池容量为3000mAh。
</p>
<p>
	小米Note顶配版升级了CPU、屏幕、运行内存，采用的5.7英寸夏普/JDI分辨率为2560 x 1440的2K屏，CPU采用的是高通骁龙810八核64位处理器，4GB的运行内存。
</p>
<p align="center">
	<img class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201501/desc04/A0005143105/3851475.jpg" /> 
</p>', 99, 9, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A4800015D608 AS DateTime), NULL, N'小米note手机(天然竹特别版 双网通/16GB内存 标配)', N'SD2932214404', 59, CAST(2699.00 AS Decimal(9, 2)), CAST(2299.00 AS Decimal(9, 2)), 200)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (90, 1, 2, 44, N'', N'佳能（Canon） EOS 700D 单反套机', N'', N'/upload/201504/20/thumb_201504200154277661.jpg', N'佳能（Canon） EOS 700D 单反套机 （EF-S 18-135mm f/3.5-5.6 IS STM镜头）旗舰机型 正品行货 翻转触摸屏', N'佳能,EOS 700D,单反套机,旗舰机型,正品行货,翻转触摸屏', N'佳能（Canon） EOS 700D 单反套机 （EF-S 18-135mm f/3.5-5.6 IS STM镜头）旗舰机型 正品行货 翻转触摸屏行业标杆!DIGIC 5数字影像处理器 全9点十字型自动对焦 2013入门旗舰 全新力作!', N'', N'◆ 佳能普及型单反新旗舰记忆的片段，偶然的相遇，铭记那一刻的感动。想记录美丽的夜景，想留下鲜艳的色彩，更想捕捉决定性的瞬间。能够满足这些的相机就是EOS 700D。拓展拍摄自由度的触摸操作和可旋转液晶监视器，激发拍摄灵感的丰富创意功能，趁手的坚实机身中融入了令人惊叹…', N'<p align="center">
	<img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/0.jpg" /> 
</p>
<p>
	<strong>◆ 佳能普及型单反新旗舰</strong><br />
记忆的片段，偶然的相遇，铭记那一刻的感动。想记录美丽的夜景，想留下鲜艳的色彩，更想捕捉决定性的瞬间。能够满足这些的相机就是EOS 700D。拓展拍摄自由度的触摸操作和可旋转液晶监视器，激发拍摄灵感的丰富创意功能，趁手的坚实机身中融入了令人惊叹的先进功能。佳能与你一同分享拥有数码单反相机的喜悦。
</p>
<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 高反应性 — 卓越的自动对焦性能和高速连拍</strong><br />
无论被摄体的种类和状态如何，瞬间捕捉快门时机是EOS 700D的强项。全9点十字型高精度自动对焦感应器和Hybrid CMOS AF是拓展多种拍摄方式的坚实后盾。在取景器拍摄和实时显示拍摄时都能精确捕捉被摄体。另外，最高约5张/秒的高速连拍可连续记录被摄体的动作，不会错过拍摄时机。
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/12.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 高画质・高感光度 — 约1800万有效像素带来的高精细、低噪点画质</strong><br />
从明亮场景到昏暗场景，EOS 700D随时随地都能拍出令人感动的美丽照片。其中的秘密就在于约1800万有效像素CMOS图像感应器和担负高速高画质图像处理的DIGIC 5数字影像处理器的组合。高像素带来精细成像和细腻层次表现是数码单反相机的特长。另外，常用感光度为ISO 100-12800，可拓展至ISO 25600。卓越的降噪效果使得高感光度拍摄时也能获得清晰的画质。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/13.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 触控 — 可迅速拍摄且便于回放的触控液晶监视器</strong><br />
使用EOS 700D只需轻触液晶监视器的表面即可完成从对焦、拍摄到回放图像的操作。通过触摸操作可迅速改变设置或选择菜单，因此相机丰富的功能都能轻松调出，使用起来更熟练。直观的操作使初学者也不再为操作而烦恼。根据被摄体和拍摄场景分别使用不同的自动对焦方式，轻松简单的触摸操作也能拍出理想的照片。可以说EOS 700D可利用智能手机般的简易操作拍出专业级的照片。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/14.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>短片拍摄 — 可自动对焦追踪拍摄的全高清EOS短片</strong><br />
可持续对焦动态被摄体的短片伺服自动对焦和短片拍摄中的高速自动对焦使短片拍摄更加顺畅。使用超过60款的EF镜头能够自由地表现美丽的虚化和微距世界等。拍摄短片时可进行直观的触摸操作，轻松拍出可用于电影、电视广告制作的高品质影像。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/15.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 基本性能 — 自动识别拍摄场景和被摄体，拍摄理想照片的先进功能</strong><br />
被摄体周围的光线环境多种多样。EOS 700D搭载了可识别被摄体颜色和拍摄场景的高性能测光感应器，能够随时随地正确计算曝光。另外DIGIC 5数字影像处理器可综合分析相机内各感应器获取的多种信息，针对拍摄场景进行合适的图像处理。基于EOS 700D卓越的基本性能无论何时何地都能获得理想的照片效果。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/16.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 创造性 — 在拍摄中或拍摄后提升作品效果的多种功能</strong><br />
EOS 700D搭载了多种功能，通过简单的操作即可获得专业级的效果。使用"手持夜景"模式无需三脚架也能手持拍摄夜景，"HDR逆光控制"模式在逆光下可有效抑制暗部缺失和高光溢出，而"夜景人像"模式在拍摄人像时可使背景和人物的亮度更加协调。除此之外，充实的"创意滤镜"功能还可以为照片添加丰富的效果。使用这些功能便能创作出有别于通常拍摄的照片效果，获得理想的摄影作品。<br />
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="100%" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td align="center" valign="middle" rowspan="3">
								<img width="165" height="110" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/17.jpg" /> 
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="heise14">
								<strong>◆ 设计・拓展性 — 全新的外观和丰富的附件</strong><br />
全新设计的EOS 700D功能性和系统性都更加完善。机身设计焕然一新，转盘改为凸型图标。套机镜头EF-S 18-55mm f/3.5-5.6 IS STM和EF-S 18-135mm f/3.5-5.6 IS STM可实现安静流畅的自动对焦。除可使用超过60款的EF镜头外，还可搭配功能繁多的外接闪光灯和电池盒兼手柄等附件。组合使用就能拓展拍摄领域，获得更高的表现力。
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<p align="center">
	<img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/0.jpg" /> 
</p>
<p align="center">
	<img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/1.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/2.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/3.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/4.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/5.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/6.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/7.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/8.jpg" /> <img width="670" height="460" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201501/desc860/1109920025/9.jpg" />
</p>', 99, 1, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A480001F79D0 AS DateTime), CAST(0x0000A4800020E6F2 AS DateTime), N'行业标杆!DIGIC 5数字影像处理器 全9点十字型自动对焦 2013入门旗舰 全新力作!', N'SD8861076806', 100, CAST(5099.00 AS Decimal(9, 2)), CAST(4799.00 AS Decimal(9, 2)), 400)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (91, 1, 2, 44, N'', N'尼康(Nikon)D3300套机（18-55mm f/3.5-5.6G VRII）（黑色）', N'', N'/upload/201504/20/thumb_201504200214471783.jpg', N'尼康(Nikon)D3300套机(18-55mm f/3.5-5.6G VRII)', N'尼康,Nikon,D3300套机', N'尼康（Nikon）D3300套机（18-55mm f/3.5-5.6G VRII）（黑色）新一代Expeed 4图像处理器3寸液晶屏 支持短片拍摄 双重清洁系统 11点自动对焦', N'', N'作为D3200的升级版，尼康D3300最大特点即是无低通的设置，整体配置却与D5300十分相似。搭载2416万像素无低通滤镜传感器，以及EXPEED 4图像处理器，在入门级单反中比较抢眼。最高感光度达到至ISO 25600，最高连拍速度5fps，11点对焦系统，可录制1080/60p全高清视频。外观方面，…', N'<p>
	作为D3200的升级版，尼康D3300最大特点即是无低通的设置，整体配置却与D5300十分相似。搭载2416万像素无低通滤镜传感器，以及EXPEED 4图像处理器，在入门级单反中比较抢眼。最高感光度达到至ISO 25600，最高连拍速度5fps，11点对焦系统，可录制1080/60p全高清视频。
</p>
<p>
	外观方面，尼康D3300与D3200区别不大，依然以“圆润”化设计思路为主线，相机更加的柔和，时尚化。机身背面配有3英寸92万像素液晶屏，可进行亮度调节。除此D3300整体握持手感可以说是近年来小型单反中做得最好的，无论是手柄的深度，蒙皮的覆盖位置都可以说是刚刚好。而黑色，灰色以及红色的外观，更增加了可选性。
</p>
<table width="750" class="ke-zeroborder" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_21.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_22.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_23.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_24.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_25.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_26.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_27.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_28.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_29.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_30.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_31.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_32.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_33.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_34.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_35.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_36.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_37.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_38.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_39.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_40.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_41.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_42.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_43.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_44.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_45.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_46.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7815/9129260228/1_47.jpg" /> 
			</td>
		</tr>
		<tr>
			<td>
			</td>
		</tr>
	</tbody>
</table>', 99, 2, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A48000250A67 AS DateTime), NULL, N'3寸液晶屏 支持短片拍摄 双重清洁系统 11点自动对焦', N'SD1260286073', 10, CAST(3150.00 AS Decimal(9, 2)), CAST(3180.00 AS Decimal(9, 2)), 200)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (92, 1, 2, 46, N'', N'联想（Lenovo） G510AM 15.6英寸笔记本电脑', N'', N'/upload/201504/20/thumb_201504200225107390.jpg', N'联想（Lenovo） G510AM 15.6英寸笔记本电脑（i3-4000M 4G 500G 2G独显 摄像头 DVD刻录 Win8）金属黑', N'联想（Lenovo） G510AM 15.6英寸笔记本电脑（i3-4000M 4G 500G 2G独显 摄像头 DVD刻录 Win8）金属黑', N'联想（Lenovo） G510AM 15.6英寸笔记本电脑（i3-4000M 4G 500G 2G独显 摄像头 DVD刻录 Win8）金属黑

【新一代G系の高性能家用笔记本】万箭穿心Ω斯巴达克斯级战备性能∑炼狱级2G显卡性能本，全面预装windows8系统！', N'', N'G系列全面支持Windows 8 简体中文版，在秉承了坚实耐用、稳定可靠的产品指纹的同时，金属版本全金属C面令笔记本更加安全可靠。搭载独立显卡在游戏和多媒体方面较上一代显卡最高可实现两倍性能提升，提供更加强大的笔记本体验。杜比环绕立体声音效，轻松拥有影院级高品质享受；…', N'<p>
	G系列全面支持Windows 8 简体中文版，在秉承了坚实耐用、稳定可靠的产品指纹的同时，金属版本全金属C面令笔记本更加安全可靠。搭载独立显卡在游戏和多媒体方面较上一代显卡最高可实现两倍性能提升，提供更加强大的笔记本体验。杜比环绕立体声音效，轻松拥有影院级高品质享受；更可以通过HDMI接口连接3D电视，实现坐拥私家3D影院的梦想！
</p>
<p>
	Windows 8 中文版操作系统（限部分机型标配），紧跟潮流CPU全面升级，四核普及风暴：搭载第四代智能英特尔Haswell酷睿处理器，最高至i7四核处理器，极致性能一本无忧显卡换代，火爆升级：显卡切换至新一代AMD Radeon HD8570 2G DDR3独立显存，最高可至AMD Radeon HD87504GDDR3独立显存；性能较上代提升超过100%，为客户带来酣畅使用体验。
</p>
<table width="749" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_02.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_03.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_04.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_05.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_06.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_07.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_08.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_09.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_10.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_11.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_12.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="200" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_13.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="749" height="201" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7730/9133093178/9131870369_14.jpg" />
			</td>
		</tr>
	</tbody>
</table>
<!-- End Save for Web Slices -->
<div id="adbottom">
	<div style="text-align:center;">
		<a href="http://prom.gome.com.cn/html/prodhtml/topics/201501/jiaanbao.html"></a>
	</div>
</div>', 99, 1, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A4800027E39D AS DateTime), NULL, N'万箭穿心Ω斯巴达克斯级战备性能∑炼狱级2G显卡性能本，全面预装windows8系统！', N'SD6808149048', 100, CAST(4599.00 AS Decimal(9, 2)), CAST(2999.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (93, 1, 2, 46, N'', N'Apple iMac MF883CH/A 21.5英寸一体机电脑', N'', N'/upload/201504/20/201504200341260763.jpg', N'Apple iMac MF883CH/A 21.5英寸一体机电脑', N'赏心悦目de感官享受 艺术品般de细致雕琢 效能与设计de完美结合', N'Apple iMac MF883CH/A 21.5英寸一体机电脑赏心悦目de感官享受 艺术品般de细致雕琢 效能与设计de完美结合', N'', N'—— iMac —— 锋锐设计，锋芒表现。iMac 拥有亮丽的宽显示屏、强劲的 Intel 处理器、超快的图形处理器和其他先进功能，而一切精彩都集于超乎想象的锋锐外壳中，边缘处仅有 5 毫米。 ● 绚丽夺目的设计● 绚美的宽显示屏● 全线配备 Intel Core i5 处理器● 强大的图形处理器…', N'—— iMac —— <br />
锋锐设计，锋芒表现。<br />
iMac 拥有亮丽的宽显示屏、强劲的 Intel 处理器、超快的图形处理器和其他先进功能，而一切精彩都集于超乎想象的锋锐外壳中，边缘处仅有 5 毫米。 <br />
● 绚丽夺目的设计<br />
● 绚美的宽显示屏<br />
● 全线配备 Intel Core i5 处理器<br />
● 强大的图形处理器<br />
● 高速 I/O 传输技术，包括两个 Thunderbolt 端口、四个 USB 3 端口等<br />
● FaceTime HD 高清摄像头<br />
● Apple Wireless Keyboard<br />
● Apple Magic Mouse<br />
● 一系列激发创意和提升效率的强大 app<br />
● OS X Mavericks，了不起的先进操作系统 <br />
&nbsp; <br />
—— Apple Wireless Keyboard —— <br />
Apple Wireless Keyboard 拥有难以置信的超薄流线型设计，让你能在你的桌上、膝上或任意有效范围之内尽情输入。不管你把它放在哪里，它只需极小的空间即可容身。 <br />
&nbsp; <br />
—— Apple Magic Mouse —— <br />
Magic Mouse 不同于你以往用过的其他鼠标。Multi-Touch 表面让你可以使用手势轻扫翻看照片，滚动浏览网页。整个鼠标就是一个按钮，任你随处点击。 <br />
&nbsp; <br />
—— Apple Magic Trackpad —— <br />
和 Apple Wireless Keyboard 可以对齐摆放。你可以使用内置于 OS X Mavericks 的所有 Multi-Touch 手势，来轻松掌控，和屏幕进行互动。轻扫浏览照片，上下滚读网页，并可随处点击。 <br />
&nbsp; <br />
—— Apple USB SuperDrive 光驱 —— <br />
紧凑轻便的 Apple USB SuperDrive 光驱仅需一条 USB 线缆就能接入你的 iMac、配备 Retina 显示屏的 MacBook Pro、MacBook Air 或 Mac mini 连接，并且可以轻松纳入你的旅行包。有了它，你可以安装软件，播放及刻录 CD 和 DVD（包括双层 DVD）。 <br />
&nbsp; <br />
—— AirPort Extreme —— <br />
简单易用的 AirPort Extreme 基站拥有新一代 802.11ac Wi-Fi 技术，能为家庭、学校和公司提供理想的无线接入点1。它具备同步双频支持，为 Mac 电脑、PC，以及 iPhone、iPad 和 iPod touch 等设备带来高性能的无线网络连接2。<br />
1、AirPort Extreme 基于 IEEE 802.11ac 规范草案。性能数据基于与 Apple 的 802.11n 产品所做的比较。<br />
2、接入无线互联网要求使用互联网账号；可能需要付费。 <br />
&nbsp; <br />
—— AirPort Time Capsule —— <br />
AirPort Time Capsule 这款无线硬盘能与 OS X 中的 Time Machine 无缝配合，为你备份生活中难忘的美好回忆。它还是一款全功能的 Wi-Fi 基站，具备新一代 802.11ac 技术与同步双频支持*。<br />
* AirPort Time Capsule 基于 IEEE 802.11ac 规范草案。性能数据基于与 Apple 的 802.11n 产品所做的比较。接入无线互联网要求使用互联网账号；可能需要付费。<br />
&nbsp;适用于 Mac 的AppleCare Protection Plan 全方位服务计划可提供长达 3 年的专家电话技术支持，以及来自Apple 的额外硬件服务选项1。 <br />
&nbsp; <br />
当你购买了AppleCare Protection Plan 全方位服务计划，只需一通电话即可帮你解答各式各样的问题2，包括 iLife 和 iWork 等产品的使用方法问题。你甚至还可以在访问世界其他国家或地区时，在当地获取维修服务。 <br />
&nbsp; <br />
中国的消费者权益保护法包括"三包"规定，赋予了消费者自购机之日起 2 年的主要部件质量问题保修服务。在浙江省，消费者权益保护法赋予了消费者自购买之日起 3 年的台式电脑质量问题保修服务。在此基础之上，大多数 Apple 产品也附带 90 天的免费电话技术支持，以及来自 Apple 的 1 年有限保修服务。 <br />', 99, 1, 0, 1, 0, 0, 0, 1, 1, N'admin', 0, CAST(0x0000A480002A0BAC AS DateTime), CAST(0x0000A480003CD492 AS DateTime), N'赏心悦目de感官享受 艺术品般de细致雕琢 效能与设计de完美结合', N'SD9683710842', 10, CAST(7988.00 AS Decimal(9, 2)), CAST(7200.00 AS Decimal(9, 2)), 100)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (94, 1, 2, 47, N'', N'金士顿（Kingston） DataTraveler SE9 32GB 金属U盘', N'', N'/upload/201504/20/thumb_201504200239192345.jpg', N'金士顿（Kingston） DataTraveler SE9 32GB 金属U盘 银色', N'金士顿,金属U盘', N'金士顿（Kingston） DataTraveler SE9 32GB 金属U盘 银色', N'', N'品名：金士顿颜色：银色容量：32GB USB2.0尺寸：1.535＂0.486＂0.179＂（39.00mm12.35mm4.55mm）携带方便：小巧的无盖帽设计袖珍型，携带方便质量保证：5年保固，免费技术支持工作温度：32℉到140℉（0℃到60℃）保存温度：-4℉到185℉（-20℃到85℃）', N'<p>
	<span class="yhbb">品名：</span>金士顿<br />
<span class="yhbb">颜色：</span>银色<br />
<span class="yhbb">容量：</span>32GB USB2.0<br />
<span class="yhbb">尺寸：</span>1.535＂×0.486＂×0.179＂<br />
（39.00mm×12.35mm×4.55mm）<br />
<span class="yhbb">携带方便：</span>小巧的无盖帽设计袖珍型，携带方便<br />
<span class="yhbb">质量保证：</span>5年保固，免费技术支持<br />
<span class="yhbb">工作温度：</span>32℉到140℉（0℃到60℃）<br />
<span class="yhbb">保存温度：</span>-4℉到185℉（-20℃到85℃）
</p>
<table width="750" class="dingwei" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_06.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_07.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_08.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_09.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_10.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_11.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_12.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_13.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="198" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_14.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="199" class="gomeImgLoad" alt="" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201410/desc7907/9132573660/1_15.jpg" />
			</td>
		</tr>
	</tbody>
</table>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A480002BD1B5 AS DateTime), NULL, N'足够自信，欢迎比价后购买！', N'SD3720019286', 100, CAST(99.00 AS Decimal(9, 2)), CAST(79.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (95, 1, 2, 48, N'', N'惠普（HP）LaserJet 2035商用黑白激光打印机（黑色）', N'', N'/upload/201504/20/thumb_201504200242250674.jpg', N'惠普（HP）LaserJet 2035商用黑白激光打印机（黑色）', N'惠普,HP,LaserJet 2035,激光打印机', N'惠普（HP）LaserJet 2035商用黑白激光打印机（黑色）', N'', N'全新hp laserjet p2035系列激光打印机既可令您尽享卓越的打印体验，又可提高办公生产率。此款打印机外形精巧、简单易用，且具备多种强大功能，以全力打造高端惠普激光打印体验。此外，它还可快速轻松输出专业办公文档，因此特别适用于中小型企业和大型企业环境内的小型工作组和…', N'<table width="735" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="735" height="473" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201504/desc1284/1000016696/6.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="19">
								&nbsp;
							</td>
							<td width="700" class="yha">
								全新hp laserjet p2035系列激光打印机既可令您尽享卓越的打印体验，又可提高办公生产率。此款打印机外形精巧、简单易用，且具备多种强大功能，以全力打造高端惠普激光打印体验。此外，它还可快速轻松输出专业办公文档，因此特别适用于中小型企业和大型企业环境内的小型工作组和高使用量个人用户。
							</td>
							<td width="16">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="23">
								&nbsp;
							</td>
							<td width="689" class="bk">
								&nbsp;
							</td>
							<td width="23">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="24">
								&nbsp;
							</td>
							<td width="293">
								<img width="268" height="228" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201504/desc1284/1000016696/2.jpg" />
							</td>
							<td width="392">
								<span class="yy">以独特的价值实现强大的办公生产率</span><br />
<span class="yhb">·尽享高达30 ppm (letter/a4)的快捷打印速度。<br />
·采用惠普0秒预热技术，节能模式下仅8秒即可快速输出首页。<br />
·10/100以太网/快速以太网联网功能可确保轻松共享打印资源。<br />
·使用usb或并行端口，轻松连接打印机与计算机。<br />
·250页进纸盒和50页多用途纸盒，减少纸张输入次数。<br />
·266 mhz处理器和16 mb内存可确保快速处理复杂文件。 </span>
							</td>
							<td width="26">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="23">
								&nbsp;
							</td>
							<td width="689" class="bk">
								&nbsp;
							</td>
							<td width="23">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="26">
								&nbsp;
							</td>
							<td width="407">
								<span class="yy">线条流畅、节省空间的设计为您全力打造专业品质</span><br />
<span class="yhb">·高达600 x 600 dpi的分辨率，通过分辨率增强技术(ret)，打印质感文本和清晰图像的专业办公文档。<br />
·借助惠普一体化硒鼓，体验品质如一的输出效果和出色易用性。</span>
							</td>
							<td width="20">
								&nbsp;
							</td>
							<td width="282">
								<img width="258" height="242" class="gomeImgLoad" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201504/desc1284/1000016696/3.jpg" />
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="23">
								&nbsp;
							</td>
							<td width="689" class="bk">
								&nbsp;
							</td>
							<td width="23">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="25">
								&nbsp;
							</td>
							<td width="277">
								<img width="253" height="238" class="gomeImgLoad" src="http://img6.gomein.net.cn/image/prodimg/productDesc/descImg/201504/desc1284/1000016696/4.jpg" />
							</td>
							<td width="405">
								<span class="yy">容易设置、使用和维护</span><br />
<span class="yhb">·利用直观的控制面板，轻松导航打印机功能。<br />
·一个打印机正面检修门可确保无忧更换硒鼓。<br />
·借助可hp easy printer care软件，高效管理2到20台惠普激光打印机，掌握打印机的状态，配置等信息。<br />
·hp suresupply便于订购打印耗材，避免意外停机。<br />
·外形精巧，可节省宝贵的桌面空间。</span>
							</td>
							<td width="28">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="23">
								&nbsp;
							</td>
							<td width="689" class="bk">
								&nbsp;
							</td>
							<td width="23">
								&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width="735" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td width="26">
								&nbsp;
							</td>
							<td width="396">
								<span class="yy">更多特性，带来更好打印体验</span><br />
<span class="yhb">·选择独特的打印机安静模式，尽享异常安静的操作体验。<br />
·支持a6卡片等多种介质尺寸和类型，可轻松制作各类商业文档。</span>
							</td>
							<td width="23">
								&nbsp;
							</td>
							<td width="290">
							</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>', 99, 1, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A480002CF292 AS DateTime), NULL, N'节约办公成本！智慧科技！', N'SD6808159034', 100, CAST(2099.00 AS Decimal(9, 2)), CAST(1899.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (96, 1, 2, 48, N'', N'惠普(HP) Officejet Pro 8610商用彩色喷墨一体机', N'', N'/upload/201504/20/thumb_201504200253026047.jpg', N'惠普(HP) Officejet Pro 8610商用彩色喷墨一体机', N'惠普,Officejet Pro 8610,彩色喷墨一体机', N'专业彩色打印件的单页成本比激光打印机低 50%，从而在日常打印中节省更多打印成本。', N'', N'专业彩色打印件的单页成本比激光打印机低 50%，从而在日常打印中节省更多打印成本。无论您身在何处，均可通过任意移动设备进行打印。 借助惠普“云打印”技术，您现在可以随时随地，随心打印。使用智能复印解决方案，创建完美无瑕的副本，同时轻松打印双面身份证。专业彩色打印…', N'<p>
	专业彩色打印件的单页成本比激光打印机低 50%，从而在日常打印中节省更多打印成本。
</p>
<p>
	无论您身在何处，均可通过任意移动设备进行打印。 借助惠普“云打印”技术，您现在可以随时随地，随心打印。
</p>
<p>
	使用智能复印解决方案，创建完美无瑕的副本，同时轻松打印双面身份证。
</p>
<p>
	专业彩色打印成本低于激光打印机，而且生产率高，可大幅推动业务发展。
</p>
<p>
	适用墨盒：HP 950XL 黑色/青色/品红/黄色超大容量墨盒 CN045AA/CN046AA/CN047AA/CN048AA
</p>
<p align="center">
	&nbsp;<img alt="WW-CNPublicStore:/Product/RichContent/IPG/CM750A-Pro-8600-20120704-ver1.jpg" src="http://shopping1.hp.com/is-bin/intershop.static/WFS/WW-CNPublicStore-Site/WW-CNPublicStore/zh_CN/Product/RichContent/IPG/CM750A-Pro-8600-20120704-ver1.jpg" border="0" /> 
</p>', 99, 1, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A480002F8B4C AS DateTime), NULL, N'', N'', 100, CAST(2099.00 AS Decimal(9, 2)), CAST(1999.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (97, 1, 2, 49, N'', N'三星（SAMSUNG）UA40HU5920JXXZ 40英寸4K超高清', N'', N'/upload/201504/20/thumb_201504200258403759.jpg', N'三星（SAMSUNG）UA40HU5920JXXZ 40英寸4K超高清', N'三星,UA40HU5920JXXZ,4K超高清,智能,四核处理器,平板液晶电视', N'三星（SAMSUNG）UA40HU5920JXXZ 40英寸4K超高清 智能 四核处理器 平板液晶电视UHDTV4K网络智能！欢迎比价后购买！此商品为爆款，不参加满减活动！数量有限，先抢先得！智能彩电节，点击抢购', N'', N'三星（SAMSUNG）UA40HU5920JXXZ 40英寸4K超高清 智能 四核处理器 平板液晶电视（黑色） UHDTV【智能彩电节】4K网络智能！欢迎比价后购买！此商品为爆款，不参加满减活动！数量有限，先抢先得！智能彩电节，点击抢购', N'<table width="750" align="center">
	<tbody>
		<tr>
			<td>
				<img alt="" src="http://pwg0.gtimg.cn/wanggou/855006089/6fb0525cb4_028a1096486f185e4456f317c3ab36c.jpg/750" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img alt="" src="http://pwg0.gtimg.cn/wanggou/855006089/6fb0525cb4_e6b2746ff5f12be74588b3336f24bc6.jpg/750" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img alt="" src="http://pwg2.gtimg.cn/wanggou/855006089/6fb0525cb4_f836a109bd9d3db4f2a11dc68a2731c.jpg/750" /> 
			</td>
		</tr>
		<tr>
			<td>
				<img alt="" src="http://pwg3.gtimg.cn/wanggou/855006089/6fb0525cb4_39af00629049492f108b33dfcae40dd.jpg/750" /> 
			</td>
		</tr>
	</tbody>
</table>', 99, 1, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A4800031E318 AS DateTime), CAST(0x0000A4800032163C AS DateTime), N'4K网络智能！欢迎比价后购买', N'SD345234674', 100, CAST(3599.00 AS Decimal(9, 2)), CAST(3299.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (98, 1, 2, 50, N'', N'奔腾（BNTN） 380功放+纽约至尊 套装家庭影院', N'', N'/upload/201504/20/thumb_201504200314272543.jpg', N'奔腾（BNTN） 380功放+纽约至尊 套装家庭影院（黑色）', N'奔腾,380功放,套装家庭影院,黑色', N'奔腾（BNTN） 380功放+纽约至尊 套装家庭影院送美诗特TA20无线话筒1套+自拍神器杆！ DTS解码数字功放 HDMI、光纤、同轴多组输入输出 USB、蓝牙播放功能', N'', N'奔腾（BNTN） 380功放+纽约至尊 套装家庭影院送美诗特TA20无线话筒1套+自拍神器杆！ DTS解码数字功放 HDMI、光纤、同轴多组输入输出 USB、蓝牙播放功能', N'<table style="width:750px;" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<a href="http://product.suning.com/105795090.html" target="_blank"><img width="247" height="260" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144524.jpg" border="0" /></a>
			</td>
			<td>
				<a href="http://product.suning.com/120345060.html" target="_blank"><img width="244" height="260" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144532.jpg" border="0" /></a>
			</td>
			<td>
				<a href="http://product.suning.com/104008402.html" target="_blank"><img width="259" height="260" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144541.jpg" border="0" /></a>
			</td>
		</tr>
		<tr>
			<td>
				<a href="http://product.suning.com/104823628.html" target="_blank"><img width="247" height="151" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144551.jpg" border="0" /></a>
			</td>
			<td>
				<a href="http://product.suning.com/105795089.html" target="_blank"><img width="244" height="151" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144601.jpg" border="0" /></a>
			</td>
			<td>
				<a href="http://product.suning.com/107105903.html" target="_blank"><img width="259" height="151" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795090_20140709144610.jpg" border="0" /></a>
			</td>
		</tr>
	</tbody>
</table>
<table style="width:750px;" border="0" cellspacing="1" cellpadding="1">
	<tbody>
		<tr>
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="219" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155335.jpg" /><br />
<img width="750" height="666" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155342.jpg" /><br />
<img width="750" height="690" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155348.jpg" /><br />
<img width="750" height="633" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155355.jpg" /><br />
<img width="750" height="630" class="err-product" alt="" src="http://image.suning.cn/images/nrgl/cpjs/105795087_20131227155401.jpg" />
			</td>
		</tr>
	</tbody>
</table>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A48000357BE6 AS DateTime), NULL, N'送美诗特TA20无线话筒1套+自拍神器杆！ DTS解码数字功放 HDMI、光纤、同轴多组输入输出 USB、蓝牙播放功能', N'SD6583245641', 10, CAST(5880.00 AS Decimal(9, 2)), CAST(4880.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (99, 1, 2, 51, N'', N'飞利浦（PHILIPS）DVP3690 全高清DVD影碟机播放器', N'', N'/upload/201504/20/thumb_201504200318534459.jpg', N'飞利浦（PHILIPS）DVP3690 全高清DVD影碟机播放器', N'飞利浦,PHILIPS,DVP3690,全高清DVD,影碟机,播放器', N'锐利清晰的影像，逼真的画质带给您极佳的影音娱乐体验', N'', N'2D电影系列在家中体验3D电影带来的刺激感，采用最新数字技术来分析2D视频内容，利用智能转码芯片点对点转换，从而将前台和后台之间的对象加以区分。这一细节可生成深度图，将普通2D视频格式转换为激动人心的3D。再配合兼容3D的电视，让您观看效果更好不晃眼，即可享受高清3D体…', N'<p>
	<img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_01.jpg" />
</p>
<p style="text-align:center;">
	<span style="font-family:Microsoft YaHei;font-size:18px;">锐利清晰的影像，逼真的画质带给您极佳的影音娱乐体验</span>
</p>
<p>
	<img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_02.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_03.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_04.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_05.jpg" />
</p>
<p>
	<div style="text-align:left;">
		<span style="color:#333300;font-family:&quot;Microsoft YaHei&quot;;font-size:24px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;超清画质呈现，还原真实的视觉盛宴</span>
	</div>
<br />
	<p>
		<br />
	</p>
	<p>
		<img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_06.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_07.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_08.jpg" />
	</p>
	<p style="text-align:center;">
		<span style="color:#996633;font-family:Microsoft YaHei;font-size:24px;"><strong>液晶电视最佳伴侣送给最爱的人给他最真的感动</strong></span>
	</p>
	<p>
		<img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_09.jpg" /><img alt="" src="http://img6.gomein.net.cn/image/prodimg/goodsDesc/descImg/201503/cat10000065/1122330258/pic_10.jpg" />
	</p>', 99, 1, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A4800036E070 AS DateTime), CAST(0x0000A480003799DD AS DateTime), N'锐利清晰的影像，逼真的画质带给您极佳的影音娱乐体验', N'SD3092308422', 100, CAST(499.00 AS Decimal(9, 2)), CAST(399.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (100, 1, 2, 51, N'', N'霍尼韦尔（Honeywel）HM-F1020-A-B HDMI高清数据线', N'', N'/upload/201504/20/thumb_201504200327369421.jpg', N'霍尼韦尔（Honeywel）HM-F1020-A-B HDMI高清数据线', N'霍尼韦尔,HDMI高清数据线', N'专利扁线设计！附送90°背夹！25K镀金端子！抗氧化！完美传输高品质画面！霍尼韦尔出品，国际品质！', N'', N'霍尼韦尔（Honeywel）HM-F1020-A-B HDMI高清数据线（镀金接口 扁平设计 支持4K*2K ）2米 黑色专利扁线设计！附送90背夹！25K镀金端子！抗氧化！完美传输高品质画面！霍尼韦尔出品，国际品质！', N'<table width="750" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_20.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_21.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_22.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_23.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_24.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_25.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_26.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_27.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_28.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_29.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_30.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_31.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_32.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_33.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_34.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_35.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_36.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_37.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_38.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_39.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_40.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_41.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_42.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_43.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_44.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_45.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_46.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_47.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_48.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_49.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_50.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="165" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_51.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_52.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_53.jpg" />
			</td>
		</tr>
		<tr>
			<td>
				<img width="750" height="166" class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/prodimg/productDesc/descImg/201404/desc6284/9123820115/1_54.jpg" />
			</td>
		</tr>
		<tr>
			<td>
			</td>
		</tr>
	</tbody>
</table>', 99, 2, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A480003908D9 AS DateTime), NULL, N'专利扁线设计！附送90°背夹！25K镀金端子！抗氧化！完美传输高品质画面！霍尼韦尔出品，国际品质！', N'SD5674897403', 49, CAST(59.00 AS Decimal(9, 2)), CAST(49.00 AS Decimal(9, 2)), 0)
INSERT [dbo].[dt_channel_article_goods] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [goods_no], [stock_quantity], [market_price], [sell_price], [point]) VALUES (101, 1, 2, 51, N'', N'Shinco/新科 S2300 无线麦克风 无线手持话筒 双手麦 KTV 舞台', N'', N'/upload/201504/20/thumb_201504200333240710.jpg', N'Shinco/新科 S2300 无线麦克风 无线手持话筒 双手麦 KTV 舞台', N'Shinco,新科,S2300,无线麦克风,无线手持话筒,双手麦', N'', N'', N'Shinco/新科 S2300 无线麦克风 无线手持话筒 双手麦 KTV 舞台有买就有送，买麦克风买一送九（话筒海绵套2个，话筒防滑胶圈2个，电脑转接头1个，5号电池4只），不容错过，数量有限，送完为止！', N'<p><img class="gomeImgLoad" alt="" src="http://img5.gomein.net.cn/image/bbcimg/productDesc/descImg/201410/desc04/A0003850992/2989713.jpg"/></p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A480003B0754 AS DateTime), CAST(0x0000A78E00EB8132 AS DateTime), N'有买就有送，买麦克风买一送九（话筒海绵套2个，话筒防滑胶圈2个，电脑转接头1个，5号电池4只），不容错过，数量有限，送完为止！', N'SD3973042344', 20, CAST(269.00 AS Decimal(9, 2)), CAST(199.00 AS Decimal(9, 2)), 0)
SET IDENTITY_INSERT [dbo].[dt_channel_article_goods] OFF
/****** Object:  Table [dbo].[dt_channel_article_down]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_article_down](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[click] [int] NOT NULL,
	[status] [int] NOT NULL,
	[is_msg] [int] NOT NULL,
	[is_top] [int] NOT NULL,
	[is_red] [int] NOT NULL,
	[is_hot] [int] NOT NULL,
	[is_slide] [int] NOT NULL,
	[is_sys] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[like_count] [int] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
	[source] [nvarchar](50) NULL,
	[author] [nvarchar](50) NULL,
 CONSTRAINT [PK__dt_channel_artic__65C116E7] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_channel_article_down] ON
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (56, 1, 5, 27, N'', N'干净整洁的绿色扁平化UI套件(PSD)', N'', N'/upload/201504/18/201504182310542211.jpg', N'干净整洁的绿色扁平化UI套件(PSD)', N'扁平化,UI套件,PSD', N'这是一套比较完整扁平化UI，主要以绿色为主，粉色，暗灰色为辅，干净整洁，看上去非常舒服。该UI套件包含了导航、人物列表、日历、视频播放、音乐播放器、登录框等等。', N'UI套件', N'这是一套比较完整扁平化UI，主要以绿色为主，粉色，暗灰色为辅，干净整洁，看上去非常舒服。该UI套件包含了导航、人物列表、日历、视频播放、音乐播放器、登录框等等。', N'<p>
	这是一套比较完整扁平化UI，主要以绿色为主，粉色，暗灰色为辅，干净整洁，看上去非常舒服。该UI套件包含了导航、人物列表、日历、视频播放、音乐播放器、登录框等等。
</p>
<p align="center">
	<img alt="" src="http://idowebok.u.qiniudn.com/71.jpg" />
</p>', 99, 1, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47E017E24AE AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (57, 1, 5, 26, N'', N'jqueryrotate制作机锋网积分抽奖效果', N'', N'/upload/201504/18/201504182324354376.jpg', N'jqueryrotate制作机锋网积分抽奖效果', N'jqueryrotate,积分,抽奖', N'应一网友的要求，做了一个类似机锋网积分抽奖的效果。其实这个效果和之前的“百度红包大放送抽奖效果”是一样的，使用了 jQuery 旋转插件——jquery.rotate.js，只是转盘不一样罢了。', N'', N'应一网友的要求，做了一个类似机锋网积分抽奖的效果。其实这个效果和之前的“百度红包大放送抽奖效果”是一样的，使用了 jQuery 旋转插件——jquery.rotate.js，只是转盘不一样罢了。', N'<p>
	应一网友的要求，做了一个类似机锋网积分抽奖的效果。其实这个效果和之前的“百度红包大放送抽奖效果”是一样的，使用了 jQuery 旋转插件——jquery.rotate.js，只是转盘不一样罢了。
</p>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/148.jpg" />
</p>', 99, 3, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47E0181DE0F AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (58, 1, 5, 26, N'', N'jQThumb – jQuery缩略图插件', N'', N'/upload/201504/18/201504182337532823.jpg', N'jQThumb – jQuery缩略图插件', N'jQThumb,jQuery,缩略图插件', N'一堆不同尺寸的图片创建相同尺寸的缩略图可不是件容易的事，除非有一个强大的后台程序或靠谱的软件，如果都没有或不想使用后台程序，那么可以试试 jQThumb。jQThumb 是一款基于 jQuery 的缩略图插件，它能够很方便的制作指定的尺寸的缩略图。', N'', N'为一堆不同尺寸的图片创建相同尺寸的缩略图可不是件容易的事，除非有一个强大的后台程序或靠谱的软件，如果都没有或不想使用后台程序，那么可以试试 jQThumb。jQThumb 是一款基于 jQuery 的缩略图插件，它能够很方便的制作指定的尺寸的缩略图。jQThumb 兼容所有浏览器，包括 I…', N'<p>
	为一堆不同尺寸的图片创建相同尺寸的缩略图可不是件容易的事，除非有一个强大的后台程序或靠谱的软件，如果都没有或不想使用后台程序，那么可以试试 jQThumb。jQThumb 是一款基于 jQuery 的缩略图插件，它能够很方便的制作指定的尺寸的缩略图。
</p>
<p>
	jQThumb 兼容所有浏览器，包括 IE6。在高级浏览器中使用背景方式实现，并设置图片的尺寸（background-size）和位置（background-position）实现居中；在 IE6 等老旧的浏览器中使用图片的方式实现，并使用绝对定位和 margin 实现居中。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/124.jpg" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47E01857246 AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (59, 1, 5, 26, N'', N'Tipso – 轻巧的jQuery提示框插件', N'', N'/upload/201504/18/201504182346214199.png', N'Tipso – 轻巧的jQuery提示框插件', N'Tipso ,jQuery,提示框插件', N'Tooltip（提示框）是一种常见的效果，它通常用在需要进一步解释、说明或提示的某个词上。这种小效果实现起来虽然不难，但如果你想不劳而获，可以试试 Tipso。', N'jQuery插件', N'Tooltip（提示框）是一种常见的效果，它通常用在需要进一步解释、说明或提示的某个词上。这种小效果实现起来虽然不难，但如果你想不劳而获，可以试试 Tipso。Tipso 基于 jQuery，提供了很多配置，如：显示动画持续时间背景颜色文本颜色显示位置（上/右/下/左）宽度偏移加载 aj…', N'<p>
	Tooltip（提示框）是一种常见的效果，它通常用在需要进一步解释、说明或提示的某个词上。这种小效果实现起来虽然不难，但如果你想不劳而获，可以试试 Tipso。
</p>
<p>
	Tipso 基于 jQuery，提供了很多配置，如：
</p>
<ul>
	<li>
		显示动画持续时间
	</li>
	<li>
		背景颜色
	</li>
	<li>
		文本颜色
	</li>
	<li>
		显示位置（上/右/下/左）
	</li>
	<li>
		宽度
	</li>
	<li>
		偏移
	</li>
	<li>
		加载 ajax 内容
	</li>
	<li>
		回调函数
	</li>
</ul>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/147.png" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47E0187F318 AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (60, 1, 5, 26, N'', N'ck_slide – 简单的jQuery幻灯片插件', N'', N'/upload/201504/18/201504182357178753.jpg', N'ck_slide – 简单的jQuery幻灯片插件', N'ck_slide,jQuery插件,幻灯片', N'ck_slide 是一款国产的 jQuery 幻灯片插件，它非常小巧，压缩后仅 3KB，所以它的功能也不算丰富，但一般使用已经够了。它支持淡入淡出/左右滚动、箭头/圆点控制、自动播放。', N'jQuery插件', N'ck_slide 是一款国产的 jQuery 幻灯片插件，它非常小巧，压缩后仅 3KB，所以它的功能也不算丰富，但一般使用已经够了。它支持淡入淡出/左右滚动、箭头/圆点控制、自动播放。', N'<p>
	ck_slide 是一款国产的 jQuery 幻灯片插件，它非常小巧，压缩后仅 3KB，所以它的功能也不算丰富，但一般使用已经够了。它支持淡入淡出/左右滚动、箭头/圆点控制、自动播放。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/144.jpg" />
</p>', 99, 5, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47E018AD99A AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (61, 1, 5, 26, N'', N'WOW.js – 让页面滚动更有趣', N'', N'/upload/201504/19/201504190003164918.jpg', N'WOW.js – 让页面滚动更有趣', N'WOW.js ,页面滚动,jQuery插件', N'有的页面在向下滚动的时候，有些元素会产生细小的动画效果。虽然动画比较小，但却能吸引你的注意。比如刚刚发布的 iPhone 6 的页面（查看）。如果你希望你的页面也更加有趣，那么你可以试试 WOW.js。', N'jQuery插件', N'有的页面在向下滚动的时候，有些元素会产生细小的动画效果。虽然动画比较小，但却能吸引你的注意。比如刚刚发布的 iPhone 6 的页面（查看）。如果你希望你的页面也更加有趣，那么你可以试试 WOW.js。WOW.js 依赖 animate.css，所以它支持 animate.css 多达 60 多种的动画效果，…', N'<p>
	有的页面在向下滚动的时候，有些元素会产生细小的动画效果。虽然动画比较小，但却能吸引你的注意。比如刚刚发布的 iPhone 6 的页面（查看）。如果你希望你的页面也更加有趣，那么你可以试试 WOW.js。
</p>
<p>
	WOW.js 依赖 animate.css，所以它支持 animate.css 多达 60 多种的动画效果，能满足您的各种需求。
</p>
<p>
	IE6、IE7 等老旧浏览器不支持 CSS3 动画，所以没有效果；而 wow.js 也使用了 querySelectorAll 方法，IE 低版本会报错。为了达到更好的兼容，最好加一个浏览器及版本判断。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/131.jpg" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F0000F38E AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (62, 1, 5, 27, N'', N'12个丰富多彩的图标PSD素材', N'', N'/upload/201504/19/201504190025169765.jpg', N'12个丰富多彩的图标PSD素材', N'图标,PSD素材', N'这组图标一共 12 个，包括谷歌浏览器（Chrome）、谷歌云端硬盘（Google Drive）、Gmail、Google Play、Skype、Dropbox、Evernote 等，格式为 PDS。', N'PSD素材', N'这组图标一共 12 个，包括谷歌浏览器（Chrome）、谷歌云端硬盘（Google Drive）、Gmail、Google Play、Skype、Dropbox、Evernote 等，格式为 PDS。', N'<p>
	这组图标一共 12 个，包括谷歌浏览器（Chrome）、谷歌云端硬盘（Google Drive）、Gmail、Google Play、Skype、Dropbox、Evernote 等，格式为 PDS。
</p>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/146.png" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F0006F50A AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (63, 1, 5, 27, N'', N'六边形上传按钮PSD源文件下载', N'', N'/upload/201504/19/201504190033256767.png', N'六边形上传按钮PSD源文件下载', N'上传按钮,PSD源文件', N'这是一组六边形上传按钮，只有 3 个，分别是上传前、上传中、上传完成。有 3 种颜色，你可以任意组合，在不同的状态显示不同的颜色是一种很好选择。格式为 PSD，希望你喜欢。', N'', N'这是一组六边形上传按钮，只有 3 个，分别是上传前、上传中、上传完成。有 3 种颜色，你可以任意组合，在不同的状态显示不同的颜色是一种很好选择。格式为 PSD，希望你喜欢。', N'<p>
	这是一组六边形上传按钮，只有 3 个，分别是上传前、上传中、上传完成。有 3 种颜色，你可以任意组合，在不同的状态显示不同的颜色是一种很好选择。格式为 PSD，希望你喜欢。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/135.png" />
</p>', 99, 0, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F00093052 AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (64, 1, 5, 27, N'', N'Linecons – 48个免费矢量图标', N'', N'/upload/201504/19/201504190039179625.png', N'Linecons – 48个免费矢量图标', N'Linecons,矢量图标', N'Linecons 是一套来自国外的免费矢量图标，共 48 个，包括云、爱心、五角星、电视、钥匙、放大镜、钻石等等。Linecons 能适合任何网站主题和任何设计，无论是 Web 项目或移动应用，并且它是免费的', N'', N'Linecons 是一套来自国外的免费矢量图标，共 48 个，包括云、爱心、五角星、电视、钥匙、放大镜、钻石等等。Linecons 能适合任何网站主题和任何设计，无论是 Web 项目或移动应用，并且它是免费的，包括商业项目。Linecons 有多种格式：Webfont (HTML/CSS)PDFAIPSDPNG (512512)…', N'<p>
	Linecons 是一套来自国外的免费矢量图标，共 48 个，包括云、爱心、五角星、电视、钥匙、放大镜、钻石等等。Linecons 能适合任何网站主题和任何设计，无论是 Web 项目或移动应用，并且它是免费的，包括商业项目。Linecons 有多种格式：
</p>
<ul>
	<li>
		Webfont (HTML/CSS)
	</li>
	<li>
		PDF
	</li>
	<li>
		AI
	</li>
	<li>
		PSD
	</li>
	<li>
		PNG (512×512)
	</li>
	<li>
		SVG
	</li>
</ul>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/123.png" />
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F000ACD41 AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (65, 1, 5, 27, N'', N'30个IOS7风格简洁线条图标PSD素材', N'', N'/upload/201504/19/201504190047488297.png', N'30个IOS7风格简洁线条图标PSD素材', N'IOS7,图标,PSD素材', N'PSD格式，含JPG预览图，关键字：图标,PSD素材,IOS7,线条,简洁,标签,云,音乐,用户,邮件,查找,刷新,喜欢,定位,苹果', N'', N'PSD格式，含JPG预览图，关键字：图标,PSD素材,IOS7,线条,简洁,标签,云,音乐,用户,邮件,查找,刷新,喜欢,定位,苹果', N'<p>
	PSD格式，含JPG预览图，关键字：图标,PSD素材,IOS7,线条,简洁,标签,云,音乐,用户,邮件,查找,刷新,喜欢,定位,苹果
</p>
<p align="center">
	<img alt="" src="http://img.lanrentuku.com/img/allimg/1310/13822298688602.jpg" />
</p>', 99, 2, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F000D34AB AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (66, 1, 5, 28, N'', N'腾讯游戏盒子2013官网页面html代码', N'', N'/upload/201504/19/201504190052499389.png', N'腾讯游戏盒子2013官网页面html代码', N'游戏盒子,页面html代码', N'腾讯游戏盒子是由腾讯自主研发的一款专为网页游戏用户定制的网页游戏辅助工具，具有智能加速、防掉线、帐号多开、全屏等特点。', N'', N'腾讯游戏盒子是由腾讯自主研发的一款专为网页游戏用户定制的网页游戏辅助工具，具有智能加速、防掉线、帐号多开、全屏等特点。腾讯游戏盒子官网页面也非常简单明了，这也是目前很多简单介绍型网站所采用的风格。页面下半部分的圆形图标使用了 CSS3 transform 旋转属性，当鼠标…', N'<p>
	腾讯游戏盒子是由腾讯自主研发的一款专为网页游戏用户定制的网页游戏辅助工具，具有智能加速、防掉线、帐号多开、全屏等特点。
</p>
<p>
	腾讯游戏盒子官网页面也非常简单明了，这也是目前很多简单介绍型网站所采用的风格。页面下半部分的圆形图标使用了 CSS3 transform 旋转属性，当鼠标移动到上面时会顺时针旋转 20 度，但 IE6 – IE9 不支持该属性，所以没有效果。
</p>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/2013/dowebok.com.49.jpg" />
</p>', 99, 4, 0, 1, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000A47F000E9348 AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (67, 1, 5, 28, N'', N'简单的描边图标', N'', N'/upload/201504/19/201504190056149231.png', N'简单的描边图标', N'简单的描边图标', N'这组图标只是一个路径，所以你可以更改成任何你喜欢的颜色，并且能与任何背景颜色融合，因为它是透明的。图标共有24个，包含了打印机、爱心、邮件、日历、时钟、搜索、箭头等等。', N'', N'这组图标只是一个路径，所以你可以更改成任何你喜欢的颜色，并且能与任何背景颜色融合，因为它是透明的。图标共有24个，包含了打印机、爱心、邮件、日历、时钟、搜索、箭头等等。', N'<p>
	这组图标只是一个路径，所以你可以更改成任何你喜欢的颜色，并且能与任何背景颜色融合，因为它是透明的。图标共有24个，包含了打印机、爱心、邮件、日历、时钟、搜索、箭头等等。
</p>
<p align="center">
	<img alt="" src="http://idowebok.u.qiniudn.com/dowebok.com.55.png" />
</p>', 99, 2, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F000F8D80 AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (68, 1, 5, 28, N'', N'Owl Carousel制作百度百科2014新首页幻灯片', N'', N'/upload/201504/19/201504190108304682.png', N'Owl Carousel制作百度百科2014新首页幻灯片', N'百度百科,幻灯片', N'百度百科启用了新首页，口号是“探索未知的世界”。今天我们使用 jQuery 幻灯片插件 Owl Carousel 制作其首页的幻灯片。', N'', N'百度百科启用了新首页，口号是“探索未知的世界”。今天我们使用 jQuery 幻灯片插件 Owl Carousel 制作其首页的幻灯片。', N'<p>
	百度百科启用了新首页，口号是“探索未知的世界”。今天我们使用 jQuery 幻灯片插件 Owl Carousel 制作其首页的幻灯片。
</p>
<p align="center">
	<img alt="" src="http://cdn.dowebok.com/img/132.jpg" />
</p>', 99, 0, 0, 1, 0, 0, 0, 1, 1, N'admin', 0, CAST(0x0000A47F0012D3ED AS DateTime), NULL, N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (69, 1, 5, 28, N'', N'让IE7 IE8支持CSS3 background-size属性', N'', N'/upload/201504/19/201504190114279783.png', N'让IE7 IE8支持CSS3 background-size属性', N'IE7, IE8支持,CSS3,background-size属性', N'CSS3 新增的 background-size 是一个很有用的属性，用于定义背景图片的尺寸，有了这个属性，你就可以任意指定背景图片的大小。其中最常用的值应该要数 cover 了，该值能让背景图片缩放至填满整个容器，即使是图片面积小于容器面积。', N'', N'CSS3 新增的 background-size 是一个很有用的属性，用于定义背景图片的尺寸，有了这个属性，你就可以任意指定背景图片的大小。其中最常用的值应该要数 cover 了，该值能让背景图片缩放至填满整个容器，即使是图片面积小于容器面积。由于 background-size 是 CSS3 新增的属性，…', N'<p>
	CSS3 新增的 background-size 是一个很有用的属性，用于定义背景图片的尺寸，有了这个属性，你就可以任意指定背景图片的大小。其中最常用的值应该要数 cover 了，该值能让背景图片缩放至填满整个容器，即使是图片面积小于容器面积。
</p>
<p>
	由于 background-size 是 CSS3 新增的属性，所以 IE 低版本自然就不支持了，但是老外写了一个 htc 文件，名叫 background-size polyfill，使用该文件能够让 IE7、IE8 支持 background-size 属性。其原理是创建一个&nbsp;img&nbsp;元素插入到容器中，并重新计算宽度、高度、left、top&nbsp;等值，模拟 background-size&nbsp;的效果。
</p>', 99, 0, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F0013C1D0 AS DateTime), CAST(0x0000A47F0014761E AS DateTime), N'本站', N'')
INSERT [dbo].[dt_channel_article_down] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [source], [author]) VALUES (70, 1, 5, 28, N'', N'PgwMenu – jQuery/Zepto响应式菜单', N'', N'/upload/201504/19/201504190123410600.png', N'PgwMenu – jQuery/Zepto响应式菜单', N'PgwMenu,jQuery/Zepto,响应式菜单', N'PgwMenu 是一款基于 jQuery / Zepto 的响应式菜单，兼容 PC 及移动设备，符合 SEO 标准，轻盈小巧，Gzip 压缩后仅 2.5KB，同时，你可以完全自定义样式风格。', N'', N'PgwMenu 是一款基于 jQuery / Zepto 的响应式菜单，兼容 PC 及移动设备，符合 SEO 标准，轻盈小巧，Gzip 压缩后仅 2.5KB，同时，你可以完全自定义样式风格。PgwMenu 内置了两套样式：深色（黑色）和浅色（灰色），如过选择深色，代码就如上面一样；如果选择浅色，需要加上 cla…', N'<p>
	PgwMenu 是一款基于 jQuery / Zepto 的响应式菜单，兼容 PC 及移动设备，符合 SEO 标准，轻盈小巧，Gzip 压缩后仅 2.5KB，同时，你可以完全自定义样式风格。
</p>
<p>
	PgwMenu 内置了两套样式：深色（黑色）和浅色（灰色），如过选择深色，代码就如上面一样；如果选择浅色，需要加上 class：light
</p>
<p>
	GitHub 地址：<a href="https://github.com/Pagawa/PgwMenu" target="_blank">https://github.com/Pagawa/PgwMenu</a> 
</p>
<p align="center">
	<img alt="" src="http://www.dowebok.com/img/149.png" />
</p>', 99, 2, 0, 1, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47F0016FE54 AS DateTime), CAST(0x0000A47F001725D7 AS DateTime), N'本站', N'')
SET IDENTITY_INSERT [dbo].[dt_channel_article_down] OFF
/****** Object:  Table [dbo].[dt_channel_article_content]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_article_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[click] [int] NOT NULL,
	[status] [int] NOT NULL,
	[is_msg] [int] NOT NULL,
	[is_top] [int] NOT NULL,
	[is_red] [int] NOT NULL,
	[is_hot] [int] NOT NULL,
	[is_slide] [int] NOT NULL,
	[is_sys] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[like_count] [int] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
	[sub_title] [nvarchar](255) NULL,
	[wapbanner] [nvarchar](255) NULL,
 CONSTRAINT [PK__dt_channel_artic__75F77EB0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_channel_article_content] ON
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (54, 1, 6, 25, N'about', N'公司简介', N'', N'', N'', N'', N'', N'', N'广州金冠燃气技术开发有限公司成立于1995年，注册地址为：广州荔湾区浣花路109号8012室，注册资本为1800万元。现有员工50人公司是一家股份制的区域性燃气供应企业，参股单位有：广东港建液化气有限公司。公司拥有《城市燃气企业》资质，以及《广州市城市燃气经营许可证》…', N'<p>广州金冠燃气技术开发有限公司成立于1995年，注册地址为：广州荔湾区浣花路109号8012室，注册资本为1800万元。现有员工50人公司是一家股份制的区域性燃气供应企业，参股单位有：广东港建液化气有限公司。公司拥有《城市燃气企业》资质，以及《广州市城市燃气经营许可证》、《广州市城市燃气管道承装许可证》等，是广州市燃气协会的理事会员单位之一。主要为芳村地区的民用、商业和工业企业用户提供管道天然气供应服务，并开展燃气工程安装、燃气设备维护、抢修抢险服务和燃气技术咨询服务、以及燃气具的零售及修理等业务。</p><p>多年来，公司始终坚持服务工作的核心思想，即：全心全意为客户服务的企业宗旨，发扬“诚信高效 服务用户、团结进取
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;争创效益”的企业精神，努力做到让客户放心，让客户满意，从而得到了广大用户的广泛认可。</p>', 1, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47E017852AC AS DateTime), CAST(0x0000AA7E01092D40 AS DateTime), N'COMPANY PROFILE', NULL)
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (55, 1, 6, 61, N'contact', N'联系我们', N'', N'', N'', N'', N'', N'', N'公司客户服务中心及燃气具商品专卖场地址：广州荔湾区浣花路109号8012房                       电话：020-81406162 / 81405151                       传真：020-81511752 / 81512605                       E-mail：jinguan_jg@126.com公司抢修抢险24小时专线         …', N'<h3>公司客户服务中心及燃气具商品专卖场</h3><div class="row"><div class="col-sm-4"><p>地址：广州荔湾区浣花路109号8012房<br/>电话：020-81406162 / 81405151<br/>传真：020-81511752 / 81512605<br/>E-mail：jinguan_jg@126.com<br/></p></div><div class="col-sm-4">公司抢修抢险24小时专线&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong class="tel"><em>020-81500573</em></strong></div><div class="col-sm-4">芳村供气站&nbsp; 020-81579190<br/>增城供气站&nbsp; 020-82968110<br/></div></div>', 2, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000A47E0178A4B4 AS DateTime), CAST(0x0000AA870009C8E0 AS DateTime), N'', N'')
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (56, 1, 6, 25, N'linian', N'企业理念', N'', N'/upload/201907/02/201907021611134884.jpg', N'', N'', N'', N'', N'打造以“安全供气、优质服务”为企业精神的区域性管道燃气专业公司', N'<p>打造以“安全供气、优质服务”为企业精神的<br/>区域性管道燃气专业公司</p>', 2, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7D0101A4A4 AS DateTime), CAST(0x0000AA8000A1EF56 AS DateTime), N'Safe Gas-Supply Quality Service', NULL)
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (57, 1, 6, 25, N'honor', N'资质证书', N'', N'/upload/201907/02/201907021632508324.jpg', N'', N'', N'', N'', N'', N'', 3, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7D0101BD40 AS DateTime), CAST(0x0000AA8001678F96 AS DateTime), N'', N'')
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (58, 1, 6, 25, N'organization', N'组织架构', N'', N'/upload/201907/02/201907021622347404.png', N'', N'', N'', N'', N'', N'', 4, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7D0101CC7C AS DateTime), CAST(0x0000AA8700191F84 AS DateTime), N'organizational structure', N'/upload/201907/11/201907110131275246.png')
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (59, 1, 6, 25, N'introduce', N'管道天然气介绍', N'', N'/upload/201907/02/201907021616556244.jpg', N'', N'', N'', N'', N'什么是天然气？天然气有什么特性？天然气无色、无味、无毒且无腐蚀，主要成分是甲烷。城市所使用的天然气，是经过加臭后的天然气，目的是一经泄露，能及早被发现，避免发生事故，是一种具有绿色环保、安全可靠、经济实惠的气源。绿色环保天然气是一种洁净环保的优质能源，…', N'<h2>什么是天然气？天然气有什么特性？</h2><p>天然气无色、无味、无毒且无腐蚀，主要成分是甲烷。城市所使用的天然气，是经过加臭后的天然气，目的是一经泄露，能及早被发现，避免发生事故，是一种具有绿色环保、安全可靠、经济实惠的气源。</p><div class="row"><div class="col-md-6"><div class="greed"><h2>绿色环保</h2><p>天然气是一种洁净环保的优质能源，几乎不含硫、粉尘和其他有害物质，燃烧产生二氧化碳少于其他化石燃料，造成温室效应较低，因而能从根本上改善环境质量。而且天然气是通过燃气管道直接输送到用户灶前，使用起来省时、省力，随时用，随时有。</p></div></div><div class="col-md-6"><div class="blue"><h2>安全可靠</h2><p>天然气无毒、易散发，比重轻于空气，不宜积聚成爆炸性气体，是较为安全的燃气。</p></div></div></div><h2>经济实惠</h2><p>1公斤液化气所提供的热值约是10000千卡，其热效率为80％至85％，1罐14．5公斤的瓶装液化气提供的热量为123250千卡。</p><p>按目前广州1罐液化气价格108元计算，以一户三口之家一个月使用1罐液化气为例，市民一个月需要花费108元。</p><p>天然气的热值约是8600千卡／立方米，其热效率同样为80％至85％，产生与1罐液化气同等热量需要天然气16．86立方米，目前芳村地区的天然气价格是4.35元／立方米，总价格是73.341元。而每度电的热值大约是860千卡，其热效率为96％，要产生123250千卡的热量，需要168千瓦时，按0．61元／千瓦时计算，共需要102.48元。</p><p>由此可见，还是使用管道天然气最便宜。不久的将来，芳村的天然气管网将与广州市市政大管网相接驳，到时使用天然气的价格将会更加便宜。</p>', 5, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7D0101E2C0 AS DateTime), CAST(0x0000AA8000A26D96 AS DateTime), N'General Knowledge of Natural Gas', NULL)
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (60, 1, 6, 64, N'check', N'业务查询', N'', N'', N'', N'', N'', N'', N'广州金冠燃气技术开发有限公司已在微信公众号上设立了相关的业务查询功能：欢迎前往微信公众号查询所需办理业务的内容或可致电020-81405151、020-81406162咨询。', N'<p>广州金冠燃气技术开发有限公司已在微信公众号上设立了相关的业务查询功能：<br/>欢迎前往微信公众号查询所需办理业务的内容或可致电<strong>020-81405151、020-81406162</strong>咨询。</p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F00B4120C AS DateTime), CAST(0x0000AA8001703C66 AS DateTime), N'', N'')
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (61, 1, 6, 64, N'show', N'燃具展销', N'', N'', N'', N'', N'', N'', N'◆报装条件1. 属于小区，并配有管道燃气设施，或已贴通知准备开发小区；2. 开放式、封闭式厨房或者厨房移位改变用途等不符合城镇燃气规范的业主不能报装。◆报装程序1. 选择小区、楼栋，填写房号；拍照上传房产证第一二页及身份证正反两面；确认提交并缴费；2. 我供气单位…', N'<p><strong>◆报装条件</strong></p><p>1. 属于小区，并配有管道燃气设施，或已贴通知准备开发小区；</p><p>2. 开放式、封闭式厨房或者厨房移位改变用途等不符合城镇燃气规范的业主不能报装。</p><p><strong>◆报装程序</strong></p><p>1. 选择小区、楼栋，填写房号；拍照上传房产证第一二页及身份证正反两面；确认提交并缴费；</p><p>2. 我供气单位将于2个月内上门查勘、复合条件并安装通气点火。</p><p><br/></p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F00B4297C AS DateTime), CAST(0x0000AA80016FF751 AS DateTime), N'', N'')
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (62, 1, 6, 64, N'person', N'用户中心', N'', N'', N'', N'', N'', N'', N'广州金冠燃气技术开发有限公司已在微信公众号上设立了用户中心功能，欢迎前往微信公众号登陆用户中心查询或者办理业务。', N'<p>广州金冠燃气技术开发有限公司已在微信公众号上设立了用户中心功能：<br/>欢迎前往微信公众号登陆用户中心查询或者办理业务。</p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F00B44344 AS DateTime), CAST(0x0000AA80017051A4 AS DateTime), N'', N'')
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (64, 1, 6, 65, N'service_people', N'居民报装开通', N'', N'', N'', N'', N'', N'', N'一、验证联系人手机号码2二、填写并提交申请三、报装提交完成四、非居民请准备以下资料（一）身份证明（提供其中一项）：1、非项目业主法定代表人办理的，提供法人证明或营业执照，项目业主（或代业主）用气申请业务办理授权书和被委托人身份证。2、项目业主法定代表人亲…', N'<p style="white-space: normal;"><strong>一：报装条件</strong><br/></p><p>1. 属于小区，并配有管道燃气设施，或已贴通知准备开发小区；</p><p>2. 开放式、封闭式厨房或者厨房移位改变用途等不符合城镇燃气规范的业主不能报装。</p><p><strong>二：报装程序</strong></p><p>1. 选择小区、楼栋，填写房号；拍照上传房产证第一二页及身份证正反两面；确认提交并缴费；</p><p>2. 我供气单位将于2个月内上门查勘、复合条件并安装通气点火。</p><p><br/></p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F014426D0 AS DateTime), CAST(0x0000AA8001723DF9 AS DateTime), N'', N'')
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (65, 1, 6, 65, N'service', N'非居民报装开通', N'', N'', N'', N'', N'', N'', N'一、验证联系人手机号码二、填写并提交申请三、报装提交完成四、非居民请准备以下资料（一）身份证明（提供其中一项）：1、非项目业主法定代表人办理的，提供法人证明或营业执照，项目业主（或代业主）用气申请业务办理授权书和被委托人身份证。2、项目业主法定代表人亲自…', N'<p style="white-space: normal;"><strong>一、验证联系人手机号码</strong><br/></p><p>二、填写并提交申请</p><p>三、报装提交完成</p><p>四、非居民请准备以下资料</p><p><strong>（一）身份证明（提供其中一项）：</strong></p><p>1、非项目业主法定代表人办理的，提供法人证明或营业执照，项目业主（或代业主）用气申请业务办理授权书和被委托人身份证。</p><p>2、项目业主法定代表人亲自办理的，提供法人证明、项目业主（或代业主）法定代表人身份证。</p><p><strong>（二）可供气证明（只需提供其中一项）：</strong></p><p>1、房地主权证（复印件）;</p><p>2、建设用地规划许可证及附图（红线图）复印件;</p><p>3、建设工程规划许可证及附图（总平面图）复印件;</p><p>4、政府立项文件（项目核准文件）;</p><p>5、镇街及以上政府出具的供气证明等文件;</p><p>6、物业业主同意申请用气证明书（非产权单位人申请需提供）。</p><p><br/></p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA7F01447A04 AS DateTime), CAST(0x0000AA8001724DB4 AS DateTime), N'', N'')
INSERT [dbo].[dt_channel_article_content] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time], [sub_title], [wapbanner]) VALUES (66, 1, 6, 66, N'', N'详细操作可以关注我司微信公众号', N'', N'/upload/201907/05/201907051421127121.png', N'', N'', N'', N'', N'扫一扫二维关注公众号或在微信搜索 “jinguanranqi”', N'<p>扫一扫二维码关注公众号<br/>或在微信搜索 “jinguanranqi”</p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'hrlong', 0, CAST(0x0000AA8100EC106C AS DateTime), CAST(0x0000AA8100EEAAAE AS DateTime), N'', N'')
SET IDENTITY_INSERT [dbo].[dt_channel_article_content] OFF
/****** Object:  Table [dbo].[dt_channel_article_cases]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_channel_article_cases](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NOT NULL,
	[channel_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[call_index] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[tags] [nvarchar](500) NULL,
	[zhaiyao] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[sort_id] [int] NOT NULL,
	[click] [int] NOT NULL,
	[status] [int] NOT NULL,
	[is_msg] [int] NOT NULL,
	[is_top] [int] NOT NULL,
	[is_red] [int] NOT NULL,
	[is_hot] [int] NOT NULL,
	[is_slide] [int] NOT NULL,
	[is_sys] [int] NOT NULL,
	[user_name] [nvarchar](100) NULL,
	[like_count] [int] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dt_channel_article_cases] ON
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (1, 1, 7, 58, N'', N'气费未能划扣成功,将会收到信息提示', N'', N'', N'', N'', N'', N'气费未能划扣成功,将会收到信息提示', N'对于在银行划扣气费并且划扣未能成功的用户（即欠费用户）进行短信息提示的系统已经开通了。每月划扣日之后，凡是划扣不成功的用户，将会收到以下信息提示内容：“金冠燃气提示：您的银行代扣账户余额不足，本次管道燃气费未划扣成功', N'<p>&nbsp; &nbsp; &nbsp; &nbsp;我公司对于在银行划扣气费并且划扣未能成功的用户（即欠费用户）进行短信息提示的系统已经开通了。每月划扣日之后，凡是划扣不成功的用户，将会收到以下信息提示内容：“金冠燃气提示：您的银行代扣账户余额不足，本次管道燃气费未划扣成功，请到客服中心缴交现金，滞纳金将计收至缴费成功日，<br/>咨询电话8140515或81406162”，敬请有关用户留意，并请未能在我公司客服系统登记好有效手机号码的用户，及时提供有效的手机号码，以便接受信息。</p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA80011B1F4C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (2, 1, 7, 60, N'', N'安全用气问答', N'', N'/upload/201907/04/201907042126051495.jpg', N'', N'', N'', N'安全用气问答', N'安装煤气热水器应注意什么问题', N'<p>①为什么禁止私自拆装煤气设备？</p><p>答：因为私自拆装煤气设备会造成煤气设备损坏，特别是未经气密性检查，会出现煤气泄漏，发生煤气中毒、爆炸、火灾事故。如确需改装，请拨打我公司81406162客户服务热线办理。&nbsp;<br/><br/></p><p>②安装煤气热水器应注意什么问题？</p><p>答：◇用户需要安装煤气热水器时，请拨打81406162客户服务热线或到煤气公司办理申报手续，由煤气公司安装，未经批准不得擅自安装；</p><p>◇用户必须选用国家规定的并适合我市煤气使用要求的煤气热水器；</p><p>◇煤气热水器严禁安装在浴室和厕所里，安装部位必须通风良好。<br/><br/></p><p>③室内煤气设施容易发生漏气的部位有哪些？</p><p>答：室内煤气设施漏气常发生在连接部位，如煤气开关、胶管、铅管、煤气表等部位。<br/><br/></p><p>④发现煤气中断应怎样处理？</p><p>答：煤气供应中断时，应及时关闭煤气开关，防止空气混入管道内。在恢复供气时应将管道内的空气排放后方可使用。</p><p><br/></p><p>⑤发现煤气泄漏怎么办？</p><p>答：发现煤气设施漏气，用户首先应及时打开门窗，不要在室内逗留，并严禁一切明火种入内，更不要启动电源开关，以免引起爆炸事故，并要立即拨打广州市煤气公司客户服务热线电话81405151、81406162；地下室和夹层应安装通风设备，防止煤气聚积发生煤气爆炸事故。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA790135EDCC AS DateTime), CAST(0x0000AA8001613D10 AS DateTime))
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (3, 1, 7, 60, N'', N'安全用气须知', N'', N'/upload/201907/04/201907042126256496.jpg', N'', N'', N'', N'安全用气须知', N'用气前应仔细阅读《天然气安全使用指南》，掌握燃气设施的维护、报修及安全常识', N'<p>1、用气前应仔细阅读《天然气安全使用指南》，掌握燃气设施的维护、报修及安全常识。</p><p>2、连接燃器具的软管，应在灶面下自然下垂，且保持10厘米以上的距离，以免被火烤焦、酿成事故。注意经常检查软管有无松动、脱落、龟裂变质。软管老化应及时更换。</p><p>3、教育儿童不要玩弄天然气灶具开关。</p><p>4、用户应遵守下列规定：</p><p>（1）严禁在厨房和有天然气设备的房间内睡人；</p><p>（2）禁止自购乱拉乱接软管；软管不能超过3米；</p><p>（3）严禁私自拆、装、移、改天然气管道设备；</p><p>（4）不要将天然气管道作为电线接地线。</p><p>（5）天然气灶具、气表、热水器周围不要堆放易燃物品。</p><p>（6）不能将室内天然气管道、气表包裹密封在室内装饰材料内，避免管道腐蚀、破损泄漏。</p><p>5、使用完毕或者长时间不使用燃气（如外出探亲、旅游等），注意关好天然气灶或热水器开关，做到人走火灭；同时将表前阀门关闭，确保安全。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7A0137232C AS DateTime), CAST(0x0000AA8001615558 AS DateTime))
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (4, 1, 7, 60, N'', N'安全用气知识——家用燃气灶具的选择和使用', N'', N'/upload/201907/04/201907042126446496.jpg', N'', N'', N'', N'安全用气知识——家用燃气灶具的选择和使用', N'燃气灶有5种不同的分类，若按使用气种分，有天然气灶、人工煤气灶、液化石油气灶等3种；按材质分，有铸铁灶、不锈钢灶、搪瓷灶等，按灶眼分，有单眼灶、双眼灶、多眼灶；按点火方式分，有电脉剖点火灶、压电陶瓷点火灶等；按安装方式分，有台式灶、嵌入式灶', N'<p>&nbsp; &nbsp; &nbsp; &nbsp; 燃气灶有5种不同的分类，若按使用气种分，有天然气灶、人工煤气灶、液化石油气灶等3种；按材质分，有铸铁灶、不锈钢灶、搪瓷灶等，按灶眼分，有单眼灶、双眼灶、多眼灶；按点火方式分，有电脉剖点火灶、压电陶瓷点火灶等；按安装方式分，有台式灶、嵌入式灶。因此，消费者在选购时应注意以下几个问题：</p><p>①燃气灶具种类应当适合当地气源</p><p>　　要清楚自己家所使用的气种，是天然气、人工煤气还是液化石油气。这三类气体的热值、燃气压力各不相同，如果灶具类型与气体不符，将可能发生危险。所以，用于不同气源的灶具千万不要混用，选购灶具前，应先清楚所使用的燃气种类。顾客在选购家用燃气灶时应注意包装箱上明示的是什么气种，也可从家用燃气灶的型号辨别燃气种类。如型号JZ-2T-A的家用燃气灶，J代表家用，Z代表灶，2代表两眼灶，T代表天然气。如果字母是R则代表人工煤气，Y则代表液化石油气。</p><p>②包装和标识应齐全</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 这点很重要，如果是“三无”产品，千万不要轻易购买，否则会对您的人身安全造成危险。一般说来，包装上应标明厂名、厂址和型号等，且每台灶具应有合格证。使用说明书，灶具的侧面板上应有铭牌(即产品商标)，而铭牌上也应标注厂名、型号，适用气体及压力、热流量及生产日期等。</p><p>③适当的热流量和良好的气密性</p><p>热流量：家用燃气灶具设计的热流量值越大，加热能力就越强，即平时所说的火力越猛。但是，实际上热流量的大小应与烹任方式及灶具相适应，如果只追求大的热流量，会大大降低灶具的热效率，还会增加废烟气的排放量。</p><p>气密性：如果所选购及使用的灶具气密性不合格，则是造成安全事故的最大隐患。这里给大家介绍一个简单的检测方法：接通气源，关闭旋钮，用皂液刷涂塑料管路、阀体及接口片，如无气体泄漏，说明气密性好，可放心购买。</p><p>④机体质量和点火开关</p><p>　　机体质量选择：燃气灶外观应美观大方，机体各处无碰撞现象，用手按压台面。应无明显翘度；用手握住灶具两对角来回拧动，灶具应不会变形，灶具的面板材料不能使用马口铁(可用磁铁吸附来区分是否马口铁或不锈钢材料)；一些以铸铁、钢板等材料制作的产品表面喷漆应均匀平整，无起泡或脱落现象。燃气灶的整体结构应稳定可靠，灶面要光滑平整，无明显翘曲，零部件的安装要牢固可靠，不能有松脱现象。灶具的炉头、火盖应加工精细，无明显的毛刺。</p><p>　　点火开关：点火开关的位置，即打开(0N)和关闭(OFF)以及大、小火的位置(一般都有图案标识)应标注清晰准确；用电子点火开关点火时，声音应清脆有力。如果打火的声音软绵绵的，且声音发闷，那就很可能是伪劣产品。一般合格的灶具点火开关连续使用寿命在6000次以上，且旋塞气密性仍然合格；而劣质产品点火器的次数都在2000次以下。一般情况，合格产品如果连续点火10次，点燃的次数不得少于8次，且所有火孔应在4秒时间内全部燃遍。</p><p>⑤火焰燃烧状态</p><p>　　这是灶具燃烧质量的重要体现，一般情况，燃烧时外焰应呈淡蓝色。(有时可能会呈桔红色，这说明燃气内有杂质或少量的空气，但不影响正常使用)。点燃后，调节火焰大小控制钮，大、小火应层次明显，燃烧稳定。即便是调节到最小状态，或把气门关小，应仍能正常燃烧，不跳火，不熄火，不回火。</p><p>一般情况，好的燃气灶具使用寿命在5-10年(依据国家有关规定，即标准打火不少于5000次)，而劣质的燃气灶具，其使用寿命只有1-2年，并且在使用过程中会造成不安全的人身伤亡事故。此外，由于各地区燃气气质不尽相同，尤其是人工煤气，差异较大。</p><p><br/></p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000AA7B013903A4 AS DateTime), CAST(0x0000AA8001616BE2 AS DateTime))
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (5, 1, 7, 60, N'', N'装修时应注意的事项', N'', N'/upload/201907/04/201907042127036496.jpg', N'', N'', N'', N'装修时应注意的事项', N'用户不得因改动房屋结构或装修将燃气管道设施暗埋在墙、地板或天花板内，或将燃气设施、接口开关暗藏或遮蔽在厨柜等密闭不通风处', N'<p>1、用户不得自行安装、改装、拆装户内燃气管道设施。</p><p>2、用户不得因改动房屋结构或装修将燃气管道设施暗埋在墙、地板或天花板内，或将燃气设施、接口开关暗藏或遮蔽在厨柜等密闭不通风处；</p><p>3、用户不得因改动房屋结构或装修将燃气管道设施置于浴室、卧室等密封室内；</p><p>4、灶台、热水器或电气设备位置与燃气设施距离不得小于30cm，燃气管（镀锌管、胶管）经过的地方不允许有电器；</p><p>5、用户在装修时应注意燃气留口的位置，燃气留口与燃气具的连接燃气胶管长度不得超过2米；</p><p>6、用户不得使用直排式热水器，半密闭式（烟道式）热水器不能安装在浴室内；</p><p>7、用户在装橱柜时，应根据燃气留口位置，打好胶管孔。为了保证燃气的正常燃烧，应在灶具下面的门板上钻一些空。</p><p><br/></p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000AA7B013A7978 AS DateTime), CAST(0x0000AA80016181CD AS DateTime))
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (6, 1, 7, 60, N'', N'天然气基本知识', N'', N'/upload/201907/04/201907042127251496.jpg', N'', N'', N'', N'天然气基本知识', N'天然气是无色、无味、无毒且无腐蚀性，主要成分为甲烷（CH4），也包括一定量的乙烷、丙烷和重质碳氢化合物，还有少量的氮气、氧气、二氧化碳和硫化物的可燃性气体', N'<p>&nbsp; &nbsp; &nbsp; 天然气是无色、无味、无毒且无腐蚀性，主要成分为甲烷（CH4），也包括一定量的乙烷、丙烷和重质碳氢化合物，还有少量的氮气、氧气、二氧化碳和硫化物的可燃性气体。</p><p>&nbsp; &nbsp; &nbsp; 天然气在我国分布很广，我国最早在四川自贡自流井使用天然气，已具有5000年历史，是世界上最早发现和使用天然气的国家。根据开采和形成的方式不同，天然气可分为5种：</p><p>①纯天然气：从地下开采出来的气田气为纯天然气；</p><p>②石油伴生气：伴随石油开采一块出来的气体称为石油伴生气；</p><p>③矿井瓦斯：开采煤炭时采集的矿井气；</p><p>④煤层气：从井下煤层抽出的矿井气；</p><p>⑤凝析气田气：含石油轻质馏分的气体。</p><p>为方便运输，天然气经过加工还可形成：</p><p>⑥压缩天然气：压缩天然气(CompressedNaturalGas,简称CNG)是将天然气压缩增压至200kg/cm2时，天然气体积缩小200倍，并储入容器中，便于汽车运输，经济运输半径以150-200公里为妥。压缩天然气可用于民用及作为汽车清洁燃料； CNG可作为车辆燃料利用。这种以CNG为燃料的车辆叫做NGV（NaturalGasVehicle）。</p><p>⑦液化天然气：当天然气在大气压下，冷却至约-162℃时，天然气由气态转变成液态，称为液化天然气（LiquefiedNaturalGas，缩写为LNG）。LNG无色、无味、无毒且无腐蚀性，其体积约为同量气态天然气体积的1/600，LNG的重量仅为同体积水的45%左右。液化天然气用液化甲烷船及专用汽车运输。</p><p>天然气作为一种优质的气体燃料，以其比人工煤气、液化石油气更清洁、经济、高效、安全的优势已被世界广泛采用，特别是其对环境保护所起的积极作用已越来越受到人们的关注。它的清洁环保主要表现在：天然气代替煤和燃油，可使燃烧后的废物排放大幅度降低，当天然气的应用范围达到一定水准时，以煤的烟尘、煤与石油产品燃烧后排放的二氧化硫为主体的空气污染将得到有效抑制，城市空气质量将得到明显改善。</p><p>天然气广泛用于民用及商业燃气灶具、热水器、采暖及制冷，也用于造纸、冶金、采石、陶瓷、玻璃等行业，还可用于废料焚烧及干燥脱水处理。</p><p>&nbsp; &nbsp; &nbsp; 天然气可用于发电，以天然气为燃料的燃气轮机电厂的废物排放水平大大低于燃煤与燃油电厂，而且发电效率高，建设成本低，建设速度快；另外，燃气轮机启停速度快，调峰能力强，耗水量少，占地省。</p><p>&nbsp; &nbsp; &nbsp; 天然气也可用作化工原料。以天然气为原料的一次加工产品主要有合成氨、甲醇、炭黑等近20个品种，经二次或三次加工后的重要化工产品则包括甲醛、醋酸、碳酸二甲酯等50个品种以上。以天然气为原料的化工生产装置投资省、能耗低、占地少、人员少、环保性好、运营成本低。</p><p><br/></p>', 99, 0, 0, 0, 1, 0, 0, 0, 1, N'admin', 0, CAST(0x0000AA7B013ADD14 AS DateTime), CAST(0x0000AA8001619AF6 AS DateTime))
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (7, 1, 7, 60, N'', N'天然气的用途', N'', N'', N'', N'', N'', N'天然气的用途', N'天然气广泛用于民用及商业燃气灶具、热水器、采暖及制冷，也用于造纸、冶金、采石、陶瓷、玻璃等行业，还可用于废料焚烧及干燥脱水处理', N'<p>&nbsp; &nbsp; 天然气广泛用于民用及商业燃气灶具、热水器、采暖及制冷，也用于造纸、冶金、采石、陶瓷、玻璃等行业，还可用于废料焚烧及干燥脱水处理。</p><p>&nbsp; &nbsp; &nbsp;天然气可用于发电，以天然气为燃料的燃气轮机电厂的废物排放水平大大低于燃煤与燃油电厂，而且发电效率高，建设成本低，建设速度快；另外，燃气轮机启停速度快，调峰能力强，耗水量少，占地省。</p><p>&nbsp; &nbsp; &nbsp;天然气也可用作化工原料。以天然气为原料的一次加工产品主要有合成氨、甲醇、炭黑等近20个品种，经二次或三次加工后的重要化工产品则包括甲醛、醋酸、碳酸二甲酯等50个品种以上。以天然气为原料的化工生产装置投资省、能耗低、占地少、人员少、环保性好、运营成本低。</p><p>&nbsp; &nbsp; &nbsp;天然气可用作汽车燃料，其一氧化碳、氮氧化物与碳氢化合物排放水平都大大低于汽油、柴油发动机汽车，不积碳，不磨损，运营费用很低，是一种环保型燃料。</p><p><br/></p>', 99, 0, 0, 0, 0, 0, 0, 0, 1, N'admin', 0, CAST(0x0000AA7B013BADAC AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (8, 1, 7, 60, N'', N'天然气的环保性', N'', N'', N'', N'', N'', N'天然气的环保性', N'天然气广泛用于民用及商业燃气灶具、热水器、采暖及制冷，也用于造纸、冶金、采石、陶瓷、玻璃等行业，还可用于废料焚烧及干燥脱水处理', N'<p>&nbsp; &nbsp; &nbsp;天然气广泛用于民用及商业燃气灶具、热水器、采暖及制冷，也用于造纸、冶金、采石、陶瓷、玻璃等行业，还可用于废料焚烧及干燥脱水处理。</p><p>&nbsp; &nbsp; &nbsp;天然气可用于发电，以天然气为燃料的燃气轮机电厂的废物排放水平大大低于燃煤与燃油电厂，而且发电效率高，建设成本低，建设速度快；另外，燃气轮机启停速度快，调峰能力强，耗水量少，占地省。</p><p>&nbsp; &nbsp; &nbsp;天然气也可用作化工原料。以天然气为原料的一次加工产品主要有合成氨、甲醇、炭黑等近20个品种，经二次或三次加工后的重要化工产品则包括甲醛、醋酸、碳酸二甲酯等50个品种以上。以天然气为原料的化工生产装置投资省、能耗低、占地少、人员少、环保性好、运营成本低。</p><p>&nbsp; &nbsp; &nbsp;天然气可用作汽车燃料，其一氧化碳、氮氧化物与碳氢化合物排放水平都大大低于汽油、柴油发动机汽车，不积碳，不磨损，运营费用很低，是一种环保型燃料。</p><p><br/></p>', 99, 0, 0, 0, 1, 0, 0, 0, 1, N'admin', 0, CAST(0x0000AA7C015F6BAC AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (9, 1, 7, 60, N'', N'天然气的高效利用', N'', N'/upload/201907/04/201907042130498840.jpg', N'', N'', N'', N'天然气的高效利用', N'受各种因素的制约，国内先进厂家的产品其热效率一般在80～85％左右，国外该类型产品的热效率也不超过87％。由于燃气价格上涨，国外强化传热效率燃具投放市场量在增加，其中包括冷凝式燃气用具', N'<p>1. 冷凝式热水器</p><p>受各种因素的制约，国内先进厂家的产品其热效率一般在80～85％左右，国外该类型产品的热效率也不超过87％。由于燃气价格上涨，国外强化传热效率燃具投放市场量在增加，其中包括冷凝式燃气用具。</p><p>冷凝式燃气热水器，整机热效率比普通热水器提高15％以上，高达103.6％(20L)。而在冷凝式热水器领域已经历了三代产品的发展，最新推出的第三代冷凝式燃气热水器热效率高达105%，比传统热水器省气1/4以上。节能环保是未来燃气热水器的发展趋势，而冷凝燃气热水器刚好具备这两个特征。所以未来燃气热水器市场将会有有冷凝热水器的空间。<br/><br/></p><p>2. 天然气汽车</p><p>各种汽车燃料比较，使用天然气作为车用燃料排放效果最好。据美国环境保护署EPA（U.S Environmental Protection Agency）报告，天然气汽车较汽油车相比，可以降低HC排放量40%、CO排放量50%，无碳烟排放；CNG汽车尾气排放效果也好于LPG车。特别是在使用液化天然气(LNC)气化后的天然气将没有S0的排放量，有害物质的排放量大幅度减少。天然气的热值较高，同时从热能含量上看，1立方米的天然气相当干1.13升汽油的当量。</p><p>监测数据表明：CNG汽车各项排放指标均可达到欧Ⅲ标准，而且其抗爆能力强，发动机运转平稳，噪声低。极少向大气排放硫、苯、烯类废气、醛类废气，燃烧时产生的污染也比燃用其它燃料少得多，而且由于发动机“烧损”的机油少，汽缸不积碳，减少了发动机磨损，节约维修费用。</p><p>天然气的辛烷值高于110，抗爆性能优于汽油，发动机燃用天然气时可以采用较高的压缩比（小尺寸发动机可取14），因此同汽油机相比，天然气发动机具有更好的经济性，而且由柴油机改装的天然气发动机的颗粒废物特别少，因此不需要再安装昂贵的、目前性能又不太可靠的颗粒过滤器。从而节约了维修费用，因此天然气车将对车主具有较大的吸引力。<br/><br/></p><p>3. 天然气发动机驱动的压缩式制冷机</p><p>压缩式制冷主要是制冷剂在压缩机(螺杆式、往复式、离心式)、冷凝器、节流机构、蒸发器等设备中循环流动，完成制冷、制热的过程。传统上压缩机是由电带动进行工作的，设备耗电量较大，把天然气用于压缩式制冷机，即通过燃烧天然气的狄塞尔发动机或者燃气轮机提供动力，来推动制冷压缩机运转。用天然气发动机驱动的压缩式制冷机具有以下优点：</p><p>(1)用天然气发动机驱动压缩机运转，可以根据室内温度变化调节发动机，使之以最高效率运转，实现快速制冷和节能；</p><p>(2)由于压缩机并不通过煤或油发电驱动，而是用天然气发动机，因此减少了对环境的污染。</p><p>(3)天然气发动机驱动的压缩式制冷机组除一些辅助设备外，基本不耗电。而且避免了用电高峰时因电力不足成停电造成的电动压缩式制冷机无法运转的麻烦。</p><p>(4)天然气发动机驱动的压缩式制冷机除可以制冷、供暖外，还可以回收天然气发动机的尾气废热，所以提高了机组的供暖能力。<br/><br/></p><p>4. 冷凝式锅炉与热泵联合系统</p><p>冷凝式锅炉与热泵联合系统不仅利用了冷凝式锅炉节能和环保的原理，还利用了热泵提高低品位热能到高品位热能的原理。在该系统中为了使热泵系统尽可能的回收较低品位的热能，减少热泵系统装机容量和电耗，做到尽可能的节能，先将热网回水与来自冷凝式锅炉本体高温的排烟进行换热，使烟气冷却至一定的温度，再将低温的烟气通过冷凝换热器（为防腐材料，如不锈钢），回收烟气中的部分潜热和显热。为了维持热泵蒸发端低温热源温度的稳定性，并减小蒸发端的传热平均温差，采用烟气先通过间壁式冷凝换热器（如板式、管式等）或接触式冷凝换热器（如液柱式、填料式等），用低温水（冷却水）先与烟气换热，再将被加热的冷却水用水泵抽送到热泵的蒸发端，和热泵工质(如R11等)发生热交换。</p><p>冷凝式锅炉与热泵联合系统是一种高效节能和环保的热能回收系统，针对我国目前供热现状：污染严重，热量不足，急需扩建和新建一些锅炉房资金紧缺等问题，采用冷凝式锅炉与热泵联合系统应是一种值得探讨和应用的节能和环保方式。该系统还能能产生可观的冷凝水，这一部分水可以加以处理并利用，可作为一些水质要求不高的工业用水和畜牧用水。并且该系统的热泵部分在夏季也能给用户提供冷量，作小型的中央空调使用，具有更大的节能性。<br/><br/></p><p>5.“双聚能&quot;内燃火节能燃气灶</p><p>“双聚能”内燃火燃气节能灶的热效率达到63％，高于国家标准要求。其技术核心在于半封闭的燃烧室，把热量强制集中在燃烧室内，减少热量流失，又防止火焰受外界气流的影响、燃烧更平稳，热量利用率更高。为确保在半封闭燃烧室内有足够的氧气，特别采用上进风夹层结构设计，确保燃烧充分。此外为高效利用猛火还采用独特的分层火焰设计，从而完成了两次聚能。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7D015FCE1C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (10, 1, 7, 60, N'', N'私接私改燃气管道的危害', N'', N'', N'', N'', N'', N'私接私改燃气管道的危害', N'私自安装或改动燃气管道是指用户自行或请一些没有施工资质的装修工人施工，质量没有保障，且没有经过专业验收，其安全性能很难保障，改动后的管道或设备极可能发生泄漏，容易导致安全事故，属违章用气行为', N'<p>&nbsp; &nbsp; &nbsp; 私自安装或改动燃气管道是指用户自行或请一些没有施工资质的装修工人施工，质量没有保障，且没有经过专业验收，其安全性能很难保障，改动后的管道或设备极可能发生泄漏，容易导致安全事故，属违章用气行为。 此类行为违反了《广东省燃气管理条例》第三十六条 。</p><p>&nbsp; &nbsp; &nbsp; 所以，如用户需要增加用气设备或改装燃气管道，都必须按照正常的手续到燃气公司申报，由燃气公司安排专业施工队伍施工。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7D0160272C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (11, 1, 7, 60, N'', N'如何正确处理燃气泄漏', N'', N'', N'', N'', N'', N'如何正确处理燃气泄漏', N'立即关闭表前阀，切断气源，立即切断室外总电源，熄灭一切火种，打开门窗通风，让天然气自然散发出室外', N'<p>&nbsp; &nbsp; &nbsp;1、立即关闭表前阀，切断气源，立即切断室外总电源，熄灭一切火种，打开门窗通风，让天然气自然散发出室外；</p><p>&nbsp; &nbsp; &nbsp;2、检查炉具、热水器等燃气设施开关(阀门)是否关好，软管是否松动、脱落等；</p><p>&nbsp; &nbsp; &nbsp;3、在室外安全地点拨打煤气公司24小时服务电话：83962222。如发现邻居家中燃气泄漏，应敲门通知，切勿使用门铃等各类电器设施。</p><p>&nbsp; &nbsp; &nbsp;4、切勿触动电器开关（如开灯、关灯）切勿使用室内电话或无线电话 切勿使用明火或使用明火测验漏气点&nbsp; 切勿按动门铃 切勿开启任何燃具，直到漏气情况得到控制和室内无天然气为止。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7D016076DC AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (12, 1, 7, 60, N'', N'如何识别煤气中毒', N'', N'', N'', N'', N'', N'如何识别煤气中毒', N'人们通常所说的煤气中毒，实际上是一氧化碳中毒，它是由于天然气不完全燃烧而产生的，一氧化碳能与血红蛋白结合成碳氧血红蛋白，妨碍红细胞的带氧、输氧功能，当血液中碳氧血红蛋白达到70%-80%时，会导致中毒者死亡', N'<p>&nbsp; &nbsp; &nbsp; 人们通常所说的煤气中毒，实际上是一氧化碳中毒，它是由于天然气不完全燃烧而产生的，一氧化碳能与血红蛋白结合成碳氧血红蛋白，妨碍红细胞的带氧、输氧功能，当血液中碳氧血红蛋白达到70%-80%时，会导致中毒者死亡。相当一部分人在煤气中毒时会出现一个典型特征，就是皮肤、黏膜、指甲变成樱桃红色，与一般缺氧表现的青紫是不同的。其中：</p><p>1、轻度中毒：感觉头晕、头痛、眼花、耳鸣、恶心、呕吐、心慌、全身乏力。这时及时开窗通风，吸入新鲜空气，症状很快减轻、消失。</p><p>2、中度中毒：除上述症状外，还会出现多汗、烦躁、走路不稳、皮肤苍白、意识模糊、老是感觉睡不醒、困倦乏力。如能及时识别，采取有效措施，基本可以治愈，很少留下后遗症。</p><p>3、重度中毒（特别是在夜间睡眠中中毒，发现较晚）：此时多已神志不清，牙关紧闭，全身抽动，大小便失禁，面色和口唇呈现樱红色，呼吸脉搏增快，血压上升，心律不齐，肺部有罗音，体温可能上升；极度危重者，持续深度昏迷，脉细弱，呼吸不规则，血压下降，也可出现40℃高热。此时生命垂危，死亡率高；即使有幸未死，也会遗留严重的后遗症。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7D0160B750 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (13, 1, 7, 60, N'', N'如何对室内燃气设施进行查漏', N'', N'', N'', N'', N'', N'如何对室内燃气设施进行查漏', N'家中如闻到燃气味，用毛刷将洗衣粉或肥皂水刷到怀疑发生漏气的接口、阀门或焊缝上，如果有气泡出现，即为漏点。如果刷上去后没有反映，可将蘸有肥皂水的毛刷直接贴到查漏处，若有燃气泄漏，气泡则会连续出现在毛刷上', N'<p>1、家中如闻到燃气味，用毛刷将洗衣粉或肥皂水刷到怀疑发生漏气的接口、阀门或焊缝上，如果有气泡出现，即为漏点。如果刷上去后没有反映，可将蘸有肥皂水的毛刷直接贴到查漏处，若有燃气泄漏，气泡则会连续出现在毛刷上。</p><p>2、对肥皂水难以涂刷到及视线外的部位，可用手背去摸，一般手背可以感触到漏气的存在。</p><p>3、严禁用明火查漏。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7E01611D44 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (14, 1, 7, 60, N'', N'如何对煤气中毒的人进行现场急救', N'', N'', N'', N'', N'', N'如何对煤气中毒的人进行现场急救', N'及时呼叫120急救服务，同时尽快让中毒者离开中毒环境，并立即打开门窗，流通空气', N'<p>1、及时呼叫120急救服务，同时尽快让中毒者离开中毒环境，并立即打开门窗，流通空气；</p><p>2、中毒者应安静休息，避免活动后加重肺部、心脏负担及增加氧的消耗量，充分给以氧气吸入；呼吸心跳停止的中毒者，立即进行人工呼吸以及按压心脏；</p><p>3、将病人护送到医院进一步检查治疗，争取尽早进行高压氧舱治疗。即使是轻度、中度中毒者，也应进行高压氧舱治疗，以减少后遗症。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7E016173FC AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (15, 1, 7, 60, N'', N'燃气器具的判废标准', N'', N'', N'', N'', N'', N'燃气器具的判废标准', N'根据国家家用燃气器具安全管理规定，燃具从售出当日起，人工煤气热水器的判废年限应为6年，液化石油气和天然气热水器判废年限应为8年。燃气灶具的判废年限应为8年', N'<p>&nbsp; &nbsp; &nbsp; 根据国家家用燃气器具安全管理规定，燃具从售出当日起，人工煤气热水器的判废年限应为6年，液化石油气和天然气热水器判废年限应为8年。燃气灶具的判废年限应为8年。</p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7E0161A9E4 AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (16, 1, 7, 60, N'', N'家用燃气燃烧器具安全管理规程 (GB17905-1999) （节选）', N'', N'', N'', N'', N'', N'家用燃气燃烧器具安全管理规程 (GB17905-1999) （节选）', N'本标准规定了家用燃气燃烧器具的生产、安装、验收、使用、保养、维修、判废及事故处理，本标准适用于使用城镇燃气的家用燃气燃烧器具', N'<p><strong>1：范围</strong></p><p>本标准规定了家用燃气燃烧器具的生产、安装、验收、使用、保养、维修、判废及事故处理，本标准适用于使用城镇燃气的家用燃气燃烧器具。<br/><br/></p><p><strong>2： 引用标准</strong></p><p>GB6932--1994 家用燃气快速热水器</p><p>GBl6410--1996 家用燃气灶具</p><p>GB/T16411--1996 家用燃气用具的通用试验方法</p><p>GBl6914--1997 燃气燃烧器具安全技术通则</p><p>GB50028--1993 城镇燃气设计规范</p><p>CJJ12--1999 家用燃气燃烧器具安装及验收规程<br/><br/></p><p><strong>3 ：定义</strong></p><p>本标准采用下列定义。</p><p>3．1 城镇燃气 city gas，town gas</p><p>指符合规范的燃气质量要求，供给居民生活、商业(公共建筑)和工业企业生产作燃料用的公用性质的燃气。城镇燃气一般包括天然气、液化石油气和人工煤气。</p><p>3．2 家用燃气燃烧器具 domesticgas—burningappliances</p><p>供城镇居民使用的家用燃气快速热水器、家用燃气灶具等。<br/><br/></p><p><strong>4： 燃具的生产、型式检验和销售</strong></p><p>4．2 型式检验</p><p>4．2．2 燃具生产者应向国家授权的燃具检测中心(站)提出产品型式检验申请，产品需经型式检验合格。</p><p>4．2．6 燃具型式检验报告和证书有效期为5年。</p><p>4．3 燃具销售</p><p>4.3.1 燃具销售者应销售有生产许可证的燃气热水器和经过型式检验合格并具有型式检验证书的燃具。</p><p>4．3．3 燃具销售时应由当地质量技术监督部门指定的检验机构对人工煤气燃具进行燃气适配性检验，适配性检验只做燃具的燃烧工况检验。<br/><br/></p><p>5<strong> ：燃具的安装和验收</strong></p><p>5．1 用户使用燃具必须向当地燃气供应企业提出申请，经批准后方可使用。未经批准，用户不得擅自安装、拆移燃具。</p><p>5．2 燃气供应企业负责燃气用户的管理，建立用户档案，制定用户安全使用规定，负责用户的安全教育，普及燃气知识宣传。</p><p>5．4 燃具的安装、改装必须由经过专门培训，并获得当地燃气主管部门资质审查合格的单位的人员进行。燃具安装后，应由安装单位的监督人员进行检查、登记并签发安装合格标示，贴在燃具外壳明显处。燃具安装时应注重燃具的排烟和通风，保证燃具安全使用。</p><p>5．5 燃气供应企业对安装、改装完毕的燃具应按燃具的有关标准、规范组织验收，合格并登记后方可供气使用。</p><p>5．6 燃具的安装、监督、维修人员一律携带有效证件上岗并保证安装、改装质量。安装、改装后必须调试合格，由验收人员现场验收，用户在验收单签字。<br/><br/></p><p><strong>6： 燃具的使用、保养、维修及判废</strong></p><p>6．1 为保证安全使用燃具，燃气管理部门、燃气供应企业、燃具生产者应向用户宣传安全使用规定，严格按产品使用说明书操作。</p><p>6．2 燃具用户选用国外进口燃具时应经燃具质量检验部门检验。</p><p>6．3 燃具生产者应在销售地设立维修站点或委托当地燃气供应企业负责燃具的售后服务和维修工作，由燃具生产者提供维修所需燃具零配件。</p><p>6．4 用户使用燃具时应经常注意观察使用状况，发现异常应立即请维修单位修理。燃具的维修站点和燃气供应企业应接受用户委托对燃具进行安全检查，并进行检查登记。对有问题的燃具应提出书面检修意见并备案登记，检查内容如下：</p><p>a)各操作部件的功能；</p><p>b)燃烧器燃烧时火焰稳定性；</p><p>c)排烟口积炭清理；</p><p>d)烟道密封性和抽力；</p><p>e)烟道和给排气筒有无堵塞；给排气系统是否畅通；</p><p>f)清理或更换易损件。</p><p>6．5，1 燃具从售出当日起，人工煤气热水器的判废年限应为6年，液化石油气和天然气热水器判废年限应为8年。燃气灶具的判废年限应为8年。</p><p>6．5．2 燃气热水器检修后仍发生如下故障之一时应予以判废：</p><p>a)燃烧工况严重恶化，检修后烟气中一氧化碳含量仍达不到7．5中规定；</p><p>b)燃烧室、热交换器严重烧损和火焰外露；</p><p>c)漏水、漏气。<br/><br/></p><p><strong>7 ：事故处理</strong></p><p>7.1 燃具用户发生意外事故时，应立即切断燃气气源，打开门窗通风，将伤员抬到空气流通处急救或立即送往医院救治。</p><p>7.2 第一见证人应保护好现场，立即通知有关部门勘察现场，封存燃具。</p><p>7.3 事故处理应由燃气主管部门会同公安、消防、劳动等有关部门组成事故调查组进行调查</p><p>a)燃具安装和排烟；</p><p>b)燃具使用和维修；</p><p>c)燃气及供应质量；</p><p>d)燃具质量。</p><p>7．5 事故燃具复检时</p><p>3)烟气中一氧化碳含量：</p><p>燃具售出一年内，应符合GB6932中规定；燃具售出一年以上，直排式燃气热水器应小于0.14％，烟道式和平衡式燃气热水器应小于0.28%，燃气灶具应小于O.14％。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7F0162135C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (17, 1, 7, 60, N'', N'家用燃气快速热水器的选择和使用', N'', N'', N'', N'', N'', N'家用燃气快速热水器的选择和使用', N'燃气热水器分为烟道式、强排式、平衡式、强制平衡式等类别。这主要是根据给排气方式进行分类的', N'<p>◆ 热水器的选择</p><p>&nbsp; &nbsp; 燃气热水器分为烟道式、强排式、平衡式、强制平衡式等类别。这主要是根据给排气方式进行分类的。</p><p>&nbsp; &nbsp; 烟道式燃气热水器又称自然排气式热水器，燃烧时所需空气取自室内，用排气管在自然抽力的作用下将烟气排至室外。强排式燃气热水器即强制排气式热水器，燃烧时所需空气取自室内，用排气管在风机作用下强制将烟气排出室外。平衡式燃气热水器又称自然给排式热水器，将给排气管接至室外，利用自然抽力进行给排气。强制平衡式燃气热水器又称强制给排气式热水器，将给排气管接至室外，利用风机强制进行给排气。</p><p>&nbsp; &nbsp; 此外，新标准还根据燃气热水器的安装位置、使用燃气种类、用途、供暖热水系统结构形式方式进行分类。根据热水器的安装位置分为室内型和室外型，根据用途分为供热水型、供暖型和供热水——供暖两用型。根据供暖热水系统结构形式方式又可分为开放式和密闭式。其中，开放式燃气热水器是指热水器供暖循环通路与大气相通，密闭式燃气热水器是指热水器供暖循环通路与大气隔绝。</p><p>&nbsp; &nbsp; 不同的分类方式都在强制性国家标准中有相应的代号，如两用型室内强排式燃气热水器的编号为ＪＬＱＸ－Ｙ，其中，ＪＬ代表供热水——供暖两用型，Ｑ代表室内强排式，Ｘ代表额定热负荷数（如２０ｋＷ或３０ｋＷ，取整数），Ｙ是产品特征序号，由制造厂自行编制。</p><p>◆ 使用热水器的注意事项</p><p>一、申请安装</p><p>客户需使用管道气热水器，请向我公司申请由专业技术人员上门为您实地勘测、安全施工。　</p><p>二、热水器突然熄火</p><p>使用中热水器突然熄火，原因可能是以下之一：</p><p>①有的热水器设有自动保护装置，使用一定时间会自动关闭，只需重新开启热水器便可。</p><p>②因水压不足，无法带动热水器燃烧。</p><p>③因抢险、抢修等原因，紧急暂停管道气供应。应立即关闭热水器，以免恢复通气后煤气泄漏。请留意我公司或物业部门的通告，掌握恢复通气时间。</p><p>④被风吹熄。　</p><p>三、如家人洗澡时间过长，应主动拍门问候，预防万一！</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA7E0162D38C AS DateTime), NULL)
INSERT [dbo].[dt_channel_article_cases] ([id], [site_id], [channel_id], [category_id], [call_index], [title], [link_url], [img_url], [seo_title], [seo_keywords], [seo_description], [tags], [zhaiyao], [content], [sort_id], [click], [status], [is_msg], [is_top], [is_red], [is_hot], [is_slide], [is_sys], [user_name], [like_count], [add_time], [update_time]) VALUES (18, 1, 7, 60, N'', N'家庭燃气管道安装安全指引', N'', N'/upload/201907/04/201907042144031183.jpg', N'', N'', N'', N'家庭燃气管道安装安全指引', N'户内燃气管道应布设成明管;并严禁引入卧室和密闭空间，燃气表的安装应满足抄表、检修、保养和安全使用的要求,宜安装在室内(如厨房)通风良好处', N'<p>&nbsp; &nbsp; 一、燃气管道的安装</p><p>&nbsp; &nbsp; 1.户内燃气管道应布设成明管;并严禁引入卧室和密闭空间。</p><p>&nbsp; &nbsp; 二、燃气表的安装</p><p>&nbsp; &nbsp; 1.燃气表的安装应满足抄表、检修、保养和安全使用的要求,宜安装在室内(如厨房)通风良好处;</p><p>&nbsp; &nbsp; 2.燃气表严禁安装在卧室、浴室、厕所、更衣室内及洗涤槽的排水管对下处或经常潮湿的地方;</p><p>&nbsp; &nbsp; 3.燃气表安装在柜内时,橱柜应具有自然通风的功能;</p><p>&nbsp; &nbsp; 4.燃气表严禁安装在燃气灶的下方。</p><p>&nbsp; &nbsp; 三、燃气用具的安装</p><p>&nbsp; &nbsp; 1.燃气用具的安装应与电器或其它设备保持一定安全距离,水平净距不少于30CM;</p><p>&nbsp; &nbsp; 2.燃气用具设备严禁安装在卧室及餐厅内(与厨房连为一体的客厅卧室)</p><p>&nbsp; &nbsp; 3.安装嵌入式燃气灶下方的橱柜必须自然良好,橱柜门必须有通风口或百叶窗;</p><p>&nbsp; &nbsp; 4.嵌入式燃气灶下方的橱柜内,严禁安装消毒柜、微波炉等电器设备;</p><p>&nbsp; &nbsp; 5.安装在浴室内的热水器必须是密闭式热水器(平衡式或强制给排式),其它类型热水器严禁安装,并且安装位置应使烟道能直接通往室外;</p><p>&nbsp; &nbsp; 6.安装的燃气具须具备以下证书:(销售商提供)</p><p>&nbsp; &nbsp; 1)产品生产许可证</p><p>&nbsp; &nbsp; 2)型式检验合格证</p><p>&nbsp; &nbsp; 3)气源适配性报告</p><p>&nbsp; &nbsp; 4)出厂合格证</p><p>&nbsp; &nbsp; 4)燃烧器具安装及维修资质</p><p>&nbsp; &nbsp; 5)燃气工证</p><p>&nbsp; &nbsp; 6)验收合格单。</p><p>&nbsp; &nbsp; 7.天然气燃具不能与液化气燃具混用。(燃压不一致)</p><p>&nbsp; &nbsp; 8.购买器具时应选择代天燃气(SNG)与天燃气(NG)使用相关的燃具,以便日后更换。</p><p>&nbsp; &nbsp; 四、其它</p><p>&nbsp; &nbsp; 1.使用城市燃气的单位和个人需要增加安装供气及使用设施时,必须提出申请并经城市燃气经营单位(金冠燃气)批准;</p><p>&nbsp; &nbsp; 2.使用燃气管道设施的单位和个人,不得擅自拆、改、迁、装燃气设施和用具,不得擅自抽取或采用其它不正当手段使用燃气。</p><p>&nbsp; &nbsp; 3.原则上用户燃气管采用明管安装,如确实需要暗管安装(维修保养难,不建议采用)的须向燃公司提出申请,并获批准后按相关规定进行安装。</p><p><br/></p>', 99, 0, 0, 0, 0, 1, 0, 0, 1, N'admin', 0, CAST(0x0000AA8001665534 AS DateTime), CAST(0x0000AA800166A1EB AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_channel_article_cases] OFF
/****** Object:  Table [dbo].[dt_article_tags_relation]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_tags_relation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[tag_id] [int] NULL,
 CONSTRAINT [PK_DT_ARTICLE_TAGS_RELATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation', @level2type=N'COLUMN',@level2name=N'tag_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TAG标签关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags_relation'
GO
SET IDENTITY_INSERT [dbo].[dt_article_tags_relation] ON
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (33, 5, 56, 22)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (34, 5, 59, 23)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (35, 5, 60, 23)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (36, 5, 61, 23)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (37, 5, 62, 24)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (41, 3, 74, 26)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (42, 3, 71, 25)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (43, 3, 72, 25)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (44, 3, 73, 25)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (45, 7, 1, 27)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (46, 7, 1, 28)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (53, 7, 7, 35)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (54, 7, 2, 30)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (55, 7, 3, 31)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (56, 7, 4, 32)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (57, 7, 5, 33)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (58, 7, 6, 34)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (59, 7, 8, 36)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (60, 7, 9, 37)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (61, 7, 10, 38)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (62, 7, 11, 39)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (63, 7, 12, 40)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (64, 7, 13, 41)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (65, 7, 14, 42)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (66, 7, 15, 43)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (67, 7, 16, 44)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (68, 7, 17, 45)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (70, 7, 18, 46)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (73, 1, 41, 47)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (74, 1, 42, 48)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (75, 1, 43, 49)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (76, 1, 44, 50)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (77, 1, 45, 51)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (78, 1, 46, 52)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (79, 1, 47, 53)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (80, 1, 48, 54)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (81, 1, 49, 55)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (83, 1, 50, 56)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (86, 1, 51, 57)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (87, 1, 52, 58)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (88, 1, 53, 59)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (89, 1, 54, 60)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (90, 1, 55, 61)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (92, 1, 56, 62)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (93, 1, 57, 63)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (94, 1, 58, 64)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (95, 1, 59, 65)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (97, 1, 60, 66)
INSERT [dbo].[dt_article_tags_relation] ([id], [channel_id], [article_id], [tag_id]) VALUES (98, 1, 61, 67)
SET IDENTITY_INSERT [dbo].[dt_article_tags_relation] OFF
/****** Object:  Table [dbo].[dt_article_tags]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[is_red] [tinyint] NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_TAGS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'is_red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TAG标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_tags'
GO
SET IDENTITY_INSERT [dbo].[dt_article_tags] ON
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (5, N'房企利润', 0, 99, CAST(0x0000A47C00C3237E AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (6, N'跌幅', 0, 99, CAST(0x0000A47C00C323A4 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (7, N'买房', 1, 99, CAST(0x0000A47C00C7492C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (8, N'炒股', 1, 99, CAST(0x0000A47C00C74956 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (9, N'猎豹CS10', 1, 99, CAST(0x0000A47C00CAF3F7 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (10, N'哈弗H8', 1, 99, CAST(0x0000A47C00CDF43B AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (11, N'哈弗H6', 1, 99, CAST(0x0000A47C00CF0823 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (12, N'比亚迪S7', 1, 99, CAST(0x0000A47C00CF084D AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (13, N'长安CS75', 1, 99, CAST(0x0000A47C00CF0877 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (14, N'三星S6', 1, 99, CAST(0x0000A47C00D27D26 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (15, N'乐视手机', 1, 99, CAST(0x0000A47C00D4BFCB AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (16, N'淘宝', 1, 99, CAST(0x0000A47D00A93253 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (17, N'海外购房', 1, 99, CAST(0x0000A47D00AA707A AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (18, N'京东', 1, 99, CAST(0x0000A47D00B74A58 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (19, N'海外代购', 1, 99, CAST(0x0000A47D00B74A82 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (20, N'卧室', 1, 99, CAST(0x0000A47E00CE3A3A AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (21, N'书柜', 1, 99, CAST(0x0000A47E00D000D7 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (22, N'UI套件', 1, 99, CAST(0x0000A47E017E2511 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (23, N'jQuery插件', 1, 99, CAST(0x0000A47E0187F36C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (24, N'PSD素材', 1, 99, CAST(0x0000A47F0006F56C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (25, N'美剧', 1, 99, CAST(0x0000A47F00E30E21 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (26, N'大陆剧', 1, 99, CAST(0x0000A47F00EC134F AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (27, N'气费未能划扣成功', 0, 99, CAST(0x0000AA80011E3CD0 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (28, N'将会收到信息提示', 0, 99, CAST(0x0000AA80011E3CD0 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (29, N'http://rs.mdoem.com', 0, 99, CAST(0x0000AA80013913C1 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (30, N'安全用气问答', 0, 99, CAST(0x0000AA8001393394 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (31, N'安全用气须知', 0, 99, CAST(0x0000AA80013A0794 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (32, N'安全用气知识——家用燃气灶具的选择和使用', 0, 99, CAST(0x0000AA80013C0300 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (33, N'装修时应注意的事项', 0, 99, CAST(0x0000AA80013D64FF AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (34, N'天然气基本知识', 0, 99, CAST(0x0000AA80013DD4E9 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (35, N'天然气的用途', 0, 99, CAST(0x0000AA80013E7428 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (36, N'天然气的环保性', 0, 99, CAST(0x0000AA8001624C1D AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (37, N'天然气的高效利用', 0, 99, CAST(0x0000AA800162BCA2 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (38, N'私接私改燃气管道的危害', 0, 99, CAST(0x0000AA80016305F7 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (39, N'如何正确处理燃气泄漏', 0, 99, CAST(0x0000AA800163557D AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (40, N'如何识别煤气中毒', 0, 99, CAST(0x0000AA800163B99C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (41, N'如何对室内燃气设施进行查漏', 0, 99, CAST(0x0000AA80016411C2 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (42, N'如何对煤气中毒的人进行现场急救', 0, 99, CAST(0x0000AA8001644BD2 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (43, N'燃气器具的判废标准', 0, 99, CAST(0x0000AA800164893C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (44, N'家用燃气燃烧器具安全管理规程 (GB17905-1999) （节选）', 0, 99, CAST(0x0000AA8001655EB3 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (45, N'家用燃气快速热水器的选择和使用', 0, 99, CAST(0x0000AA800165BB26 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (46, N'家庭燃气管道安装安全指引', 0, 99, CAST(0x0000AA800166561C AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (47, N'城市燃气安全管理规定', 0, 99, CAST(0x0000AA8100926723 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (48, N'广东省燃气管理条例', 0, 99, CAST(0x0000AA8100955D8F AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (49, N'广州市城市燃气管理暂行规定', 0, 99, CAST(0x0000AA810097DDFD AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (50, N'广州市油气管道设施保护试行办法', 0, 99, CAST(0x0000AA81009832AD AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (51, N'国务院关于特大安全事故行政责任追究的规定', 0, 99, CAST(0x0000AA81009870CE AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (52, N'燃气燃烧器具安装维修管理规定', 0, 99, CAST(0x0000AA810098B8E0 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (53, N'中华人民共和国安全生产法', 0, 99, CAST(0x0000AA810099E5EB AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (54, N'中华人民共和国节约能源法', 0, 99, CAST(0x0000AA81009A5276 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (55, N'芳村2万户居民率先用上管道天然气', 0, 99, CAST(0x0000AA81009B0C2B AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (56, N'市物价局调整广州市区域性管道燃气销售价格', 0, 99, CAST(0x0000AA81009CB007 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (57, N'为了热烈庆祝金冠燃气公司燃气商品专卖场隆重开业！', 0, 99, CAST(0x0000AA81009E6FBD AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (58, N'广州市区域性管道燃气实行政府定价', 0, 99, CAST(0x0000AA81009F4A76 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (59, N'关于调整广州金冠燃气技术开发有限公司 区域性管道燃气销售价格的通知', 0, 99, CAST(0x0000AA81009FF4C9 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (60, N'关于调整广州金冠燃气技术开发有限公司 区域性管道燃气销售价格的批复', 0, 99, CAST(0x0000AA8100A2AC25 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (61, N'“十一五”期间我国将建成四大油气管道', 0, 99, CAST(0x0000AA8100A78091 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (62, N'广州燃气集团有限公司召开第六届', 0, 99, CAST(0x0000AA8100A8224D AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (63, N'关于暂停办理城市道路挖掘审批的通知', 0, 99, CAST(0x0000AA8100A8D333 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (64, N'广州金冠燃气技术开发有限公司管道燃气用户缴费通知单（样板）', 0, 99, CAST(0x0000AA8100A9D7FB AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (65, N'旧楼加装管道天然气', 0, 99, CAST(0x0000AA8100AA4B22 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (66, N'关于管道燃气下调气价及抄表方法的通知', 0, 99, CAST(0x0000AA8100AAD854 AS DateTime))
INSERT [dbo].[dt_article_tags] ([id], [title], [is_red], [sort_id], [add_time]) VALUES (67, N'网上查询已开通', 0, 99, CAST(0x0000AA8100AB83BB AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_tags] OFF
/****** Object:  Table [dbo].[dt_article_comment]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_ip] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[is_lock] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[is_reply] [tinyint] NULL,
	[reply_content] [ntext] NULL,
	[reply_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_COMMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父评论ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发表时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已答复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'is_reply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_comment', @level2type=N'COLUMN',@level2name=N'reply_time'
GO
/****** Object:  Table [dbo].[dt_article_category]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[channel_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[parent_id] [int] NULL,
	[class_list] [nvarchar](500) NULL,
	[class_layer] [int] NULL,
	[sort_id] [int] NULL,
	[link_url] [nvarchar](255) NULL,
	[img_url] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keywords] [nvarchar](255) NULL,
	[seo_description] [nvarchar](255) NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_ARTICLE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别ID列表(逗号分隔开)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别深度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'class_layer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL跳转地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_category'
GO
SET IDENTITY_INSERT [dbo].[dt_article_category] ON
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (3, 1, 1, N'其他事项', N'', 0, N',3,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (14, 1, 4, N'首页banner', N'', 0, N',14,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (25, 1, 6, N'关于金冠', N'', 0, N',25,', 1, 1, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (26, 1, 5, N'JS代码', N'', 0, N',26,', 1, 99, N'', N'', N'', N'JS代码', N'JS代码,焦点图,jQuery特效,导航菜单,图片特效,网页特效,在线客服代码', N'JS代码频道为网页前端人员提供建站常用的广告代码和网页特效，内容涵盖焦点图，导航菜单，jQuery代码，jQuery特效，对联广告，图片特效，在线客服等40类资源', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (27, 1, 5, N'PSD素材', N'', 0, N',27,', 1, 100, N'', N'', N'', N'PSD素材', N'ps素材,PSD分层素材,PSD素材下载PSD模板,psd源文件', N'提供各类精品PSD分层素材下载', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (28, 1, 5, N'网页素材', N'', 0, N',28,', 1, 101, N'', N'', N'', N'图片素材', N'图片素材,背景图片,高清图片,印刷图片', N'提供实用高清的图片素材', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (29, 1, 3, N'电视剧', N'', 0, N',29,', 1, 99, N'', N'', N'', N'电视剧', N'热门电视剧,视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (30, 1, 3, N'电影', N'', 0, N',30,', 1, 100, N'', N'', N'', N'电影', N'电影,在线影院,好莱坞影院', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (31, 1, 3, N'综艺', N'', 0, N',31,', 1, 101, N'', N'', N'', N'综艺', N'视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (32, 1, 3, N'美剧', N'', 29, N',29,32,', 2, 99, N'', N'', N'', N'美剧', N'视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (33, 1, 3, N'大陆剧', N'', 29, N',29,33,', 2, 100, N'', N'', N'', N'大陆剧', N'视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (34, 1, 3, N'韩剧', N'', 29, N',29,34,', 2, 101, N'', N'', N'', N'韩剧', N'视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (35, 1, 3, N'华语', N'', 30, N',30,35,', 2, 99, N'', N'', N'', N'华语', N'视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (36, 1, 3, N'好莱坞', N'', 30, N',30,36,', 2, 100, N'', N'', N'', N'好莱坞', N'电影,在线影院,好莱坞影院', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (37, 1, 3, N'真人秀', N'', 31, N',31,37,', 2, 99, N'', N'', N'', N'真人秀', N'视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (38, 1, 3, N'情感相亲', N'', 31, N',31,38,', 2, 100, N'', N'', N'', N'情感相亲', N'视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (39, 1, 3, N'生活美食', N'', 31, N',31,39,', 2, 101, N'', N'', N'', N'生活美食', N'视频,视频分享,视频搜索,视频播放', N'视频服务平台,提供视频播放,视频发布,视频搜索,视频分享', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (40, 1, 2, N'手机数码', N'', 0, N',40,', 1, 99, N'', N'', N'', N'手机数码', N'单反相机,苹果手机,小米手机,三星手机,手机配件,手机电池,充电器,内存卡,蓝牙耳机,贴膜', N'苹果手机，小米手机，三星手机，手机配件，手机电池，充电器，内存卡，蓝牙耳机，贴膜提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (41, 1, 2, N'电脑办公', N'', 0, N',41,', 1, 100, N'', N'', N'', N'电脑办公', N'笔记本,台式机,电脑配件,苹果配件,网络设备,办公设备,办公打印,办公文仪', N'电脑产品，电脑整机，笔记本，台式机，电脑配件，苹果配件，网络设备，办公设备，办公打印，办公文仪提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (42, 1, 2, N'影音娱乐', N'', 0, N',42,', 1, 101, N'', N'', N'', N'影音娱乐', N'空调,音响,DVD,影音配件,电视配件', N'电视音响，DVD，影音配件提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (43, 1, 2, N'手机通讯', N'', 40, N',40,43,', 2, 99, N'', N'', N'', N'手机通讯', N'苹果手机,小米手机,三星手机,手机配件,手机电池,充电器,内存卡,蓝牙耳机,贴膜', N'苹果手机，小米手机，三星手机，手机配件，手机电池，充电器，内存卡，蓝牙耳机，贴膜提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (44, 1, 2, N'摄影摄像', N'', 40, N',40,44,', 2, 100, N'', N'', N'', N'摄影摄像', N'单反相机,苹果手机,小米手机,三星手机,手机配件,手机电池,充电器,内存卡,蓝牙耳机,贴膜', N'苹果手机，小米手机，三星手机，手机配件，手机电池，充电器，内存卡，蓝牙耳机，贴膜提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (45, 1, 2, N'存储设备', N'', 40, N',40,45,', 2, 101, N'', N'', N'', N'存储设备', N'单反相机,苹果手机,小米手机,三星手机,手机配件,手机电池,充电器,内存卡,蓝牙耳机,贴膜', N'苹果手机，小米手机，三星手机，手机配件，手机电池，充电器，内存卡，蓝牙耳机，贴膜提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (46, 1, 2, N'电脑整机', N'', 41, N',41,46,', 2, 99, N'', N'', N'', N'电脑整机', N'笔记本,台式机,电脑配件,苹果配件,网络设备,办公设备,办公打印,办公文仪', N'电脑产品，电脑整机，笔记本，台式机，电脑配件，苹果配件，网络设备，办公设备，办公打印，办公文仪提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (47, 1, 2, N'外设产品', N'', 41, N',41,47,', 2, 100, N'', N'', N'', N'外设产品', N'笔记本,台式机,电脑配件,苹果配件,网络设备,办公设备,办公打印,办公文仪', N'电脑产品，电脑整机，笔记本，台式机，电脑配件，苹果配件，网络设备，办公设备，办公打印，办公文仪提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (48, 1, 2, N'办公打印', N'', 41, N',41,48,', 2, 101, N'', N'', N'', N'办公打印', N'笔记本,台式机,电脑配件,苹果配件,网络设备,办公设备,办公打印,办公文仪', N'电脑产品，电脑整机，笔记本，台式机，电脑配件，苹果配件，网络设备，办公设备，办公打印，办公文仪提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (49, 1, 2, N'平板电视', N'', 42, N',42,49,', 2, 99, N'', N'', N'', N'平板电视', N'空调,音响,DVD,影音配件,电视配件', N'电视音响，DVD，影音配件提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (50, 1, 2, N'音响DVD', N'', 42, N',42,50,', 2, 100, N'', N'', N'', N'音响DVD', N'空调,音响,DVD,影音配件,电视配件', N'电视音响，DVD，影音配件提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (51, 1, 2, N'影音配件', N'', 42, N',42,51,', 2, 101, N'', N'', N'', N'影音配件', N'空调,音响,DVD,影音配件,电视配件', N'电视音响，DVD，影音配件提供最新报价、价格、促销、参数、评价、排行、图片等选购信息。', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (52, 1, 8, N'产品展示', N'', 0, N',52,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (53, 1, 1, N'法律法规', N'', 0, N',53,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (54, 1, 1, N'停气通知', N'', 0, N',54,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (55, 1, 1, N'开发公告', N'', 0, N',55,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (56, 1, 1, N'最新消息', N'', 0, N',56,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (57, 1, 7, N'操作提示', N'', 0, N',57,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (58, 1, 7, N'常见问题', N'', 0, N',58,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (59, 1, 7, N'供气保障', N'', 0, N',59,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (60, 1, 7, N'用气知识', N'', 0, N',60,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (61, 1, 6, N'联系金冠', N'', 0, N',61,', 1, 3, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (62, 1, 4, N'业务管理', N'', 0, N',62,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (63, 1, 4, N'关于我们', N'', 0, N',63,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (64, 1, 6, N'客服中心', N'', 0, N',64,', 1, 2, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (65, 1, 6, N'报装开通', N'', 64, N',64,65,', 2, 98, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (66, 1, 6, N'报装二维码', N'', 64, N',64,66,', 2, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (67, 0, 0, N'测试类别', N'', 0, N',67,', 1, 99, N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (68, 0, 4, N'111', N'222', 0, N',68,', 1, 99, N'111', N'', N'<p>3232e32</p>', N'33', N'44', N'55', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (72, 0, 4, N'1', N'222gai', 63, N',63,72,', 2, 99, N'111', N'/upload/201907/16/201907161056115814.jpg', N'<p>3232e32</p>', N'33gai', N'44gaigaigai', N'55', 0)
INSERT [dbo].[dt_article_category] ([id], [site_id], [channel_id], [title], [call_index], [parent_id], [class_list], [class_layer], [sort_id], [link_url], [img_url], [content], [seo_title], [seo_keywords], [seo_description], [is_lock]) VALUES (73, 0, 4, N'wwww', N'', 0, N',73,', 1, 99, N'', N'', NULL, N'', N'', N'', 0)
SET IDENTITY_INSERT [dbo].[dt_article_category] OFF
/****** Object:  Table [dbo].[dt_article_attribute_field]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attribute_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[title] [nvarchar](100) NULL,
	[control_type] [nvarchar](50) NULL,
	[data_type] [nvarchar](50) NULL,
	[data_length] [int] NULL,
	[data_place] [tinyint] NULL,
	[item_option] [ntext] NULL,
	[default_value] [ntext] NULL,
	[is_required] [tinyint] NULL,
	[is_password] [tinyint] NULL,
	[is_html] [tinyint] NULL,
	[editor_type] [tinyint] NULL,
	[valid_tip_msg] [nvarchar](255) NULL,
	[valid_error_msg] [nvarchar](255) NULL,
	[valid_pattern] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_sys] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
	[BindSQL] [nvarchar](255) NULL,
	[BindSQLTitle] [nvarchar](50) NULL,
	[BindSQLValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTRIBUTE_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'control_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小数点位数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'data_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'item_option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'default_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必填0非必填1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否密码框' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许HTML' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_html'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑器类型0标准型1简洁型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'editor_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_tip_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证失败提示信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_error_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验证正则表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'valid_pattern'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attribute_field'
GO
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] ON
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (1, N'sub_title', N'副标题', N'single-text', N'nvarchar(255)', 255, 0, N'', N'', 0, 0, 0, 0, N'可为空，最多255个字符', N'', N's0-255', 100, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (2, N'source', N'信息来源', N'single-text', N'nvarchar(50)', 50, 0, N'', N'本站', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 101, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (3, N'author', N'文章作者', N'single-text', N'nvarchar(50)', 50, 0, N'', N'管理员', 0, 0, 0, 0, N'非必填，最多50个字符', N'', N's0-50', 102, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (4, N'goods_no', N'商品货号', N'single-text', N'nvarchar(100)', 100, 0, N'', N'', 0, 0, 0, 0, N'允许字母、下划线，100个字符内', N'', N's0-100', 103, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (5, N'stock_quantity', N'库存数量', N'number', N'int', 0, 0, N'', N'0', 0, 0, 0, 0, N'库存数量为0时显示缺货状态', N'', N'n', 104, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (6, N'market_price', N'市场价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 0, 0, 0, 0, N'市场的参与价格，不参与计算', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 105, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (7, N'sell_price', N'销售价格', N'number', N'decimal(9,2)', 0, 2, N'', N'0', 1, 0, 0, 0, N'*出售的实际交易价格', N'', N'/^(([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?$/', 106, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (8, N'point', N'交易积分', N'number', N'int', 0, 0, N'', N'0', 0, 0, 0, 0, N'*正为返还，负为消费积分', N'', N'n', 107, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (9, N'video_src', N'视频上传', N'video', N'nvarchar(255)', 0, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (10, N'checkbox1', N'复选测试', N'checkbox', N'tinyint', 0, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (11, N'dropdownlist1', N'下拉单选', N'multi-radio', N'nvarchar(50)', 50, 0, N'男|1
女|2', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (12, N'dropdownlist2', N'下拉多选', N'multi-checkbox', N'nvarchar(50)', 50, 0, N'游泳|1
跳舞|2', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (13, N'bigimg', N'详细页大图', N'images', N'nvarchar(255)', 0, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (14, N'tedian', N'炉具展销', N'editor', N'ntext', 0, 0, N'', N'', 0, 0, 0, 1, N'', N'', N'', 99, 0, 0, N'', N'', N'')
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (15, N'yongtu', N'居民报装开通', N'editor', N'ntext', 0, 0, N'', N'', 0, 0, 0, 1, N'', N'', N'', 99, 0, 0, N'', N'', N'')
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (16, N'guige', N'非居民包装开通', N'editor', N'ntext', 0, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0, 0, N'', N'', N'')
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (18, N'productid', N'产品', N'multi-radio', N'nvarchar(256)', 256, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0, 0, N'SELECT id,title FROM dt_channel_article_product WHERE status=0 ORDER BY sort_id DESC', N'title', N'id')
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (19, N'wapbanner', N'手机图片', N'images', N'nvarchar(255)', 0, 0, N'', N'', 0, 0, 0, 0, N'', N'', N'', 99, 0, 0, N'', N'', N'')
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (20, N'test_input', N'测试单行文本', N'single-text', N'nvarchar(255)', 255, 0, N'', N'', 0, 0, 0, 0, N'可为空，最多255个字符', N'', N's0-255', 99, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (21, N'test_input_num', N'测试单行文本_数字', N'number', N'int', 0, 0, N'', N'0', 0, 0, 0, 0, N'库存数量为0时显示缺货状态', N'', N'n', 104, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[dt_article_attribute_field] ([id], [name], [title], [control_type], [data_type], [data_length], [data_place], [item_option], [default_value], [is_required], [is_password], [is_html], [editor_type], [valid_tip_msg], [valid_error_msg], [valid_pattern], [sort_id], [is_sys], [is_lock], [BindSQL], [BindSQLTitle], [BindSQLValue]) VALUES (22, N'test_textarea', N'测试多行文本', N'multi-text', N'nvarchar(2048)', 255, 0, N'', N'', 0, 0, 0, 0, N'可为空，最多255个字符', N'', N's0-255', 99, 0, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[dt_article_attribute_field] OFF
/****** Object:  Table [dbo].[dt_article_attach]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_attach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[file_name] [nvarchar](255) NULL,
	[file_path] [nvarchar](255) NULL,
	[file_size] [int] NULL,
	[file_ext] [nvarchar](20) NULL,
	[down_num] [int] NULL,
	[point] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ATTACH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件大小(字节)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'file_ext'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'down_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分(正赠送负消费)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_attach'
GO
SET IDENTITY_INSERT [dbo].[dt_article_attach] ON
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (1, 5, 56, N'干净整洁的绿色扁平化UI套件(PSD).zip', N'/upload/201504/18/201504182311117470.zip', 608, N'zip', 0, 0, CAST(0x0000A47E017E207B AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (2, 5, 57, N'jqueryrotate制作机锋网积分抽奖效果.zip', N'/upload/201504/18/201504182322569933.zip', 217, N'zip', 0, 1, CAST(0x0000A47E0181D9E5 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (3, 5, 58, N'jQThumb – jQuery缩略图插件.zip', N'/upload/201504/18/201504182330109147.zip', 772, N'zip', 0, 0, CAST(0x0000A47E01856E22 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (4, 5, 59, N'Tipso – 轻巧的jQuery提示框插件.zip', N'/upload/201504/18/201504182342075293.zip', 41, N'zip', 0, 0, CAST(0x0000A47E0187EEE5 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (5, 5, 60, N'ck_slide – 简单的jQuery幻灯片插件.zip', N'/upload/201504/18/201504182357255775.zip', 544, N'zip', 2, 0, CAST(0x0000A47E018AD571 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (6, 5, 61, N'WOW.js – 让页面滚动更有趣.zip', N'/upload/201504/19/201504190003237865.zip', 16, N'zip', 0, 0, CAST(0x0000A47F0000EF6D AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (7, 5, 62, N'12个丰富多彩的图标PSD素材.zip', N'/upload/201504/19/201504190022397292.zip', 120, N'zip', 0, 0, CAST(0x0000A47F0006F0E4 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (8, 5, 63, N'六边形上传按钮PSD源文件下载.zip', N'/upload/201504/19/201504190030190442.zip', 559, N'zip', 0, 0, CAST(0x0000A47F00092C37 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (9, 5, 64, N'Linecons – 48个免费矢量图标.rar', N'/upload/201504/19/201504190039107074.rar', 67, N'rar', 0, 0, CAST(0x0000A47F000AC915 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (10, 5, 65, N'30个IOS7风格简洁线条图标PSD素材.zip', N'/upload/201504/19/201504190048014374.zip', 238, N'zip', 0, 0, CAST(0x0000A47F000D308E AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (11, 5, 66, N'腾讯游戏盒子2013官网页面html代码.zip', N'/upload/201504/19/201504190053004277.zip', 105, N'zip', 1, 0, CAST(0x0000A47F000E8F2F AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (12, 5, 67, N'简单的描边图标.zip', N'/upload/201504/19/201504190056330184.zip', 101, N'zip', 0, 0, CAST(0x0000A47F000F896A AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (13, 5, 68, N'百度百科2014新首页幻灯片.zip', N'/upload/201504/19/201504190101129112.zip', 353, N'zip', 0, 0, CAST(0x0000A47F0012CFCC AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (14, 5, 69, N'polyfill.zip', N'/upload/201504/19/201504190111527909.zip', 206, N'zip', 0, 0, CAST(0x0000A47F0013BDDF AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (15, 5, 70, N'PgwMenu – jQueryZepto响应式菜单.zip', N'/upload/201504/19/201504190121229928.zip', 39, N'zip', 1, 0, CAST(0x0000A47F0016FA42 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (17, 6, 65, N'非居民.docx', N'/upload/201907/03/201907032015099484.docx', 13, N'docx', 0, 0, CAST(0x0000AA8001724DB4 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (18, 6, 64, N'居民.docx', N'/upload/201907/03/201907032015407194.docx', 13, N'docx', 1, 0, CAST(0x0000AA8001723DF9 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (20, 6, 65, N'金冠测试文档.doc', N'/upload/201907/04/201907042158100090.doc', 9, N'doc', 0, 0, CAST(0x0000AA8001724DB4 AS DateTime))
INSERT [dbo].[dt_article_attach] ([id], [channel_id], [article_id], [file_name], [file_path], [file_size], [file_ext], [down_num], [point], [add_time]) VALUES (23, 6, 64, N'金冠测试2.xls', N'/upload/201907/04/201907042202220714.xls', 7, N'xls', 0, 0, CAST(0x0000AA8001723DF9 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_attach] OFF
/****** Object:  Table [dbo].[dt_article_albums]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_article_albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[thumb_path] [nvarchar](255) NULL,
	[original_path] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_ARTICLE_ALBUMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'thumb_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'original_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片相册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_article_albums'
GO
SET IDENTITY_INSERT [dbo].[dt_article_albums] ON
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (58, 2, 87, N'/upload/201504/20/thumb_201504200046589514.jpg', N'/upload/201504/20/201504200046589514.jpg', N'', CAST(0x0000A480000E06A9 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (59, 2, 87, N'/upload/201504/20/thumb_201504200046594439.jpg', N'/upload/201504/20/201504200046594439.jpg', N'', CAST(0x0000A480000E06BC AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (60, 2, 88, N'/upload/201504/20/thumb_201504200059017695.jpg', N'/upload/201504/20/201504200059017695.jpg', N'', CAST(0x0000A4800010C022 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (61, 2, 88, N'/upload/201504/20/thumb_201504200059022920.jpg', N'/upload/201504/20/201504200059022920.jpg', N'', CAST(0x0000A4800010C030 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (62, 2, 89, N'/upload/201504/20/thumb_201504200119256512.jpg', N'/upload/201504/20/201504200119256512.jpg', N'', CAST(0x0000A4800015D66B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (63, 2, 89, N'/upload/201504/20/thumb_201504200119262837.jpg', N'/upload/201504/20/201504200119262837.jpg', N'', CAST(0x0000A4800015D67A AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (64, 2, 90, N'/upload/201504/20/thumb_201504200154277661.jpg', N'/upload/201504/20/201504200154277661.jpg', N'', CAST(0x0000A480001F7B53 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (65, 2, 90, N'/upload/201504/20/thumb_201504200154282586.jpg', N'/upload/201504/20/201504200154282586.jpg', N'', CAST(0x0000A480001F7B61 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (66, 2, 91, N'/upload/201504/20/thumb_201504200214466608.jpg', N'/upload/201504/20/201504200214466608.jpg', N'', CAST(0x0000A48000250B04 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (67, 2, 91, N'/upload/201504/20/thumb_201504200214471783.jpg', N'/upload/201504/20/201504200214471783.jpg', N'', CAST(0x0000A48000250B12 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (68, 2, 92, N'/upload/201504/20/thumb_201504200225100165.jpg', N'/upload/201504/20/201504200225100165.jpg', N'', CAST(0x0000A4800027E423 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (69, 2, 92, N'/upload/201504/20/thumb_201504200225107390.jpg', N'/upload/201504/20/201504200225107390.jpg', N'', CAST(0x0000A4800027E431 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (70, 2, 93, N'/upload/201504/20/thumb_201504200233019087.jpg', N'/upload/201504/20/201504200233019087.jpg', N'', CAST(0x0000A480002A0CC2 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (71, 2, 93, N'/upload/201504/20/thumb_201504200233024338.jpg', N'/upload/201504/20/201504200233024338.jpg', N'', CAST(0x0000A480002A0CDE AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (72, 2, 94, N'/upload/201504/20/thumb_201504200239192345.jpg', N'/upload/201504/20/201504200239192345.jpg', N'', CAST(0x0000A480002BD23E AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (73, 2, 94, N'/upload/201504/20/thumb_201504200239197670.jpg', N'/upload/201504/20/201504200239197670.jpg', N'', CAST(0x0000A480002BD24C AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (74, 2, 95, N'/upload/201504/20/thumb_201504200242250674.jpg', N'/upload/201504/20/201504200242250674.jpg', N'', CAST(0x0000A480002CF32B AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (75, 2, 96, N'/upload/201504/20/thumb_201504200253026047.jpg', N'/upload/201504/20/201504200253026047.jpg', N'', CAST(0x0000A480002F8BD5 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (76, 2, 97, N'/upload/201504/20/thumb_201504200258403759.jpg', N'/upload/201504/20/201504200258403759.jpg', N'', CAST(0x0000A4800031E3CE AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (77, 2, 98, N'/upload/201504/20/thumb_201504200314272543.jpg', N'/upload/201504/20/201504200314272543.jpg', N'', CAST(0x0000A48000357C7C AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (78, 2, 99, N'/upload/201504/20/thumb_201504200318534459.jpg', N'/upload/201504/20/201504200318534459.jpg', N'', CAST(0x0000A4800036E1BF AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (79, 2, 100, N'/upload/201504/20/thumb_201504200327369421.jpg', N'/upload/201504/20/201504200327369421.jpg', N'', CAST(0x0000A48000390964 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (80, 2, 101, N'/upload/201504/20/thumb_201504200333240710.jpg', N'/upload/201504/20/201504200333240710.jpg', N'', CAST(0x0000A78E00EB8132 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (81, 6, 57, N'/upload/201907/02/201907021632508324.jpg', N'/upload/201907/02/201907021632508324.jpg', N'', CAST(0x0000AA8001678F96 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (82, 6, 57, N'/upload/201907/02/201907021633054144.jpg', N'/upload/201907/02/201907021633054144.jpg', N'', CAST(0x0000AA8001678F96 AS DateTime))
INSERT [dbo].[dt_article_albums] ([id], [channel_id], [article_id], [thumb_path], [original_path], [remark], [add_time]) VALUES (83, 6, 57, N'/upload/201907/04/201907042149051653.jpg', N'/upload/201907/04/201907042149051653.jpg', N'', CAST(0x0000AA8001678F96 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_article_albums] OFF
/****** Object:  Table [dbo].[dt_users]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[group_id] [int] NULL,
	[user_name] [nvarchar](100) NOT NULL,
	[salt] [nvarchar](20) NULL,
	[password] [nvarchar](100) NOT NULL,
	[mobile] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[avatar] [nvarchar](255) NULL,
	[nick_name] [nvarchar](100) NULL,
	[sex] [nvarchar](20) NULL,
	[birthday] [datetime] NULL,
	[telphone] [nvarchar](50) NULL,
	[area] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[qq] [nvarchar](20) NULL,
	[msn] [nvarchar](100) NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[exp] [int] NULL,
	[status] [tinyint] NULL,
	[reg_time] [datetime] NULL,
	[reg_ip] [nvarchar](20) NULL,
 CONSTRAINT [PK_DT_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'nick_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属地区逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MSN号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'msn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户余额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户状态,0正常,1待验证,2待审核,3锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users', @level2type=N'COLUMN',@level2name=N'reg_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员主表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_users'
GO
SET IDENTITY_INSERT [dbo].[dt_users] ON
INSERT [dbo].[dt_users] ([id], [site_id], [group_id], [user_name], [salt], [password], [mobile], [email], [avatar], [nick_name], [sex], [birthday], [telphone], [area], [address], [qq], [msn], [amount], [point], [exp], [status], [reg_time], [reg_ip]) VALUES (1, 1, 1, N'test', N'4R04B6', N'6F0936315BA3646A', N'13695245546', N'test@qq.com', N'', N'测试用户', N'保密', NULL, N'', N'', N'', N'', N'', CAST(0.00 AS Decimal(9, 2)), 20, 20, 0, CAST(0x0000A75A0029CB5E AS DateTime), N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[dt_users] OFF
/****** Object:  Table [dbo].[dt_user_recharge]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_recharge](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[recharge_no] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_RECHARGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'recharge_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未完成1已完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户充值表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_recharge'
GO
/****** Object:  Table [dbo].[dt_user_point_log]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_point_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[value] [int] NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_POINT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员积分日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_point_log'
GO
SET IDENTITY_INSERT [dbo].[dt_user_point_log] ON
INSERT [dbo].[dt_user_point_log] ([id], [user_id], [user_name], [value], [remark], [add_time]) VALUES (2, 1, N'test', 10, N'每天登录获得积分', CAST(0x0000A78E00DD8336 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_user_point_log] OFF
/****** Object:  Table [dbo].[dt_user_oauth]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[oauth_name] [nvarchar](50) NOT NULL,
	[oauth_access_token] [nvarchar](500) NULL,
	[oauth_openid] [nvarchar](255) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开放平台名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'access_token' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_access_token'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'oauth_openid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授权时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth授权用户信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_oauth'
GO
/****** Object:  Table [dbo].[dt_user_message]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[post_user_name] [nvarchar](100) NULL,
	[accept_user_name] [nvarchar](100) NULL,
	[is_read] [tinyint] NULL,
	[title] [nvarchar](100) NULL,
	[content] [ntext] NULL,
	[post_time] [datetime] NOT NULL,
	[read_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_MESSAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息类型0系统消息1收件箱2发件箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'accept_user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否查看0未阅1已阅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'is_read'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'post_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message', @level2type=N'COLUMN',@level2name=N'read_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员短消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_message'
GO
/****** Object:  Table [dbo].[dt_user_login_log]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_login_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[login_time] [datetime] NULL,
	[login_ip] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_USER_LOGIN_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log', @level2type=N'COLUMN',@level2name=N'login_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员登录日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_login_log'
GO
SET IDENTITY_INSERT [dbo].[dt_user_login_log] ON
INSERT [dbo].[dt_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (1, 1, N'test', N'会员登录', CAST(0x0000A769001D9A23 AS DateTime), N'127.0.0.1')
INSERT [dbo].[dt_user_login_log] ([id], [user_id], [user_name], [remark], [login_time], [login_ip]) VALUES (2, 1, N'test', N'会员登录', CAST(0x0000A78E00DD8372 AS DateTime), N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[dt_user_login_log] OFF
/****** Object:  Table [dbo].[dt_user_groups]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[grade] [int] NULL,
	[upgrade_exp] [int] NULL,
	[amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[discount] [int] NULL,
	[is_default] [tinyint] NULL,
	[is_upgrade] [tinyint] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_USER_GROUPS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'升级经验值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'upgrade_exp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认预存款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购物折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否注册用户组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否自动升级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_upgrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_groups'
GO
SET IDENTITY_INSERT [dbo].[dt_user_groups] ON
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (1, N'注册会员', 1, 0, CAST(0.00 AS Decimal(9, 2)), 0, 100, 1, 0, 0)
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (2, N'高级会员', 2, 1000, CAST(0.00 AS Decimal(9, 2)), 0, 99, 0, 1, 0)
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (3, N'中级会员', 3, 2000, CAST(1.00 AS Decimal(9, 2)), 10, 98, 0, 1, 0)
INSERT [dbo].[dt_user_groups] ([id], [title], [grade], [upgrade_exp], [amount], [point], [discount], [is_default], [is_upgrade], [is_lock]) VALUES (4, N'钻石会员', 4, 3000, CAST(2.00 AS Decimal(9, 2)), 20, 95, 0, 1, 0)
SET IDENTITY_INSERT [dbo].[dt_user_groups] OFF
/****** Object:  Table [dbo].[dt_user_group_price]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_group_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[group_id] [int] NULL,
	[price] [decimal](9, 2) NULL,
 CONSTRAINT [PK_DT_USER_GROUP_PRICE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员组价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_group_price'
GO
/****** Object:  Table [dbo].[dt_user_code]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[type] [nvarchar](20) NULL,
	[str_code] [nvarchar](255) NULL,
	[count] [int] NULL,
	[status] [tinyint] NULL,
	[user_ip] [nvarchar](20) NULL,
	[eff_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_DT_USER_CODE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成码类别 password取回密码,register邀请注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成的字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'str_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0未使用1已使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'eff_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户随机码表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_code'
GO
/****** Object:  Table [dbo].[dt_user_attach_log]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_attach_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[attach_id] [int] NULL,
	[file_name] [nvarchar](255) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_dt_user_attach_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'attach_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户下载记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_attach_log'
GO
/****** Object:  Table [dbo].[dt_user_amount_log]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_amount_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[value] [decimal](9, 2) NULL,
	[remark] [nvarchar](500) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_AMOUNT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增减值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员金额日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_amount_log'
GO
/****** Object:  Table [dbo].[dt_user_addr_book]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_user_addr_book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[accept_name] [nvarchar](100) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[mobile] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[is_default] [tinyint] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_USER_ADDR_BOOK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省市区逗号分隔' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址簿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_user_addr_book'
GO
SET IDENTITY_INSERT [dbo].[dt_user_addr_book] ON
INSERT [dbo].[dt_user_addr_book] ([id], [user_id], [user_name], [accept_name], [area], [address], [mobile], [telphone], [email], [post_code], [is_default], [add_time]) VALUES (1, 1, N'test', N'测试人', N'广东省,深圳市,宝安区', N'西乡街道西乡街道33号', N'13800138000', N'', N'test@qq.com', N'', 0, CAST(0x0000A769001FE675 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_user_addr_book] OFF
/****** Object:  Table [dbo].[dt_sms_template]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_sms_template](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[call_index] [nvarchar](50) NULL,
	[content] [ntext] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_SMS_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调用别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'call_index'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机短信模板' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sms_template'
GO
SET IDENTITY_INSERT [dbo].[dt_sms_template] ON
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (1, N'会员验证码短信', N'usercode', N'您的验证码为：{code}，{valid}分钟内有效。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (2, N'欢迎新用户短信', N'welcomemsg', N'欢迎成为{webname}会员，你的用户名为：{username}，注意保管好您的账户信息。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (3, N'订单确认通知', N'order_confirm', N'尊敬的{username}，您在{webname}的订单已确认，订单号为：{orderno}，共计{amount}元，我们会尽快安排发货。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (4, N'订单发货通知', N'order_express', N'尊敬的{username}，您在{webname}的订单已发货，订单号为：{orderno}，请注意查收。', 1)
INSERT [dbo].[dt_sms_template] ([id], [title], [call_index], [content], [is_sys]) VALUES (5, N'订单完成通知', N'order_complete', N'尊敬的{username}，您在{webname}的一笔订单交易完成，订单号为：{orderno}，期待下次光临，祝您购物愉快。', 1)
SET IDENTITY_INSERT [dbo].[dt_sms_template] OFF
/****** Object:  Table [dbo].[dt_sites]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_sites](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[build_path] [nvarchar](100) NULL,
	[templet_path] [nvarchar](100) NULL,
	[domain] [nvarchar](255) NULL,
	[is_default] [tinyint] NULL,
	[name] [nvarchar](255) NULL,
	[logo] [nvarchar](255) NULL,
	[company] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[tel] [nvarchar](30) NULL,
	[fax] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[crod] [nvarchar](100) NULL,
	[copyright] [nvarchar](800) NULL,
	[seo_title] [nvarchar](255) NULL,
	[seo_keyword] [nvarchar](255) NULL,
	[seo_description] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_SITES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点目录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'build_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板目录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'templet_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'绑定域名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站LOGO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'logo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备案号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'crod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版权信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'copyright'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'seo_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO关健字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'seo_keyword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEO描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'seo_description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0正常1禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_sites'
GO
SET IDENTITY_INSERT [dbo].[dt_sites] ON
INSERT [dbo].[dt_sites] ([id], [title], [build_path], [templet_path], [domain], [is_default], [name], [logo], [company], [address], [tel], [fax], [email], [crod], [copyright], [seo_title], [seo_keyword], [seo_description], [sort_id], [is_lock]) VALUES (1, N'默认站点', N'main', N'main', N'', 1, N'xx', N'/upload/201907/01/201907011952489397.png', N'广州金冠燃气技术开发有限公司', N'', N'', N'', N'', N'粤ICP备09072434号-1', N'2019 © 广州金冠燃气技术开发有限公司', N'广州金冠燃气技术开发有限公司', N'广州金冠燃气技术开发有限公司', N'广州金冠燃气技术开发有限公司', 99, 0)
SET IDENTITY_INSERT [dbo].[dt_sites] OFF
/****** Object:  Table [dbo].[dt_manager_role]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](100) NULL,
	[role_type] [tinyint] NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统默认0否1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_role] ON
INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (1, N'超级管理组', 1, 1)
INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (2, N'普通管理组', 2, 0)
INSERT [dbo].[dt_manager_role] ([id], [role_name], [role_type], [is_sys]) VALUES (3, N'客户管理组', 2, 0)
SET IDENTITY_INSERT [dbo].[dt_manager_role] OFF
/****** Object:  Table [dbo].[dt_manager_log]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](100) NULL,
	[remark] [nvarchar](255) NULL,
	[user_ip] [nvarchar](30) NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'user_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_log'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_log] ON
INSERT [dbo].[dt_manager_log] ([id], [user_id], [user_name], [action_type], [remark], [user_ip], [add_time]) VALUES (1, 1, N'admin', N'Cancel', N'取消订单号:B17061013291608', N'127.0.0.1', CAST(0x0000A78E0100B51F AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_manager_log] OFF
/****** Object:  Table [dbo].[dt_oauth_app]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_oauth_app](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[api_path] [nvarchar](255) NULL,
 CONSTRAINT [PK_DT_OAUTH_APP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_oauth_app', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_oauth_app', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_oauth_app', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_oauth_app', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_oauth_app', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_oauth_app', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_oauth_app', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_oauth_app'
GO
SET IDENTITY_INSERT [dbo].[dt_oauth_app] ON
INSERT [dbo].[dt_oauth_app] ([id], [title], [img_url], [remark], [sort_id], [is_lock], [api_path]) VALUES (1, N'用QQ帐号登录', N'/images/oauth/qq.png', N'QQ互联开放平台', 99, 0, N'qq')
INSERT [dbo].[dt_oauth_app] ([id], [title], [img_url], [remark], [sort_id], [is_lock], [api_path]) VALUES (2, N'用新浪微博登录', N'/images/oauth/weibo.png', N'新浪微博开放平台', 100, 0, N'sina')
INSERT [dbo].[dt_oauth_app] ([id], [title], [img_url], [remark], [sort_id], [is_lock], [api_path]) VALUES (3, N'用微信账号登录', N'/images/oauth/weixin.png', N'仅适用于微信公众平台内置浏览器使用', 101, 0, N'weixin')
INSERT [dbo].[dt_oauth_app] ([id], [title], [img_url], [remark], [sort_id], [is_lock], [api_path]) VALUES (4, N'用开心网帐号登录', N'/images/oauth/kaixin.png', N'开心网开放平台', 102, 0, N'kaixin')
INSERT [dbo].[dt_oauth_app] ([id], [title], [img_url], [remark], [sort_id], [is_lock], [api_path]) VALUES (5, N'用人人网帐号登录', N'/images/oauth/renren.png', N'人人网开放平台', 103, 0, N'renren')
INSERT [dbo].[dt_oauth_app] ([id], [title], [img_url], [remark], [sort_id], [is_lock], [api_path]) VALUES (6, N'用飞信账号登录', N'/images/oauth/feixin.png', N'中国移动飞信开放平台', 104, 0, N'feixin')
SET IDENTITY_INSERT [dbo].[dt_oauth_app] OFF
/****** Object:  Table [dbo].[dt_navigation]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_navigation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[channel_id] [int] NULL,
	[nav_type] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[title] [nvarchar](100) NULL,
	[sub_title] [nvarchar](100) NULL,
	[icon_url] [nvarchar](255) NULL,
	[link_url] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[remark] [nvarchar](500) NULL,
	[action_type] [nvarchar](500) NULL,
	[is_sys] [tinyint] NULL,
 CONSTRAINT [PK_DT_NAVIGATION] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属父导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'nav_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sub_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'icon_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'link_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否隐藏0显示1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限资源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation', @level2type=N'COLUMN',@level2name=N'is_sys'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统导航菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_navigation'
GO
SET IDENTITY_INSERT [dbo].[dt_navigation] ON
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (1, 0, 0, N'System', N'sys_contents', N'站点管理', N'站点', N'.icon-home-full', N'', 99, 0, N'系统默认导航，不可更改导航ID', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (2, 0, 0, N'System', N'sys_application', N'应用管理', N'应用', N'.icon-plugin-full', N'', 100, 1, N'系统默认导航，不可更改导航ID', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (3, 0, 0, N'System', N'sys_users', N'会员管理', N'会员', N'.icon-user-full', N'', 101, 1, N'系统默认导航，不可更改导航ID', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (4, 0, 0, N'System', N'sys_controller', N'控制面板', N'控制面板', N'.icon-setting-full', N'', 103, 0, N'系统默认导航，不可更改导航ID', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (7, 4, 0, N'System', N'sys_manager', N'系统用户', N'', N'', N'', 103, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (8, 7, 0, N'System', N'manager_list', N'管理员管理', N'', N'', N'/admin/manager/manager_list', 99, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (9, 7, 0, N'System', N'manager_role', N'角色管理', N'', N'', N'/admin/manager/role_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (10, 7, 0, N'System', N'manager_log', N'管理日志', N'', N'', N'/admin/manager/manager_log', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (11, 4, 0, N'System', N'sys_settings', N'系统管理', N'', N'', N'', 99, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (12, 11, 0, N'System', N'sys_config', N'系统设置', N'', N'', N'/admin/settings/sys_config', 99, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (13, 11, 0, N'System', N'sys_plugin_config', N'插件设置', N'', N'', N'/admin/settings/plugin_list', 100, 0, N'', N'Show,View,Build,Instal,Unload', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (14, 11, 0, N'System', N'sys_url_rewrite', N'URL配置', N'', N'', N'/admin/settings/url_rewrite_list', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (15, 4, 0, N'System', N'sys_site_settings', N'站点设置', N'', N'', N'', 100, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (16, 15, 0, N'System', N'sys_site_manage', N'站点管理', N'', N'', N'/admin/channel/site_list', 99, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (17, 15, 0, N'System', N'sys_channel_manage', N'频道管理', N'', N'', N'/admin/channel/channel_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (18, 15, 0, N'System', N'sys_channel_field', N'扩展字段', N'', N'', N'/admin/channel/attribute_field_list', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (19, 4, 0, N'System', N'sys_design', N'界面管理', N'', N'', N'', 102, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (20, 19, 0, N'System', N'sys_site_templet', N'站点模板管理', N'', N'', N'/admin/settings/templet_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Build', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (21, 19, 0, N'System', N'sys_builder_html', N'生成静态管理', N'', N'', N'/admin/settings/builder_html', 100, 0, N'', N'Show,View,Build', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (22, 19, 0, N'System', N'sys_navigation', N'后台导航管理', N'', N'', N'/admin/settings/nav_list', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (23, 0, 0, N'System', N'sys_orders', N'订单管理', N'订单', N'.icon-order-full', N'', 102, 1, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (26, 2, 0, N'System', N'sys_plugin_manage', N'插件管理', N'', N'', N'', 99, 1, N'', N'Show,View', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (35, 23, 0, N'System', N'order_manage', N'订单管理', N'', N'', N'', 99, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (36, 23, 0, N'System', N'order_settings', N'订单设置', N'', N'', N'', 100, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (37, 36, 0, N'System', N'order_config', N'订单参数设置', N'', N'', N'/admin/order/order_config', 99, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (38, 36, 0, N'System', N'order_payment', N'支付方式设置', N'', N'', N'/admin/order/site_payment_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (39, 36, 0, N'System', N'order_express', N'配送方式设置', N'', N'', N'/admin/order/express_list', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (41, 35, 0, N'System', N'order_confirm', N'待确认订单', N'', N'', N'/admin/order/order_confirm', 99, 0, N'', N'Show,View,Confirm', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (42, 35, 0, N'System', N'order_list', N'全部订单', N'', N'', N'/admin/order/order_list', 100, 0, N'', N'Show,View,Add,Edit,Delete,Confirm,Cancel,Invalid', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (43, 3, 0, N'System', N'user_manage', N'会员管理', N'', N'', N'', 99, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (44, 43, 0, N'System', N'user_audit', N'审核会员', N'', N'', N'/admin/users/user_audit', 99, 0, N'', N'Show,View,Audit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (45, 43, 0, N'System', N'user_list', N'所有会员', N'', N'', N'/admin/users/user_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (46, 43, 0, N'System', N'user_group', N'会员组别', N'', N'', N'/admin/users/group_list', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (47, 3, 0, N'System', N'user_log', N'会员日志', N'', N'', N'', 100, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (48, 47, 0, N'System', N'user_sms', N'发送短信', N'', N'', N'/admin/users/user_sms', 99, 0, N'', N'Show,View,Add', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (49, 47, 0, N'System', N'user_message', N'站内消息', N'', N'', N'/admin/users/message_list', 100, 0, N'', N'Show,View,Add,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (50, 47, 0, N'System', N'user_recharge_log', N'充值记录', N'', N'', N'/admin/users/recharge_list', 101, 0, N'', N'Show,View,Add,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (51, 47, 0, N'System', N'user_amount_log', N'消费记录', N'', N'', N'/admin/users/amount_log', 102, 0, N'', N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (52, 47, 0, N'System', N'user_point_log', N'积分记录', N'', N'', N'/admin/users/point_log', 103, 0, N'', N'Show,View,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (53, 3, 0, N'System', N'user_settings', N'会员设置', N'', N'', N'', 101, 0, N'', N'Show', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (54, 53, 0, N'System', N'user_config', N'参数设置', N'', N'', N'/admin/users/user_config', 99, 0, N'', N'Show,View,Edit', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (55, 53, 0, N'System', N'user_sms_template', N'短信模板', N'', N'', N'/admin/users/sms_template_list', 101, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (56, 53, 0, N'System', N'user_mail_template', N'邮件模板', N'', N'', N'/admin/users/mail_template_list', 102, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (57, 53, 0, N'System', N'user_oauth', N'OAuth设置', N'', N'', N'/admin/users/site_oauth_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (59, 15, 0, N'System', N'sys_article_tags', N'Tags标签', N'', N'', N'/admin/channel/tags_list', 103, 0, N'', N'Show,View,Add,Edit,Delete', 0)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (80, 26, 0, N'System', N'plugin_feedback', N'留言管理', N'', N'', N'/admin//plugins/feedback/admin/index', 0, 0, N'', N'Show,View,Delete,Audit,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (81, 26, 0, N'System', N'plugin_link', N'链接管理', N'', N'', N'/admin//plugins/link/admin/index', 0, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (92, 1, 0, N'System', N'channel_main', N'默认站点', N'', N'', N'', 99, 0, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (93, 92, 1, N'System', N'channel_news', N'新闻动态', N'', N'', N'', 2, 0, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (94, 93, 1, N'System', N'channel_news_list', N'内容管理', N'', N'', N'/admin/article/article_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (95, 93, 1, N'System', N'channel_news_category', N'栏目类别', N'', N'', N'/admin/article/category_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (108, 92, 2, N'System', N'channel_goods', N'购物商城', N'', N'', N'', 100, 1, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (109, 108, 2, N'System', N'channel_goods_list', N'内容管理', N'', N'', N'/admin/article/article_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (110, 108, 2, N'System', N'channel_goods_category', N'栏目类别', N'', N'', N'/admin/article/category_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (112, 108, 2, N'System', N'channel_goods_comment', N'评论管理', N'', N'', N'/admin/article/comment_list', 103, 0, N'', N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (113, 92, 3, N'System', N'channel_video', N'视频专区', N'', N'', N'', 101, 1, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (114, 113, 3, N'System', N'channel_video_list', N'内容管理', N'', N'', N'/admin/article/article_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (115, 113, 3, N'System', N'channel_video_category', N'栏目类别', N'', N'', N'/admin/article/category_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (116, 113, 3, N'System', N'channel_video_comment', N'评论管理', N'', N'', N'/admin/article/comment_list', 103, 0, N'', N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (117, 92, 4, N'System', N'channel_photo', N'首页管理', N'', N'', N'', 1, 0, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (118, 117, 4, N'System', N'channel_photo_list', N'内容管理', N'', N'', N'/admin/article/article_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (119, 117, 4, N'System', N'channel_photo_category', N'栏目类别', N'', N'', N'/admin/article/category_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (121, 92, 5, N'System', N'channel_down', N'资源下载', N'', N'', N'', 103, 1, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (122, 121, 5, N'System', N'channel_down_list', N'内容管理', N'', N'', N'/admin/article/article_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (123, 121, 5, N'System', N'channel_down_category', N'栏目类别', N'', N'', N'/admin/article/category_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (124, 121, 5, N'System', N'channel_down_comment', N'评论管理', N'', N'', N'/admin/article/comment_list', 103, 0, N'', N'Show,View,Delete,Reply', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (125, 92, 6, N'System', N'channel_content', N'单篇管理', N'', N'', N'', 4, 0, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (126, 125, 6, N'System', N'channel_content_list', N'内容管理', N'', N'', N'/admin/article/article_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (127, 125, 6, N'System', N'channel_content_category', N'栏目类别', N'', N'', N'/admin/article/category_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (128, 92, 7, N'System', N'channel_cases', N'安全用气', N'', N'', N'', 3, 0, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (129, 128, 7, N'System', N'channel_cases_list', N'内容管理', N'', N'', N'/admin/article/article_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (130, 128, 7, N'System', N'channel_cases_category', N'栏目类别', N'', N'', N'/admin/article/category_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (132, 92, 8, N'System', N'channel_product', N'产品', N'', N'', N'', 99, 1, N'', N'Show', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (133, 132, 8, N'System', N'channel_product_list', N'内容管理', N'', N'', N'/admin/article/article_list', 99, 0, N'', N'Show,View,Add,Edit,Delete,Audit', 1)
INSERT [dbo].[dt_navigation] ([id], [parent_id], [channel_id], [nav_type], [name], [title], [sub_title], [icon_url], [link_url], [sort_id], [is_lock], [remark], [action_type], [is_sys]) VALUES (134, 132, 8, N'System', N'channel_product_category', N'栏目类别', N'', N'', N'/admin/article/category_list', 100, 0, N'', N'Show,View,Add,Edit,Delete', 1)
SET IDENTITY_INSERT [dbo].[dt_navigation] OFF
/****** Object:  Table [dbo].[dt_payment]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[remark] [nvarchar](500) NULL,
	[type] [tinyint] NULL,
	[poundage_type] [tinyint] NULL,
	[poundage_amount] [decimal](9, 2) NULL,
	[api_path] [nvarchar](100) NULL,
	[redirect_url] [nvarchar](255) NULL,
	[return_url] [nvarchar](255) NULL,
	[notify_url] [nvarchar](255) NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
 CONSTRAINT [PK_DT_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付类型1线上2线下' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费类型1百分比2固定金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手续费金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'poundage_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API目录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'api_path'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付链接页面' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'redirect_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跳转返回页面' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'return_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付通知页面' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'notify_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用0正常1禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_payment'
GO
SET IDENTITY_INSERT [dbo].[dt_payment] ON
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [api_path], [redirect_url], [return_url], [notify_url], [sort_id], [is_lock]) VALUES (1, N'货到付款', N'', N'收到商品后进行支付，支持现金和刷卡服务。', 2, 2, CAST(0.00 AS Decimal(9, 2)), NULL, NULL, NULL, NULL, 99, 0)
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [api_path], [redirect_url], [return_url], [notify_url], [sort_id], [is_lock]) VALUES (2, N'账户余额', N'', N'账户余额是客户在您网站上的账户虚拟资金', 1, 1, CAST(0.00 AS Decimal(9, 2)), N'balance', N'/api/payment/balance/index.aspx', NULL, NULL, 100, 0)
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [api_path], [redirect_url], [return_url], [notify_url], [sort_id], [is_lock]) VALUES (3, N'支付宝支付', N'', N'付款后立即到账，单笔费率阶梯最低0.7%，无流量限制。<a href="https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C433530444855584111X&market_type=from_agent_contract&pro_codes=61F99645EC0DC4380ADE569DD132AD7A" target="_blank">立即申请</a>', 1, 1, CAST(0.00 AS Decimal(9, 2)), N'alipaypc', N'/api/payment/alipaypc/index.aspx', N'/api/payment/alipaypc/return_url.aspx', N'/api/payment/alipaypc/notify_url.aspx', 101, 0)
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [api_path], [redirect_url], [return_url], [notify_url], [sort_id], [is_lock]) VALUES (4, N'财付通支付', N'', N'费率最低至<span style="color:#FF0000;font-weight: bold;">0.61%</span>，并赠送价值千元企业QQ。<a href="http://union.tenpay.com/mch/mch_register.shtml?sp_suggestuser=1202822001" target="_blank">中小商家签约入口</a>', 1, 1, CAST(0.00 AS Decimal(9, 2)), N'tenpaypc', N'/api/payment/tenpaypc/index.aspx', N'/api/payment/tenpaypc/return_url.aspx', N'/api/payment/tenpaypc/notify_url.aspx', 102, 0)
INSERT [dbo].[dt_payment] ([id], [title], [img_url], [remark], [type], [poundage_type], [poundage_amount], [api_path], [redirect_url], [return_url], [notify_url], [sort_id], [is_lock]) VALUES (5, N'网银在线支付', N'', N'网银在线支付B2C系统商户接口，非京东支付。<a href="http://www.chinabank.com.cn/service/support.jsp" target="_blank">商户申请</a>', 1, 1, CAST(0.00 AS Decimal(9, 2)), N'chinabankpc', N'/api/payment/chinabankpc/index.aspx', N'/api/payment/chinabankpc/return_url.aspx', N'/api/payment/chinabankpc/notify_url.aspx', 103, 0)
SET IDENTITY_INSERT [dbo].[dt_payment] OFF
/****** Object:  Table [dbo].[dt_orders]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[order_no] [nvarchar](100) NULL,
	[trade_no] [nvarchar](100) NULL,
	[user_id] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[payment_id] [int] NULL,
	[payment_fee] [decimal](9, 2) NULL,
	[payment_status] [tinyint] NULL,
	[payment_time] [datetime] NULL,
	[express_id] [int] NULL,
	[express_no] [nvarchar](100) NULL,
	[express_fee] [decimal](9, 2) NULL,
	[express_status] [tinyint] NULL,
	[express_time] [datetime] NULL,
	[accept_name] [nvarchar](50) NULL,
	[post_code] [nvarchar](20) NULL,
	[telphone] [nvarchar](30) NULL,
	[mobile] [nvarchar](20) NULL,
	[email] [nvarchar](30) NULL,
	[area] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[message] [nvarchar](500) NULL,
	[remark] [nvarchar](500) NULL,
	[is_invoice] [tinyint] NULL,
	[invoice_title] [varchar](100) NULL,
	[invoice_taxes] [decimal](9, 2) NULL,
	[payable_amount] [decimal](9, 2) NULL,
	[real_amount] [decimal](9, 2) NULL,
	[order_amount] [decimal](9, 2) NULL,
	[point] [int] NULL,
	[status] [tinyint] NULL,
	[add_time] [datetime] NULL,
	[confirm_time] [datetime] NULL,
	[complete_time] [datetime] NULL,
 CONSTRAINT [PK_dt_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号担保支付用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'trade_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付手续费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付状态0未支付1待支付2已支付' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payment_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_fee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态1未发货2已发货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'express_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'accept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属省市区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否索要发票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'is_invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票抬头' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'invoice_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'invoice_taxes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'payable_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实付商品总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'real_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'order_amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单状态1生成订单,2确认订单,3完成订单,4取消订单,5作废订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'confirm_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders', @level2type=N'COLUMN',@level2name=N'complete_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_orders'
GO
/****** Object:  Table [dbo].[dt_site_channel]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dt_site_channel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[is_comment] [tinyint] NULL,
	[is_albums] [tinyint] NULL,
	[is_attach] [tinyint] NULL,
	[is_spec] [tinyint] NULL,
	[is_contribute] [tinyint] NULL,
	[sort_id] [int] NULL,
	[is_lock] [tinyint] NULL,
	[titleEn] [varchar](100) NULL,
 CONSTRAINT [PK_DT_SITE_CHANNEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否开启评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'is_comment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启相册功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'is_albums'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启附件功能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'is_attach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'is_spec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许投稿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'is_contribute'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态0启用1禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统频道表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel'
GO
SET IDENTITY_INSERT [dbo].[dt_site_channel] ON
INSERT [dbo].[dt_site_channel] ([id], [site_id], [name], [title], [is_comment], [is_albums], [is_attach], [is_spec], [is_contribute], [sort_id], [is_lock], [titleEn]) VALUES (1, 1, N'news', N'新闻动态', 0, 0, 0, 0, 0, 2, 0, N'news')
INSERT [dbo].[dt_site_channel] ([id], [site_id], [name], [title], [is_comment], [is_albums], [is_attach], [is_spec], [is_contribute], [sort_id], [is_lock], [titleEn]) VALUES (2, 1, N'goods', N'购物商城', 1, 1, 0, 1, 0, 100, 0, NULL)
INSERT [dbo].[dt_site_channel] ([id], [site_id], [name], [title], [is_comment], [is_albums], [is_attach], [is_spec], [is_contribute], [sort_id], [is_lock], [titleEn]) VALUES (3, 1, N'video', N'视频专区', 1, 0, 0, 0, 0, 101, 0, NULL)
INSERT [dbo].[dt_site_channel] ([id], [site_id], [name], [title], [is_comment], [is_albums], [is_attach], [is_spec], [is_contribute], [sort_id], [is_lock], [titleEn]) VALUES (4, 1, N'photo', N'首页管理', 0, 0, 0, 0, 0, 1, 0, N'home')
INSERT [dbo].[dt_site_channel] ([id], [site_id], [name], [title], [is_comment], [is_albums], [is_attach], [is_spec], [is_contribute], [sort_id], [is_lock], [titleEn]) VALUES (5, 1, N'down', N'资源下载', 1, 0, 1, 0, 0, 103, 0, NULL)
INSERT [dbo].[dt_site_channel] ([id], [site_id], [name], [title], [is_comment], [is_albums], [is_attach], [is_spec], [is_contribute], [sort_id], [is_lock], [titleEn]) VALUES (6, 1, N'content', N'单篇管理', 0, 1, 1, 0, 0, 4, 0, N'about')
INSERT [dbo].[dt_site_channel] ([id], [site_id], [name], [title], [is_comment], [is_albums], [is_attach], [is_spec], [is_contribute], [sort_id], [is_lock], [titleEn]) VALUES (7, 1, N'cases', N'安全用气', 0, 0, 0, 0, 0, 3, 0, N'Safe Gas Use')
INSERT [dbo].[dt_site_channel] ([id], [site_id], [name], [title], [is_comment], [is_albums], [is_attach], [is_spec], [is_contribute], [sort_id], [is_lock], [titleEn]) VALUES (8, 1, N'product', N'产品', 0, 0, 0, 0, 0, 99, 0, NULL)
SET IDENTITY_INSERT [dbo].[dt_site_channel] OFF
/****** Object:  Table [dbo].[dt_order_goods]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_order_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[article_id] [int] NULL,
	[order_id] [int] NULL,
	[goods_id] [int] NULL,
	[goods_no] [nvarchar](50) NULL,
	[goods_title] [nvarchar](100) NULL,
	[img_url] [nvarchar](255) NULL,
	[goods_price] [decimal](9, 2) NULL,
	[real_price] [decimal](9, 2) NULL,
	[quantity] [int] NULL,
	[point] [int] NULL,
 CONSTRAINT [PK_DT_ORDER_GOODS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'article_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'order_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品货号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'img_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'goods_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'real_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分,正数赠送|负数消费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods', @level2type=N'COLUMN',@level2name=N'point'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单商品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_order_goods'
GO
/****** Object:  Table [dbo].[dt_manager_role_value]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager_role_value](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[nav_name] [nvarchar](100) NULL,
	[action_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_MANAGER_ROLE_VALUE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'nav_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value', @level2type=N'COLUMN',@level2name=N'action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager_role_value'
GO
SET IDENTITY_INSERT [dbo].[dt_manager_role_value] ON
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (511, 3, N'sys_controller', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (512, 3, N'sys_design', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (513, 3, N'sys_site_templet', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (514, 3, N'sys_site_templet', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (515, 3, N'sys_site_templet', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (516, 3, N'sys_site_templet', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (517, 3, N'sys_site_templet', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (518, 3, N'sys_site_templet', N'Build')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (519, 3, N'sys_builder_html', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (520, 3, N'sys_builder_html', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (521, 3, N'sys_builder_html', N'Build')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (522, 3, N'sys_navigation', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (523, 3, N'sys_navigation', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (524, 3, N'sys_navigation', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (525, 3, N'sys_navigation', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (526, 3, N'sys_navigation', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (527, 3, N'sys_manager', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (528, 3, N'manager_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (529, 3, N'manager_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (530, 3, N'manager_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (531, 3, N'manager_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (532, 3, N'manager_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (533, 3, N'manager_role', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (534, 3, N'manager_role', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (535, 3, N'manager_role', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (536, 3, N'manager_role', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (537, 2, N'sys_contents', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (538, 2, N'channel_main', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (539, 2, N'channel_photo', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (540, 2, N'channel_photo_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (541, 2, N'channel_photo_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (542, 2, N'channel_photo_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (543, 2, N'channel_photo_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (544, 2, N'channel_photo_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (545, 2, N'channel_photo_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (546, 2, N'channel_photo_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (547, 2, N'channel_photo_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (548, 2, N'channel_photo_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (549, 2, N'channel_photo_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (550, 2, N'channel_photo_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (551, 2, N'channel_news', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (552, 2, N'channel_news_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (553, 2, N'channel_news_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (554, 2, N'channel_news_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (555, 2, N'channel_news_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (556, 2, N'channel_news_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (557, 2, N'channel_news_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (558, 2, N'channel_news_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (559, 2, N'channel_news_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (560, 2, N'channel_news_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (561, 2, N'channel_news_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (562, 2, N'channel_news_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (563, 2, N'channel_cases', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (564, 2, N'channel_cases_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (565, 2, N'channel_cases_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (566, 2, N'channel_cases_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (567, 2, N'channel_cases_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (568, 2, N'channel_cases_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (569, 2, N'channel_cases_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (570, 2, N'channel_cases_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (571, 2, N'channel_cases_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (572, 2, N'channel_cases_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (573, 2, N'channel_cases_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (574, 2, N'channel_cases_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (575, 2, N'channel_content', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (576, 2, N'channel_content_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (577, 2, N'channel_content_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (578, 2, N'channel_content_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (579, 2, N'channel_content_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (580, 2, N'channel_content_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (581, 2, N'channel_content_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (582, 2, N'channel_content_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (583, 2, N'channel_content_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (584, 2, N'channel_content_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (585, 2, N'channel_content_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (586, 2, N'channel_content_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (587, 2, N'channel_product', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (588, 2, N'channel_product_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (589, 2, N'channel_product_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (590, 2, N'channel_product_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (591, 2, N'channel_product_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (592, 2, N'channel_product_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (593, 2, N'channel_product_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (594, 2, N'channel_product_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (595, 2, N'channel_product_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (596, 2, N'channel_product_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (597, 2, N'channel_product_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (598, 2, N'channel_product_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (599, 2, N'channel_goods', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (600, 2, N'channel_goods_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (601, 2, N'channel_goods_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (602, 2, N'channel_goods_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (603, 2, N'channel_goods_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (604, 2, N'channel_goods_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (605, 2, N'channel_goods_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (606, 2, N'channel_goods_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (607, 2, N'channel_goods_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (608, 2, N'channel_goods_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (609, 2, N'channel_goods_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (610, 2, N'channel_goods_category', N'Delete')
GO
print 'Processed 100 total records'
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (611, 2, N'channel_goods_comment', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (612, 2, N'channel_goods_comment', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (613, 2, N'channel_goods_comment', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (614, 2, N'channel_goods_comment', N'Reply')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (615, 2, N'channel_video', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (616, 2, N'channel_video_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (617, 2, N'channel_video_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (618, 2, N'channel_video_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (619, 2, N'channel_video_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (620, 2, N'channel_video_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (621, 2, N'channel_video_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (622, 2, N'channel_video_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (623, 2, N'channel_video_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (624, 2, N'channel_video_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (625, 2, N'channel_video_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (626, 2, N'channel_video_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (627, 2, N'channel_video_comment', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (628, 2, N'channel_video_comment', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (629, 2, N'channel_video_comment', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (630, 2, N'channel_video_comment', N'Reply')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (631, 2, N'channel_down', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (632, 2, N'channel_down_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (633, 2, N'channel_down_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (634, 2, N'channel_down_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (635, 2, N'channel_down_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (636, 2, N'channel_down_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (637, 2, N'channel_down_list', N'Audit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (638, 2, N'channel_down_category', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (639, 2, N'channel_down_category', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (640, 2, N'channel_down_category', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (641, 2, N'channel_down_category', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (642, 2, N'channel_down_category', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (643, 2, N'channel_down_comment', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (644, 2, N'channel_down_comment', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (645, 2, N'channel_down_comment', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (646, 2, N'channel_down_comment', N'Reply')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (647, 2, N'sys_controller', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (648, 2, N'sys_manager', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (649, 2, N'manager_list', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (650, 2, N'manager_list', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (651, 2, N'manager_list', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (652, 2, N'manager_list', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (653, 2, N'manager_list', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (654, 2, N'manager_role', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (655, 2, N'manager_role', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (656, 2, N'manager_role', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (657, 2, N'manager_role', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (658, 2, N'manager_role', N'Delete')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (659, 2, N'manager_log', N'Show')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (660, 2, N'manager_log', N'View')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (661, 2, N'manager_log', N'Add')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (662, 2, N'manager_log', N'Edit')
INSERT [dbo].[dt_manager_role_value] ([id], [role_id], [nav_name], [action_type]) VALUES (663, 2, N'manager_log', N'Delete')
SET IDENTITY_INSERT [dbo].[dt_manager_role_value] OFF
/****** Object:  Table [dbo].[dt_manager]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[role_type] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[salt] [nvarchar](20) NULL,
	[avatar] [nvarchar](255) NULL,
	[real_name] [nvarchar](50) NULL,
	[telephone] [nvarchar](30) NULL,
	[email] [nvarchar](30) NULL,
	[is_audit] [tinyint] NULL,
	[is_lock] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_MANAGER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员类型1超管2系管' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'role_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6位随机字符串,加密用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'real_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'is_lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_manager'
GO
SET IDENTITY_INSERT [dbo].[dt_manager] ON
INSERT [dbo].[dt_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [avatar], [real_name], [telephone], [email], [is_audit], [is_lock], [add_time]) VALUES (2, 1, 1, N'hrlong', N'9AAE0A4B1DBF84FB69593F20DABD240C', N'Z6B2PR', N'', N'', N'', N'', 0, 0, CAST(0x0000AA400152FDE4 AS DateTime))
INSERT [dbo].[dt_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [avatar], [real_name], [telephone], [email], [is_audit], [is_lock], [add_time]) VALUES (3, 2, 2, N'admin', N'9488773CE258BCBA0438A2163EAA4229', N'244BR2', N'', N'', N'', N'', 0, 0, CAST(0x0000AA400155C875 AS DateTime))
INSERT [dbo].[dt_manager] ([id], [role_id], [role_type], [user_name], [password], [salt], [avatar], [real_name], [telephone], [email], [is_audit], [is_lock], [add_time]) VALUES (4, 3, 2, N'test', N'398598D7609BB4A9', N'8202NH', N'', N'', N'', N'', 0, 0, CAST(0x0000AA400157180A AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_manager] OFF
/****** Object:  Table [dbo].[dt_site_payment]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_site_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[payment_id] [int] NULL,
	[title] [nvarchar](100) NULL,
	[key1] [nvarchar](100) NULL,
	[key2] [nvarchar](100) NULL,
	[key3] [nvarchar](100) NULL,
	[key4] [nvarchar](100) NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_SITE_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属站点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'payment_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯密钥1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'key1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯密钥2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'key2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯密钥3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'key3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯密钥4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'key4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点支付方式表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_payment'
GO
SET IDENTITY_INSERT [dbo].[dt_site_payment] ON
INSERT [dbo].[dt_site_payment] ([id], [site_id], [payment_id], [title], [key1], [key2], [key3], [key4], [sort_id], [add_time]) VALUES (1, 1, 1, N'货到付款', NULL, NULL, NULL, NULL, 99, CAST(0x0000A75F0027F06F AS DateTime))
INSERT [dbo].[dt_site_payment] ([id], [site_id], [payment_id], [title], [key1], [key2], [key3], [key4], [sort_id], [add_time]) VALUES (2, 1, 3, N'支付宝', N'test@dtcms.net', N'20886777837323458732', N'vdsso89eg7dkbkdhye8764kjgb89lkfd', NULL, 101, CAST(0x0000A75F00284BAD AS DateTime))
INSERT [dbo].[dt_site_payment] ([id], [site_id], [payment_id], [title], [key1], [key2], [key3], [key4], [sort_id], [add_time]) VALUES (3, 1, 2, N'账户余额', NULL, NULL, NULL, NULL, 100, CAST(0x0000A76800189CD0 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_site_payment] OFF
/****** Object:  Table [dbo].[dt_site_oauth]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_site_oauth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[site_id] [int] NULL,
	[oauth_id] [int] NULL,
	[title] [nvarchar](100) NULL,
	[app_id] [nvarchar](100) NULL,
	[app_key] [nvarchar](500) NULL,
	[sort_id] [int] NULL,
	[add_time] [datetime] NULL,
 CONSTRAINT [PK_DT_SITE_OAUTH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth', @level2type=N'COLUMN',@level2name=N'site_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OAuth应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth', @level2type=N'COLUMN',@level2name=N'oauth_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自定义标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth', @level2type=N'COLUMN',@level2name=N'app_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AppKey' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth', @level2type=N'COLUMN',@level2name=N'app_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序数字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth', @level2type=N'COLUMN',@level2name=N'sort_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth', @level2type=N'COLUMN',@level2name=N'add_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属站点的OAuth登录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_oauth'
GO
SET IDENTITY_INSERT [dbo].[dt_site_oauth] ON
INSERT [dbo].[dt_site_oauth] ([id], [site_id], [oauth_id], [title], [app_id], [app_key], [sort_id], [add_time]) VALUES (2, 1, 1, N'QQ登录', N'API Key', N'Secret Key', 99, CAST(0x0000A75B011F2463 AS DateTime))
INSERT [dbo].[dt_site_oauth] ([id], [site_id], [oauth_id], [title], [app_id], [app_key], [sort_id], [add_time]) VALUES (3, 1, 2, N'微博登录', N'API Key', N'Secret Key', 100, CAST(0x0000A75B01685FB1 AS DateTime))
SET IDENTITY_INSERT [dbo].[dt_site_oauth] OFF
/****** Object:  Table [dbo].[dt_site_channel_field]    Script Date: 07/23/2019 11:18:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dt_site_channel_field](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NULL,
	[field_id] [int] NULL,
 CONSTRAINT [PK_DT_SITE_CHANNEL_FIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel_field', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel_field', @level2type=N'COLUMN',@level2name=N'channel_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel_field', @level2type=N'COLUMN',@level2name=N'field_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'频道字段表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dt_site_channel_field'
GO
SET IDENTITY_INSERT [dbo].[dt_site_channel_field] ON
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (8, 2, 1)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (9, 2, 4)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (10, 2, 5)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (11, 2, 6)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (12, 2, 7)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (13, 2, 8)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (14, 3, 1)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (15, 3, 9)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (18, 5, 2)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (19, 5, 3)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (24, 8, 16)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (25, 8, 15)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (26, 8, 14)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (27, 8, 13)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (28, 8, 18)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (29, 6, 1)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (30, 4, 1)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (34, 4, 19)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (35, 6, 19)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (46, 4, 10)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (47, 4, 11)
INSERT [dbo].[dt_site_channel_field] ([id], [channel_id], [field_id]) VALUES (48, 4, 12)
SET IDENTITY_INSERT [dbo].[dt_site_channel_field] OFF
/****** Object:  Default [DF__dt_articl__chann__7D78A4E7]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__chann__7D78A4E7]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__artic__7E6CC920]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__artic__7E6CC920]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__thumb__7F60ED59]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__thumb__7F60ED59]  DEFAULT ('') FOR [thumb_path]
GO
/****** Object:  Default [DF__dt_articl__origi__00551192]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__origi__00551192]  DEFAULT ('') FOR [original_path]
GO
/****** Object:  Default [DF__dt_articl__remar__014935CB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__remar__014935CB]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_articl__add_t__023D5A04]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_albums] ADD  CONSTRAINT [DF__dt_articl__add_t__023D5A04]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__chann__0519C6AF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__chann__0519C6AF]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__artic__060DEAE8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__artic__060DEAE8]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__file___07020F21]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___07020F21]  DEFAULT ('') FOR [file_name]
GO
/****** Object:  Default [DF__dt_articl__file___07F6335A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___07F6335A]  DEFAULT ('') FOR [file_path]
GO
/****** Object:  Default [DF__dt_articl__file___08EA5793]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___08EA5793]  DEFAULT ((0)) FOR [file_size]
GO
/****** Object:  Default [DF__dt_articl__file___09DE7BCC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__file___09DE7BCC]  DEFAULT ('') FOR [file_ext]
GO
/****** Object:  Default [DF__dt_articl__down___0AD2A005]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__down___0AD2A005]  DEFAULT ((0)) FOR [down_num]
GO
/****** Object:  Default [DF__dt_articl__point__0BC6C43E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__point__0BC6C43E]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_articl__add_t__0CBAE877]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attach] ADD  CONSTRAINT [DF__dt_articl__add_t__0CBAE877]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__title__0F975522]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__title__0F975522]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_articl__data___108B795B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___108B795B]  DEFAULT ((0)) FOR [data_length]
GO
/****** Object:  Default [DF__dt_articl__data___117F9D94]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__data___117F9D94]  DEFAULT ((0)) FOR [data_place]
GO
/****** Object:  Default [DF__dt_articl__item___1273C1CD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__item___1273C1CD]  DEFAULT ('') FOR [item_option]
GO
/****** Object:  Default [DF__dt_articl__defau__1367E606]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__defau__1367E606]  DEFAULT ('') FOR [default_value]
GO
/****** Object:  Default [DF__dt_articl__is_re__145C0A3F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_re__145C0A3F]  DEFAULT ((0)) FOR [is_required]
GO
/****** Object:  Default [DF__dt_articl__is_pa__15502E78]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_pa__15502E78]  DEFAULT ((0)) FOR [is_password]
GO
/****** Object:  Default [DF__dt_articl__is_ht__164452B1]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_ht__164452B1]  DEFAULT ((0)) FOR [is_html]
GO
/****** Object:  Default [DF__dt_articl__edito__173876EA]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__edito__173876EA]  DEFAULT ((0)) FOR [editor_type]
GO
/****** Object:  Default [DF__dt_articl__valid__182C9B23]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__182C9B23]  DEFAULT ('') FOR [valid_tip_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__1920BF5C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__1920BF5C]  DEFAULT ('') FOR [valid_error_msg]
GO
/****** Object:  Default [DF__dt_articl__valid__1A14E395]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__valid__1A14E395]  DEFAULT ('') FOR [valid_pattern]
GO
/****** Object:  Default [DF__dt_articl__sort___1B0907CE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__sort___1B0907CE]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__is_sy__1BFD2C07]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_sy__1BFD2C07]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_articl__is_lo__1CF15040]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_attribute_field] ADD  CONSTRAINT [DF__dt_articl__is_lo__1CF15040]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_articl__site___2C3393D0]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__site___2C3393D0]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_articl__call___2D27B809]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__call___2D27B809]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_articl__paren__2E1BDC42]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__paren__2E1BDC42]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__class__2F10007B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__class__2F10007B]  DEFAULT ((0)) FOR [class_layer]
GO
/****** Object:  Default [DF__dt_articl__sort___300424B4]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__sort___300424B4]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__link___30F848ED]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__link___30F848ED]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_articl__img_u__31EC6D26]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__img_u__31EC6D26]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_articl__seo_t__32E0915F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_t__32E0915F]  DEFAULT ('') FOR [seo_title]
GO
/****** Object:  Default [DF__dt_articl__seo_k__33D4B598]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_k__33D4B598]  DEFAULT ('') FOR [seo_keywords]
GO
/****** Object:  Default [DF__dt_articl__seo_d__34C8D9D1]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__seo_d__34C8D9D1]  DEFAULT ('') FOR [seo_description]
GO
/****** Object:  Default [DF__dt_articl__is_lo__35BCFE0A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_category] ADD  CONSTRAINT [DF__dt_articl__is_lo__35BCFE0A]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_articl__site___3F466844]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__site___3F466844]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_articl__chann__403A8C7D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__chann__403A8C7D]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_articl__artic__412EB0B6]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__artic__412EB0B6]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_articl__paren__4222D4EF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__paren__4222D4EF]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_articl__user___4316F928]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___4316F928]  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_articl__user___440B1D61]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__user___440B1D61]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_articl__is_lo__44FF419A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_lo__44FF419A]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_articl__add_t__45F365D3]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__add_t__45F365D3]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_articl__is_re__46E78A0C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_comment] ADD  CONSTRAINT [DF__dt_articl__is_re__46E78A0C]  DEFAULT ((0)) FOR [is_reply]
GO
/****** Object:  Default [DF__dt_articl__is_re__52593CB8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__is_re__52593CB8]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_articl__sort___534D60F1]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__sort___534D60F1]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_articl__add_t__5441852A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_article_tags] ADD  CONSTRAINT [DF__dt_articl__add_t__5441852A]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channe__site___0B91BA14]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_channe__chann__0C85DE4D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_channe__categ__0D7A0286]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channe__sort___0E6E26BF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__click__0F624AF8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_channe__statu__10566F31]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_channe__is_ms__114A936A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_channe__is_to__123EB7A3]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_channe__is_re__1332DBDC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_channe__is_ho__14270015]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_channe__is_sl__151B244E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_channe__is_sy__160F4887]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_channe__like___17036CC0]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT ((0)) FOR [like_count]
GO
/****** Object:  Default [DF__dt_channe__add_t__17F790F9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_cases] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channe__site___76EBA2E9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__site___76EBA2E9]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_channe__chann__77DFC722]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__chann__77DFC722]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_channe__categ__78D3EB5B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__categ__78D3EB5B]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channe__sort___7ABC33CD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__sort___7ABC33CD]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__click__7BB05806]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__click__7BB05806]  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_channe__statu__7CA47C3F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__statu__7CA47C3F]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_channe__is_ms__7D98A078]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__is_ms__7D98A078]  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_channe__is_to__7E8CC4B1]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__is_to__7E8CC4B1]  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_channe__is_re__7F80E8EA]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__is_re__7F80E8EA]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_channe__is_ho__00750D23]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__is_ho__00750D23]  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_channe__is_sl__0169315C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__is_sl__0169315C]  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_channe__is_sy__025D5595]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__is_sy__025D5595]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_channe__like___035179CE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__like___035179CE]  DEFAULT ((0)) FOR [like_count]
GO
/****** Object:  Default [DF__dt_channe__add_t__04459E07]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_content] ADD  CONSTRAINT [DF__dt_channe__add_t__04459E07]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channe__site___66B53B20]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__site___66B53B20]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_channe__chann__67A95F59]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__chann__67A95F59]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_channe__categ__689D8392]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__categ__689D8392]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channe__sort___6A85CC04]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__sort___6A85CC04]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__click__6B79F03D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__click__6B79F03D]  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_channe__statu__6C6E1476]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__statu__6C6E1476]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_channe__is_ms__6D6238AF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__is_ms__6D6238AF]  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_channe__is_to__6E565CE8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__is_to__6E565CE8]  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_channe__is_re__6F4A8121]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__is_re__6F4A8121]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_channe__is_ho__703EA55A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__is_ho__703EA55A]  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_channe__is_sl__7132C993]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__is_sl__7132C993]  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_channe__is_sy__7226EDCC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__is_sy__7226EDCC]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_channe__like___731B1205]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__like___731B1205]  DEFAULT ((0)) FOR [like_count]
GO
/****** Object:  Default [DF__dt_channe__add_t__740F363E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_down] ADD  CONSTRAINT [DF__dt_channe__add_t__740F363E]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channe__site___361203C5]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__site___361203C5]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_channe__chann__370627FE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__chann__370627FE]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_channe__categ__37FA4C37]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__categ__37FA4C37]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channe__sort___39E294A9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__sort___39E294A9]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__click__3AD6B8E2]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__click__3AD6B8E2]  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_channe__statu__3BCADD1B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__statu__3BCADD1B]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_channe__is_ms__3CBF0154]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__is_ms__3CBF0154]  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_channe__is_to__3DB3258D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__is_to__3DB3258D]  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_channe__is_re__3EA749C6]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__is_re__3EA749C6]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_channe__is_ho__3F9B6DFF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__is_ho__3F9B6DFF]  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_channe__is_sl__408F9238]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__is_sl__408F9238]  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_channe__is_sy__4183B671]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__is_sy__4183B671]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_channe__like___4277DAAA]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__like___4277DAAA]  DEFAULT ((0)) FOR [like_count]
GO
/****** Object:  Default [DF__dt_channe__add_t__436BFEE3]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_goods] ADD  CONSTRAINT [DF__dt_channe__add_t__436BFEE3]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channe__site___74444068]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__site___74444068]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_channe__chann__753864A1]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__chann__753864A1]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_channe__categ__762C88DA]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__categ__762C88DA]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channe__sort___7720AD13]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__sort___7720AD13]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__click__7814D14C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__click__7814D14C]  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_channe__statu__7908F585]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__statu__7908F585]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_channe__is_ms__79FD19BE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__is_ms__79FD19BE]  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_channe__is_to__7AF13DF7]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__is_to__7AF13DF7]  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_channe__is_re__7BE56230]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__is_re__7BE56230]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_channe__is_ho__7CD98669]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__is_ho__7CD98669]  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_channe__is_sl__7DCDAAA2]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__is_sl__7DCDAAA2]  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_channe__is_sy__7EC1CEDB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__is_sy__7EC1CEDB]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_channe__like___7FB5F314]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__like___7FB5F314]  DEFAULT ((0)) FOR [like_count]
GO
/****** Object:  Default [DF__dt_channe__add_t__00AA174D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_news] ADD  CONSTRAINT [DF__dt_channe__add_t__00AA174D]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channe__site___567ED357]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__site___567ED357]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_channe__chann__5772F790]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__chann__5772F790]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_channe__categ__58671BC9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__categ__58671BC9]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channe__sort___5A4F643B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__sort___5A4F643B]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__click__5B438874]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__click__5B438874]  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_channe__statu__5C37ACAD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__statu__5C37ACAD]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_channe__is_ms__5D2BD0E6]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__is_ms__5D2BD0E6]  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_channe__is_to__5E1FF51F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__is_to__5E1FF51F]  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_channe__is_re__5F141958]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__is_re__5F141958]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_channe__is_ho__60083D91]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__is_ho__60083D91]  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_channe__is_sl__60FC61CA]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__is_sl__60FC61CA]  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_channe__is_sy__61F08603]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__is_sy__61F08603]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_channe__like___62E4AA3C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__like___62E4AA3C]  DEFAULT ((0)) FOR [like_count]
GO
/****** Object:  Default [DF__dt_channe__add_t__63D8CE75]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_photo] ADD  CONSTRAINT [DF__dt_channe__add_t__63D8CE75]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channe__site___5BAD9CC8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_channe__chann__5CA1C101]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_channe__categ__5D95E53A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channe__sort___5E8A0973]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__click__5F7E2DAC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_channe__statu__607251E5]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_channe__is_ms__6166761E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_channe__is_to__625A9A57]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_channe__is_re__634EBE90]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_channe__is_ho__6442E2C9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_channe__is_sl__65370702]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_channe__is_sy__662B2B3B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_channe__like___671F4F74]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT ((0)) FOR [like_count]
GO
/****** Object:  Default [DF__dt_channe__add_t__681373AD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_product] ADD  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_channe__site___46486B8E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__site___46486B8E]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_channe__chann__473C8FC7]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__chann__473C8FC7]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_channe__categ__4830B400]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__categ__4830B400]  DEFAULT ((0)) FOR [category_id]
GO
/****** Object:  Default [DF__dt_channe__sort___4A18FC72]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__sort___4A18FC72]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_channe__click__4B0D20AB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__click__4B0D20AB]  DEFAULT ((0)) FOR [click]
GO
/****** Object:  Default [DF__dt_channe__statu__4C0144E4]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__statu__4C0144E4]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_channe__is_ms__4CF5691D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__is_ms__4CF5691D]  DEFAULT ((0)) FOR [is_msg]
GO
/****** Object:  Default [DF__dt_channe__is_to__4DE98D56]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__is_to__4DE98D56]  DEFAULT ((0)) FOR [is_top]
GO
/****** Object:  Default [DF__dt_channe__is_re__4EDDB18F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__is_re__4EDDB18F]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_channe__is_ho__4FD1D5C8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__is_ho__4FD1D5C8]  DEFAULT ((0)) FOR [is_hot]
GO
/****** Object:  Default [DF__dt_channe__is_sl__50C5FA01]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__is_sl__50C5FA01]  DEFAULT ((0)) FOR [is_slide]
GO
/****** Object:  Default [DF__dt_channe__is_sy__51BA1E3A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__is_sy__51BA1E3A]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_channe__like___52AE4273]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__like___52AE4273]  DEFAULT ((0)) FOR [like_count]
GO
/****** Object:  Default [DF__dt_channe__add_t__53A266AC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_channel_article_video] ADD  CONSTRAINT [DF__dt_channe__add_t__53A266AC]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_expres__expre__6EF57B66]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__expre__6EF57B66]  DEFAULT ('') FOR [express_code]
GO
/****** Object:  Default [DF__dt_expres__expre__6FE99F9F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__expre__6FE99F9F]  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_expres__websi__70DDC3D8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__websi__70DDC3D8]  DEFAULT ('') FOR [website]
GO
/****** Object:  Default [DF__dt_expres__remar__71D1E811]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__remar__71D1E811]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_expres__sort___72C60C4A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__sort___72C60C4A]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_expres__is_lo__73BA3083]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_express] ADD  CONSTRAINT [DF__dt_expres__is_lo__73BA3083]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_feedba__site___10AB74EC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__site___10AB74EC]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_feedba__add_t__119F9925]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__add_t__119F9925]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_feedba__reply__1293BD5E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__reply__1293BD5E]  DEFAULT ('') FOR [reply_content]
GO
/****** Object:  Default [DF__dt_feedba__is_lo__1387E197]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_feedback] ADD  CONSTRAINT [DF__dt_feedba__is_lo__1387E197]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_link__site_id__1758727B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__site_id__1758727B]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_link__is_imag__184C96B4]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__is_imag__184C96B4]  DEFAULT ((0)) FOR [is_image]
GO
/****** Object:  Default [DF__dt_link__sort_id__1940BAED]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__sort_id__1940BAED]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_link__is_red__1A34DF26]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__is_red__1A34DF26]  DEFAULT ((0)) FOR [is_red]
GO
/****** Object:  Default [DF__dt_link__add_tim__1B29035F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_link] ADD  CONSTRAINT [DF__dt_link__add_tim__1B29035F]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_mail_t__is_sy__76969D2E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_mail_template] ADD  CONSTRAINT [DF__dt_mail_t__is_sy__76969D2E]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_manage__role___797309D9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__role___797309D9]  DEFAULT ((2)) FOR [role_type]
GO
/****** Object:  Default [DF__dt_manage__real___7A672E12]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__real___7A672E12]  DEFAULT ('') FOR [real_name]
GO
/****** Object:  Default [DF__dt_manage__telep__7B5B524B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__telep__7B5B524B]  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__dt_manage__email__7C4F7684]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__email__7C4F7684]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF_dt_manager_is_audit]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF_dt_manager_is_audit]  DEFAULT ((0)) FOR [is_audit]
GO
/****** Object:  Default [DF__dt_manage__is_lo__7D439ABD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__is_lo__7D439ABD]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_manage__add_t__7E37BEF6]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager] ADD  CONSTRAINT [DF__dt_manage__add_t__7E37BEF6]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__add_t__01142BA1]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager_log] ADD  CONSTRAINT [DF__dt_manage__add_t__01142BA1]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_manage__is_sy__03F0984C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager_role] ADD  CONSTRAINT [DF__dt_manage__is_sy__03F0984C]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_naviga__paren__08B54D69]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__paren__08B54D69]  DEFAULT ((0)) FOR [parent_id]
GO
/****** Object:  Default [DF__dt_naviga__chann__09A971A2]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__chann__09A971A2]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_naviga__nav_t__0A9D95DB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__nav_t__0A9D95DB]  DEFAULT ('') FOR [nav_type]
GO
/****** Object:  Default [DF__dt_navigat__name__0B91BA14]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_navigat__name__0B91BA14]  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_naviga__title__0C85DE4D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__title__0C85DE4D]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_naviga__sub_t__0D7A0286]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sub_t__0D7A0286]  DEFAULT ('') FOR [sub_title]
GO
/****** Object:  Default [DF__dt_naviga__icon___0E6E26BF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__icon___0E6E26BF]  DEFAULT ('') FOR [icon_url]
GO
/****** Object:  Default [DF__dt_naviga__link___0F624AF8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__link___0F624AF8]  DEFAULT ('') FOR [link_url]
GO
/****** Object:  Default [DF__dt_naviga__sort___10566F31]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__sort___10566F31]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_naviga__is_lo__114A936A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_lo__114A936A]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_naviga__remar__123EB7A3]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__remar__123EB7A3]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_naviga__actio__1332DBDC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__actio__1332DBDC]  DEFAULT ('') FOR [action_type]
GO
/****** Object:  Default [DF__dt_naviga__is_sy__14270015]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_navigation] ADD  CONSTRAINT [DF__dt_naviga__is_sy__14270015]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_oauth___title__17036CC0]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_oauth_app] ADD  CONSTRAINT [DF__dt_oauth___title__17036CC0]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_oauth___img_u__17F790F9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_oauth_app] ADD  CONSTRAINT [DF__dt_oauth___img_u__17F790F9]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_oauth___remar__18EBB532]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_oauth_app] ADD  CONSTRAINT [DF__dt_oauth___remar__18EBB532]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_oauth___sort___19DFD96B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_oauth_app] ADD  CONSTRAINT [DF__dt_oauth___sort___19DFD96B]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_oauth___is_lo__1AD3FDA4]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_oauth_app] ADD  CONSTRAINT [DF__dt_oauth___is_lo__1AD3FDA4]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_oauth___api_p__1BC821DD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_oauth_app] ADD  CONSTRAINT [DF__dt_oauth___api_p__1BC821DD]  DEFAULT ('') FOR [api_path]
GO
/****** Object:  Default [DF__dt_order___chann__08162EEB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___chann__08162EEB]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_order___goods__090A5324]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___goods__090A5324]  DEFAULT ((0)) FOR [goods_price]
GO
/****** Object:  Default [DF__dt_order___real___09FE775D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___real___09FE775D]  DEFAULT ((0)) FOR [real_price]
GO
/****** Object:  Default [DF__dt_order___quant__0AF29B96]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___quant__0AF29B96]  DEFAULT ((0)) FOR [quantity]
GO
/****** Object:  Default [DF__dt_order___point__0BE6BFCF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_order_goods] ADD  CONSTRAINT [DF__dt_order___point__0BE6BFCF]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__site___25518C17]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__site___25518C17]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_orders__order__2645B050]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__2645B050]  DEFAULT ('') FOR [order_no]
GO
/****** Object:  Default [DF__dt_orders__trade__2739D489]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__trade__2739D489]  DEFAULT ('') FOR [trade_no]
GO
/****** Object:  Default [DF__dt_orders__user___282DF8C2]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___282DF8C2]  DEFAULT ((0)) FOR [user_id]
GO
/****** Object:  Default [DF__dt_orders__user___29221CFB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__user___29221CFB]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_orders__payme__2A164134]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2A164134]  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_orders__payme__2B0A656D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2B0A656D]  DEFAULT ((0)) FOR [payment_fee]
GO
/****** Object:  Default [DF__dt_orders__payme__2BFE89A6]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payme__2BFE89A6]  DEFAULT ((0)) FOR [payment_status]
GO
/****** Object:  Default [DF__dt_orders__expre__2CF2ADDF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__2CF2ADDF]  DEFAULT ((0)) FOR [express_id]
GO
/****** Object:  Default [DF__dt_orders__expre__2DE6D218]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__2DE6D218]  DEFAULT ('') FOR [express_no]
GO
/****** Object:  Default [DF__dt_orders__expre__2EDAF651]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__2EDAF651]  DEFAULT ((0)) FOR [express_fee]
GO
/****** Object:  Default [DF__dt_orders__expre__2FCF1A8A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__expre__2FCF1A8A]  DEFAULT ((0)) FOR [express_status]
GO
/****** Object:  Default [DF__dt_orders__accep__30C33EC3]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__accep__30C33EC3]  DEFAULT ('') FOR [accept_name]
GO
/****** Object:  Default [DF__dt_orders__post___31B762FC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__post___31B762FC]  DEFAULT ('') FOR [post_code]
GO
/****** Object:  Default [DF__dt_orders__telph__32AB8735]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__telph__32AB8735]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_orders__mobil__339FAB6E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__mobil__339FAB6E]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_orders__area__3493CFA7]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__area__3493CFA7]  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__dt_orders__addre__3587F3E0]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__addre__3587F3E0]  DEFAULT ('') FOR [address]
GO
/****** Object:  Default [DF__dt_orders__messa__367C1819]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__messa__367C1819]  DEFAULT ('') FOR [message]
GO
/****** Object:  Default [DF__dt_orders__remar__37703C52]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__remar__37703C52]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_orders__is_in__3864608B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__is_in__3864608B]  DEFAULT ((0)) FOR [is_invoice]
GO
/****** Object:  Default [DF__dt_orders__invoi__395884C4]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__invoi__395884C4]  DEFAULT ((0)) FOR [invoice_taxes]
GO
/****** Object:  Default [DF__dt_orders__payab__3A4CA8FD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__payab__3A4CA8FD]  DEFAULT ((0)) FOR [payable_amount]
GO
/****** Object:  Default [DF__dt_orders__real___3B40CD36]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__real___3B40CD36]  DEFAULT ((0)) FOR [real_amount]
GO
/****** Object:  Default [DF__dt_orders__order__3C34F16F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__order__3C34F16F]  DEFAULT ((0)) FOR [order_amount]
GO
/****** Object:  Default [DF__dt_orders__point__3D2915A8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__point__3D2915A8]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_orders__statu__3E1D39E1]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__statu__3E1D39E1]  DEFAULT ((1)) FOR [status]
GO
/****** Object:  Default [DF__dt_orders__add_t__3F115E1A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_orders] ADD  CONSTRAINT [DF__dt_orders__add_t__3F115E1A]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_paymen__img_u__41EDCAC5]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__img_u__41EDCAC5]  DEFAULT ('') FOR [img_url]
GO
/****** Object:  Default [DF__dt_payment__type__42E1EEFE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_payment__type__42E1EEFE]  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_paymen__pound__43D61337]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__43D61337]  DEFAULT ((1)) FOR [poundage_type]
GO
/****** Object:  Default [DF__dt_paymen__pound__44CA3770]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__pound__44CA3770]  DEFAULT ((0)) FOR [poundage_amount]
GO
/****** Object:  Default [DF__dt_paymen__sort___45BE5BA9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__sort___45BE5BA9]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_paymen__is_lo__46B27FE2]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_payment] ADD  CONSTRAINT [DF__dt_paymen__is_lo__46B27FE2]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_site_ch__name__498EEC8D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF__dt_site_ch__name__498EEC8D]  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__dt_site_c__title__4A8310C6]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF__dt_site_c__title__4A8310C6]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF_dt_site_channel_is_comment]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF_dt_site_channel_is_comment]  DEFAULT ((0)) FOR [is_comment]
GO
/****** Object:  Default [DF__dt_site_c__is_al__4B7734FF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF__dt_site_c__is_al__4B7734FF]  DEFAULT ((0)) FOR [is_albums]
GO
/****** Object:  Default [DF__dt_site_c__is_at__4C6B5938]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF__dt_site_c__is_at__4C6B5938]  DEFAULT ((0)) FOR [is_attach]
GO
/****** Object:  Default [DF_dt_site_channel_is_spec]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF_dt_site_channel_is_spec]  DEFAULT ((0)) FOR [is_spec]
GO
/****** Object:  Default [DF__dt_site_c__is_co__4F47C5E3]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF__dt_site_c__is_co__4F47C5E3]  DEFAULT ((0)) FOR [is_contribute]
GO
/****** Object:  Default [DF__dt_site_c__sort___503BEA1C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF__dt_site_c__sort___503BEA1C]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_site_c__is_lo__51300E55]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel] ADD  CONSTRAINT [DF__dt_site_c__is_lo__51300E55]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_site_o__site___55F4C372]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_oauth] ADD  CONSTRAINT [DF__dt_site_o__site___55F4C372]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_site_o__oauth__56E8E7AB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_oauth] ADD  CONSTRAINT [DF__dt_site_o__oauth__56E8E7AB]  DEFAULT ((0)) FOR [oauth_id]
GO
/****** Object:  Default [DF__dt_site_o__sort___57DD0BE4]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_oauth] ADD  CONSTRAINT [DF__dt_site_o__sort___57DD0BE4]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_site_o__add_t__58D1301D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_oauth] ADD  CONSTRAINT [DF__dt_site_o__add_t__58D1301D]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_site_p__site___5BAD9CC8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_payment] ADD  CONSTRAINT [DF__dt_site_p__site___5BAD9CC8]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_site_p__payme__5CA1C101]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_payment] ADD  CONSTRAINT [DF__dt_site_p__payme__5CA1C101]  DEFAULT ((0)) FOR [payment_id]
GO
/****** Object:  Default [DF__dt_site_p__sort___5D95E53A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_payment] ADD  CONSTRAINT [DF__dt_site_p__sort___5D95E53A]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_site_p__add_t__5E8A0973]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_payment] ADD  CONSTRAINT [DF__dt_site_p__add_t__5E8A0973]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_sites__build___625A9A57]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sites] ADD  CONSTRAINT [DF__dt_sites__build___625A9A57]  DEFAULT ('') FOR [build_path]
GO
/****** Object:  Default [DF__dt_sites__temple__634EBE90]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sites] ADD  CONSTRAINT [DF__dt_sites__temple__634EBE90]  DEFAULT ('') FOR [templet_path]
GO
/****** Object:  Default [DF__dt_sites__domain__6442E2C9]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sites] ADD  CONSTRAINT [DF__dt_sites__domain__6442E2C9]  DEFAULT ('') FOR [domain]
GO
/****** Object:  Default [DF__dt_sites__is_def__662B2B3B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sites] ADD  CONSTRAINT [DF__dt_sites__is_def__662B2B3B]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_sites__sort_i__671F4F74]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sites] ADD  CONSTRAINT [DF__dt_sites__sort_i__671F4F74]  DEFAULT ((99)) FOR [sort_id]
GO
/****** Object:  Default [DF__dt_sites__is_loc__681373AD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sites] ADD  CONSTRAINT [DF__dt_sites__is_loc__681373AD]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_sms_te__title__6AEFE058]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__title__6AEFE058]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_sms_te__call___6BE40491]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__call___6BE40491]  DEFAULT ('') FOR [call_index]
GO
/****** Object:  Default [DF__dt_sms_te__conte__6CD828CA]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__conte__6CD828CA]  DEFAULT ('') FOR [content]
GO
/****** Object:  Default [DF__dt_sms_te__is_sy__6DCC4D03]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_sms_template] ADD  CONSTRAINT [DF__dt_sms_te__is_sy__6DCC4D03]  DEFAULT ((0)) FOR [is_sys]
GO
/****** Object:  Default [DF__dt_user_a__mobil__70A8B9AE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__mobil__70A8B9AE]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_user_a__telph__719CDDE7]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__telph__719CDDE7]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_user_a__email__72910220]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__email__72910220]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_user_a__post___73852659]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__post___73852659]  DEFAULT ('') FOR [post_code]
GO
/****** Object:  Default [DF__dt_user_a__is_de__74794A92]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__is_de__74794A92]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_user_a__add_t__756D6ECB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_addr_book] ADD  CONSTRAINT [DF__dt_user_a__add_t__756D6ECB]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_a__value__7849DB76]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__value__7849DB76]  DEFAULT ((0)) FOR [value]
GO
/****** Object:  Default [DF__dt_user_a__remar__793DFFAF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__remar__793DFFAF]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_a__add_t__7A3223E8]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_amount_log] ADD  CONSTRAINT [DF__dt_user_a__add_t__7A3223E8]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_a__add_t__7C1A6C5A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_attach_log] ADD  CONSTRAINT [DF__dt_user_a__add_t__7C1A6C5A]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_c__count__7EF6D905]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__count__7EF6D905]  DEFAULT ((0)) FOR [count]
GO
/****** Object:  Default [DF__dt_user_c__statu__7FEAFD3E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__statu__7FEAFD3E]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_c__add_t__00DF2177]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_code] ADD  CONSTRAINT [DF__dt_user_c__add_t__00DF2177]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_g__chann__03BB8E22]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__chann__03BB8E22]  DEFAULT ((0)) FOR [channel_id]
GO
/****** Object:  Default [DF__dt_user_g__artic__04AFB25B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__artic__04AFB25B]  DEFAULT ((0)) FOR [article_id]
GO
/****** Object:  Default [DF__dt_user_g__group__0697FACD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__group__0697FACD]  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF__dt_user_g__price__078C1F06]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_group_price] ADD  CONSTRAINT [DF__dt_user_g__price__078C1F06]  DEFAULT ((0)) FOR [price]
GO
/****** Object:  Default [DF__dt_user_g__title__0A688BB1]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__title__0A688BB1]  DEFAULT ('') FOR [title]
GO
/****** Object:  Default [DF__dt_user_g__grade__0B5CAFEA]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__grade__0B5CAFEA]  DEFAULT ((0)) FOR [grade]
GO
/****** Object:  Default [DF__dt_user_g__upgra__0C50D423]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__upgra__0C50D423]  DEFAULT ((0)) FOR [upgrade_exp]
GO
/****** Object:  Default [DF__dt_user_g__amoun__0D44F85C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__amoun__0D44F85C]  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_user_g__point__0E391C95]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__point__0E391C95]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_user_g__is_de__0F2D40CE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_de__0F2D40CE]  DEFAULT ((0)) FOR [is_default]
GO
/****** Object:  Default [DF__dt_user_g__is_up__10216507]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_up__10216507]  DEFAULT ((1)) FOR [is_upgrade]
GO
/****** Object:  Default [DF__dt_user_g__is_lo__11158940]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_groups] ADD  CONSTRAINT [DF__dt_user_g__is_lo__11158940]  DEFAULT ((0)) FOR [is_lock]
GO
/****** Object:  Default [DF__dt_user_l__user___13F1F5EB]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__user___13F1F5EB]  DEFAULT ('') FOR [user_name]
GO
/****** Object:  Default [DF__dt_user_l__remar__14E61A24]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__remar__14E61A24]  DEFAULT ('') FOR [remark]
GO
/****** Object:  Default [DF__dt_user_l__login__15DA3E5D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__15DA3E5D]  DEFAULT (getdate()) FOR [login_time]
GO
/****** Object:  Default [DF__dt_user_l__login__16CE6296]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_login_log] ADD  CONSTRAINT [DF__dt_user_l__login__16CE6296]  DEFAULT ('') FOR [login_ip]
GO
/****** Object:  Default [DF__dt_user_me__type__19AACF41]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_me__type__19AACF41]  DEFAULT ((1)) FOR [type]
GO
/****** Object:  Default [DF__dt_user_m__is_re__1A9EF37A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_m__is_re__1A9EF37A]  DEFAULT ((0)) FOR [is_read]
GO
/****** Object:  Default [DF__dt_user_m__post___1B9317B3]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_message] ADD  CONSTRAINT [DF__dt_user_m__post___1B9317B3]  DEFAULT (getdate()) FOR [post_time]
GO
/****** Object:  Default [DF__dt_user_o__oauth__1E6F845E]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__oauth__1E6F845E]  DEFAULT ('0') FOR [oauth_name]
GO
/****** Object:  Default [DF__dt_user_o__add_t__1F63A897]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_oauth] ADD  CONSTRAINT [DF__dt_user_o__add_t__1F63A897]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_p__add_t__22401542]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_point_log] ADD  CONSTRAINT [DF__dt_user_p__add_t__22401542]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_user_r__amoun__251C81ED]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__amoun__251C81ED]  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_user_r__statu__2610A626]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__statu__2610A626]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_user_r__add_t__2704CA5F]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_user_recharge] ADD  CONSTRAINT [DF__dt_user_r__add_t__2704CA5F]  DEFAULT (getdate()) FOR [add_time]
GO
/****** Object:  Default [DF__dt_users__site_i__29E1370A]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__site_i__29E1370A]  DEFAULT ((0)) FOR [site_id]
GO
/****** Object:  Default [DF__dt_users__mobile__2AD55B43]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__mobile__2AD55B43]  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__dt_users__email__2BC97F7C]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__email__2BC97F7C]  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__dt_users__avatar__2CBDA3B5]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__avatar__2CBDA3B5]  DEFAULT ('') FOR [avatar]
GO
/****** Object:  Default [DF__dt_users__nick_n__2DB1C7EE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__nick_n__2DB1C7EE]  DEFAULT ('') FOR [nick_name]
GO
/****** Object:  Default [DF__dt_users__sex__2EA5EC27]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__sex__2EA5EC27]  DEFAULT ('') FOR [sex]
GO
/****** Object:  Default [DF__dt_users__telpho__2F9A1060]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__telpho__2F9A1060]  DEFAULT ('') FOR [telphone]
GO
/****** Object:  Default [DF__dt_users__area__308E3499]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__area__308E3499]  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__dt_users__addres__318258D2]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__addres__318258D2]  DEFAULT ('') FOR [address]
GO
/****** Object:  Default [DF__dt_users__qq__32767D0B]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__qq__32767D0B]  DEFAULT ('') FOR [qq]
GO
/****** Object:  Default [DF__dt_users__msn__336AA144]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__msn__336AA144]  DEFAULT ('') FOR [msn]
GO
/****** Object:  Default [DF__dt_users__amount__345EC57D]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__amount__345EC57D]  DEFAULT ((0)) FOR [amount]
GO
/****** Object:  Default [DF__dt_users__point__3552E9B6]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__point__3552E9B6]  DEFAULT ((0)) FOR [point]
GO
/****** Object:  Default [DF__dt_users__exp__36470DEF]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__exp__36470DEF]  DEFAULT ((0)) FOR [exp]
GO
/****** Object:  Default [DF__dt_users__status__373B3228]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__status__373B3228]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__dt_users__reg_ti__382F5661]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_users] ADD  CONSTRAINT [DF__dt_users__reg_ti__382F5661]  DEFAULT (getdate()) FOR [reg_time]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG]
GO
/****** Object:  ForeignKey [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE_VALUE]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_manager_role_value]  WITH CHECK ADD  CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE_VALUE] FOREIGN KEY([role_id])
REFERENCES [dbo].[dt_manager_role] ([id])
GO
ALTER TABLE [dbo].[dt_manager_role_value] CHECK CONSTRAINT [FK_DT_MANAG_REFERENCE_DT_MANAG_ROLE_VALUE]
GO
/****** Object:  ForeignKey [FK_DT_ORDER_REFERENCE_DT_ORDER]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_order_goods]  WITH CHECK ADD  CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER] FOREIGN KEY([order_id])
REFERENCES [dbo].[dt_orders] ([id])
GO
ALTER TABLE [dbo].[dt_order_goods] CHECK CONSTRAINT [FK_DT_ORDER_REFERENCE_DT_ORDER]
GO
/****** Object:  ForeignKey [FK_DT_SITE__REFERENCE_DT_SITES]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel]  WITH CHECK ADD  CONSTRAINT [FK_DT_SITE__REFERENCE_DT_SITES] FOREIGN KEY([site_id])
REFERENCES [dbo].[dt_sites] ([id])
GO
ALTER TABLE [dbo].[dt_site_channel] CHECK CONSTRAINT [FK_DT_SITE__REFERENCE_DT_SITES]
GO
/****** Object:  ForeignKey [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD] FOREIGN KEY([channel_id])
REFERENCES [dbo].[dt_site_channel] ([id])
GO
ALTER TABLE [dbo].[dt_site_channel_field] CHECK CONSTRAINT [FK_DT_CHANN_REFERENCE_DT_CHANN_FIELD]
GO
/****** Object:  ForeignKey [FK_DT_SITE__REFERENCE_DT_ARTIC]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_channel_field]  WITH CHECK ADD  CONSTRAINT [FK_DT_SITE__REFERENCE_DT_ARTIC] FOREIGN KEY([field_id])
REFERENCES [dbo].[dt_article_attribute_field] ([id])
GO
ALTER TABLE [dbo].[dt_site_channel_field] CHECK CONSTRAINT [FK_DT_SITE__REFERENCE_DT_ARTIC]
GO
/****** Object:  ForeignKey [FK_DT_SITE__REFERENCE_DT_OAUTH]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_oauth]  WITH CHECK ADD  CONSTRAINT [FK_DT_SITE__REFERENCE_DT_OAUTH] FOREIGN KEY([oauth_id])
REFERENCES [dbo].[dt_oauth_app] ([id])
GO
ALTER TABLE [dbo].[dt_site_oauth] CHECK CONSTRAINT [FK_DT_SITE__REFERENCE_DT_OAUTH]
GO
/****** Object:  ForeignKey [FK_DT_SITE__REFERENCE_DT_PAYME]    Script Date: 07/23/2019 11:18:17 ******/
ALTER TABLE [dbo].[dt_site_payment]  WITH CHECK ADD  CONSTRAINT [FK_DT_SITE__REFERENCE_DT_PAYME] FOREIGN KEY([payment_id])
REFERENCES [dbo].[dt_payment] ([id])
GO
ALTER TABLE [dbo].[dt_site_payment] CHECK CONSTRAINT [FK_DT_SITE__REFERENCE_DT_PAYME]
GO
