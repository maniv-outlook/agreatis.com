<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    void Page_Init(object sender, EventArgs e)
    {
        if (IsPostBack || string.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            return;
        }
        int _id;
        Int32.TryParse(Request.QueryString["id"], out _id);
        using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
        {
            using (SqlCommand _command = new SqlCommand("GetJob", _con)
            {
                CommandType = CommandType.StoredProcedure
            })
            {
                _command.Parameters.AddWithValue("@Id", _id);
                _con.Open();
                using (SqlDataReader _read = _command.ExecuteReader())
                {
                    while (_read.Read())
                    {
                        hTitle.InnerHtml = string.Concat("[", _read.GetString(0), "] - ", _read.GetString(1));
                        divPosted.InnerHtml = _read.GetDateTime(8).ToString("dddd, MMMM dd, yyyy");
                        divLocation.InnerHtml = "<span>Location: </span>" + _read.GetString(3);
                        divDesc.InnerHtml = _read.GetString(2);
                        buttonRegister.Attributes["onclick"] = string.Concat("javascript:document.location.href='job_apply.aspx?id=", _id, "'");
                        switch (_read.GetString(12))
                        {
                            case "F":
                                divType.InnerHtml = "<span>Job Type: </span>Full-Time";
                                break;
                            case "C":
                                divType.InnerHtml = "<span>Job Type: </span>Contract";
                                break;
                            default:
                                divType.InnerHtml = "<span>Job Type: </span>Contract to Hire";
                                break;
                        }
                        string _url = Request.Url.ToString();
                        if (!_read.IsDBNull(11) && _read.GetString(11).Trim() != "")
                        {
                            _url = _read.GetString(11);
                        }
                        RadSocialShare1.UrlToShare = _url + "||" + _read.GetString(18);
                        RadSocialShare1.TitleToShare = _read.GetString(1);
			/*					if (_read.IsDBNull(4) && _read.IsDBNull(5) && _read.IsDBNull(6))
								{
									divContact.Visible = false;
								}
								else
								{
									if (_read.IsDBNull(4) || _read.GetString(4).Trim() == "")
									{
										divPerson.Visible = false;
									}
									else
									{
										divPerson.InnerHtml = "<span>Name: </span>" + _read.GetString(4);
									}
									if (_read.GetBoolean(19))
									{
										if (_read.IsDBNull(5) || _read.GetString(5).Trim() == "")
										{
											divPhone.Visible = false;
										}
										else
										{
											divPhone.InnerHtml = "<span>Phone: </span>" + _read.GetString(5);
										}
									}
									else
									{
										divPhone.Visible = false;
									}
									if (_read.GetBoolean(20))
									{
										if (_read.IsDBNull(6) || _read.GetString(6).Trim() == "")
										{
											divEmail.Visible = false;
										}
										else
										{
											divEmail.InnerHtml = "<span>Email: </span>" + _read.GetString(6);
										}
									}
									else
									{
										divEmail.Visible = false;
									}
								}*/
                        //using (HyperLink _link = new HyperLink())
                        //{
                        //    string _linkText = string.Concat("http://www.facebook.com/sharer.php?u=", HttpUtility.UrlEncode(_url), "&t=", HttpUtility.UrlEncode(_read.GetString(1)), HttpUtility.UrlEncode(" on Pivotal Partners"));
                        //    _link.NavigateUrl = "javascript:ShowWin('" + _linkText + "');";
                        //    //_link.Target = "_blank";
                        //    using (Image _img = new Image())
                        //    {
                        //        _img.AlternateText = "Facebook";
                        //        _img.ImageUrl = "~/images/facebook.gif";
                        //        _img.ImageAlign = ImageAlign.AbsMiddle;
                        //        _link.Controls.Add(_img);
                        //    }
                        //    using (HtmlGenericControl _text = new HtmlGenericControl())
                        //    {
                        //        _text.InnerHtml = "Share";
                        //        _text.Style["font-weight"] = "normal";
                        //        _text.Style["font-size"] = "9pt";
                        //        _text.Style["margin-left"] = "4px";
                        //        _link.Controls.Add(_text);
                        //    }
                        //    spanIcons.Controls.Add(_link);
                        //}
                        //using (HyperLink _link = new HyperLink())
                        //{
                        //    string _linkText = string.Concat("http://www.linkedin.com/shareArticle?mini=true&url=", HttpUtility.UrlEncode(_url), "&title=", HttpUtility.UrlEncode(_read.GetString(1)), "&source=Pivotal+Partners&summary=", HttpUtility.UrlEncode(_read.GetString(1)));
                        //    _link.NavigateUrl = "javascript:ShowWin('" + _linkText + "');";
                        //    //_link.Target = "_new";
                        //    _link.Style["margin-left"] = "15px";
                        //    using (Image _img = new Image())
                        //    {
                        //        _img.AlternateText = "LinkedIn";
                        //        _img.ImageUrl = "~/images/linkedin.gif";
                        //        _img.ImageAlign = ImageAlign.AbsMiddle;
                        //        _link.Controls.Add(_img);
                        //    }
                        //    using (HtmlGenericControl _text = new HtmlGenericControl())
                        //    {
                        //        _text.InnerHtml = "Share";
                        //        _text.Style["font-weight"] = "normal";
                        //        _text.Style["font-size"] = "9pt";
                        //        _text.Style["margin-left"] = "4px";
                        //        _link.Controls.Add(_text);
                        //    }
                        //    spanIcons.Controls.Add(_link);
                        //}
                        //using (HyperLink _link = new HyperLink())
                        //{
                        //    string _linkText = string.Concat("http://twitter.com/intent/tweet?text=", HttpUtility.UrlEncode(_read.GetString(1)), "+on+Pivotal Partners++Please+visit++", HttpUtility.UrlEncode(_url));
                        //    _link.NavigateUrl = "javascript:ShowWin('" + _linkText + "');";
                        //    //_link.Target = "_new";
                        //    _link.Style["margin-left"] = "15px";
                        //    using (Image _img = new Image())
                        //    {
                        //        _img.AlternateText = "Twitter";
                        //        _img.ImageUrl = "~/images/twitter.png";
                        //        _img.ImageAlign = ImageAlign.AbsMiddle;
                        //        _link.Controls.Add(_img);
                        //    }
                        //    using (HtmlGenericControl _text = new HtmlGenericControl())
                        //    {
                        //        _text.InnerHtml = "Tweet";
                        //        _text.Style["font-weight"] = "normal";
                        //        _text.Style["font-size"] = "9pt";
                        //        _text.Style["margin-left"] = "4px";
                        //        _link.Controls.Add(_text);
                        //    }
                        //    spanIcons.Controls.Add(_link);
                        //}
                    }
                }
            }
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- #BeginTemplate "templates/agreatis.dwt" -->

<head runat="server" prefix="og: http://ogp.me/ns#">
	<!-- 
	****************
	Description: AGREATIS, Inc.
	Called By : http://www.agreatis.com
	Created: DonBosco Paily 07/30/2013
	Last Modified: DonBosco Paily 07/30/2013
	****************
	-->
	<meta content="text/html; charset=iso-8859-1" http-equiv="Content-Type" />
	<meta content="http://www.agreatis.com/images/logo_og.jpg" property="og:image" />
	<meta content="image/png" property="og:image:type" />
	<meta content="720" property="og:image:width" />
	<meta content="440" property="og:image:height" />
	<!-- #BeginEditable "doctitle" -->
    <title>AGREATIS&trade;, Inc.</title>
	<!-- #EndEditable -->
	<link href="agreatis.css" rel="stylesheet" type="text/css" />
	<script src="scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
	<script src="scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var img = new Image();
		img.src = "images/left_pnl_img_2.jpg";
	</script>
	<script src="scripts/kendo/2012.3.1114/kendo.web.min.js" type="text/javascript"> </script>
	<script src="scripts/modernizr.js" type="text/javascript"> </script>
	<link href="Content/kendo/2012.3.1114/kendo.metro.min.css" rel="stylesheet" type="text/css" />
	<link href="Content/kendo/2012.3.1114/kendo.common.min.css" rel="stylesheet" type="text/css" />
	<!-- #BeginEditable "head" -->
    <style type="text/css">











        .tdContent div span
        {
            font-weight: normal;
        }

        li.sshListItem
        {
            margin-right: 15px;
        }
    </style>
	<!-- #EndEditable -->
	<script type="text/javascript">
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-45286528-1', 'agreatis.com');
		ga('send', 'pageview');
	</script>
</head>
<body>
	<table cellpadding="0" cellspacing="0" class="maintbl">
		<tr>
			<td class="td1">
				<img alt="Transparent" src="images/transpy.gif" id="imgTranspy1" usemap="#Map" />
				<map id="Map" name="Map">
					<area alt="Why AGREATIS?" coords="578,75,704,113" href="why_agreatis.aspx" shape="rect" />
					<area alt="Staffing Redefined" coords="379,75,552,113" href="stf_redfnd.aspx" shape="rect" />
					<area alt="Home" coords="296,75,357,113" href="index.aspx" shape="rect" />
					<area alt="Home" coords="1,25,285,116" href="index.aspx" shape="rect" />
				</map>
			</td>
		</tr>
		<tr>
			<td>
				<!-- #BeginEditable "jqueryImg" -->
                <table cellpadding="0" cellspacing="0" class="maintbl1">
                    <tr>
                        <td class="tdleft">
                            <uc1:leftpanel ID="lpanel" runat="server" />
                        </td>
                        <td>
                            <uc1:rightpanel ID="rpanel" runat="server" />
                        </td>
                    </tr>
                </table>
				<!-- #EndEditable -->
			</td>
		</tr>
		<tr>
			<td class="td2">
				<img alt="Transparent" src="images/transpy.gif" id="imgTranspy2" usemap="#Map2" />
				<map id="Map2" name="Map2">
					<area alt="AGREATIS Services" coords="32,2,188,46" href="services.aspx" shape="rect" />
					<area alt="AGREATIS Solutions" coords="225,4,392,47" href="solutions.aspx" shape="rect" />
					<area alt="Career Connections" coords="416,4,595,47" href="career_conn.aspx" shape="rect" />
					<area alt="Work@AGREATIS" coords="629,4,750,47" href="workat.aspx" shape="rect" />
					<area alt="Contact Us" coords="782,4,890,47" href="contactus.aspx" shape="rect" />
				</map>
			</td>
		</tr>
		<tr>
			<td class="tdContent">
				<form id="form1" runat="server">
					<!-- #BeginEditable "Content" -->
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
                    <table cellpadding="0" cellspacing="0" style="border: none; width: 100%">
                        <tr>
                            <td class="dTit" style="width: 55%; text-align: left; vertical-align: top; padding-top: 18px">Job Details
                            </td>
                            <td style="width: 43%; text-align: right; vertical-align: top; padding-right: 50px;">
                                <telerik:RadSocialShare ID="RadSocialShare1" runat="server" BorderStyle="None">
                                    <MainButtons>
                                        <telerik:RadSocialButton SocialNetType="LinkedIn" LabelText="Share" />
                                        <telerik:RadSocialButton SocialNetType="ShareOnFacebook" LabelText="Share" />
                                        <telerik:RadSocialButton SocialNetType="ShareOnTwitter" LabelText="Tweet" />
                                        <telerik:RadSocialButton SocialNetType="ShareOnPinterest" LabelText="Pin It" />
                                        <telerik:RadGoogleButton AnnotationType="None" ButtonSize="Medium" />
                                    </MainButtons>
                                </telerik:RadSocialShare>
                            </td>
                        </tr>
                    </table>
                    <div style="height: auto;">
                        <h3 id="hTitle" runat="server" class="hTit"></h3>
                        <div id="divPosted" runat="server" class="dDat">
                        </div>
                        <div id="divLocation" runat="server" class="dLoc">
                        </div>
                        <div id="divType" runat="server" class="dLoc">
                        </div>
                        <div id="divDesc" runat="server" class="dDesc" style="margin-bottom: 10px;">
                        </div>
                        <%--<div id="divContact" runat="server">
						<h4 style="width: 90%; border-bottom: 1px solid #bbb;">
							Contact Details</h4>
					</div>
					<div id="divPerson" runat="server" class="dContact">
					</div>
					<div id="divPhone" runat="server" class="dContact">
					</div>
					<div id="divEmail" runat="server" class="dContact">
					</div>--%>
                        <input id="buttonRegister" runat="server" style="margin-top: 35px;" type="button"
                            value="Apply for this Job" />
                    </div>
					<!-- #EndEditable -->
				</form>
			</td>
		</tr>
		<tr>
			<td class="td3">
				<uc1:copy ID="copy" runat="server" />
			</td>
		</tr>
	</table>
	<script type="text/javascript">
		$(window).load(function () {
			$('#test').hide('fast');
			//$('#slider').hide('fast');
			setTimeout(function () {
				$('#imgLeft2').attr('src', img.src);
				$('#test').fadeIn(5000);
			}, 1000);
			$('#leftpanel').cycle({
				fx: 'fade',
				autostop: 1,
				delay: 500,
				timeout: 5000
			});
			setTimeout(function () {
				//$('#slider').fadeIn('slow');
				$('#slider').cycle({
					fx: 'fade',
					timeout: 8000,
					continuous: 0,
					speed: 6000,
					sync: 1,
					delay: 3000
				});
			}, 2000);
		})
	</script>
	<!-- #BeginEditable "Script" -->
    <script type="text/javascript">
        function ShowWin(t) {
            window.open(t, 'blank', 'width=500,height=315');
        }
    </script>
    <script type="text/javascript">
        Telerik.Web.UI.RadSocialShare.SocialNetUrls = {
            "ShareOnTwitter": "http://twitter.com/intent/tweet?url=[u]&text=[t]",
            "GoogleBookmarks": "https://www.google.com/bookmarks/mark?op=add&bkmk=[u]&title=[t]&summary=[t]&source=[t]",
            //"LinkedIn": "http://www.linkedin.com/shareArticle?mini=true&url=[u]&title=[t]",
            "LinkedIn": "http://www.linkedin.com/shareArticle?mini=true&url=[u]&title=[t]&summary=[s]",
            "Delicious": "http://delicious.com/save?url=[u]&title=[t]",
            "Blogger": "http://www.blogger.com/blog_this.pyra?t=&u=[u]&n=[t]",
            "Digg": "http://digg.com/submit?url=[u]&title=[t]",
            "Reddit": "http://www.reddit.com/submit?url=[u]&title=[t]",
            "StumbleUpon": "http://www.stumbleupon.com/submit?url=[u]&title=[t]",
            "MySpace": "http://www.myspace.com/Modules/PostTo/Pages/?u=[u]&t=[t]",
            "Tumblr": "http://www.tumblr.com/share/link?url=[u]&name=[t]",
            "MailTo": "mailto:?body=[u]&subject=[t]",
            //"ShareOnFacebook": "http://www.facebook.com/sharer.php?u=[u]&t=[t]",
            "ShareOnFacebook": "http://www.facebook.com/sharer.php?s=100&p[url]=[u]&p[images][0]=http%3A%2F%2Fwww.agreatis.com%2Fimages%2Flogo_og.jpg&p[title]=[t]&p[summary]=[s]",
            "share": "//static.ak.fbcdn.net/connect.php/js/FB.Share",
            "linkedInPlatform": "//platform.linkedin.com/in.js?async=true",
            "facebookscript": "//connect.facebook.net/[locale]/all.js#xfbml=1",
            "googlescript": "//apis.google.com/js/plusone.js",
            "twitterscript": "//platform.twitter.com/widgets.js",
            "ga": ".google-analytics.com/ga.js",
            yammerscript: "https://assets.yammer.com/platform/yam.js",
            ShareOnYammer: "https://www.yammer.com/home/bookmarklet?bookmarklet_pop=1&u=[u]&t=[t]",
            PinIt: "http://pinterest.com/pin/create/button/?media=http%3A%2F%2Fwww.agreatis.com%2Fimages%2Flogo_og.png&url=[u]&description=[d]",
            pinterestscript: "http://assets.pinterest.com/js/pinit.js?r=" + Math.random(),
            ShareOnPinterest: "http://assets.pinterest.com/js/pinit.js",
            pinterestBookmarkletScript: "http://assets.pinterest.com/js/pinmarklet.js"
        };

        Telerik.Web.UI.RadSocialShare.prototype.configureGoogleButton = function (button) {
            var g = document.createElement("g:plusone")

            window[this.get_id() + 'plusoneHandler'] = Function.createDelegate(this, this._gPlusOne);
            g.setAttribute("callback", this.get_id() + 'plusoneHandler');

            var urlToShareArray = button[1].split("||");
            shareUrl = urlToShareArray[0];

            g.setAttribute("href", decodeURIComponent(shareUrl));
            g.setAttribute("size", button[3] !== undefined ? button[3].toLowerCase() : "standard");
            g.setAttribute("annotation", button[4] !== undefined ? button[4].toLowerCase() : "none");
            if (button[5] !== undefined) g.setAttribute("width", button[5]);
            button._element.parentNode.appendChild(g);
            button._element.style.display = "none";
        }

        Telerik.Web.UI.RadSocialShare.prototype._clickHandler = function (e) {
            $T = Telerik.Web.UI;
            var button = e.data.button;
            var cancelArgs = new $T.SocialDialogCancelEventArgs(button);
            this.raiseEvent('clicking', cancelArgs);
            var urlToShare = button[1];
            var titleToShare = encodeURIComponent(button[2]);
            var urlToOpen;
            if (button[0] == "LinkedIn" || button[0] == "ShareOnFacebook" || button[0] == "ShareOnTwitter") {
                var urlToShareArray = urlToShare.split("%7C%7C");
                var summaryToShare = urlToShareArray[1];
                urlToShare = urlToShareArray[0];
                if (button[0] == "ShareOnTwitter") {
                    urlToOpen = $T.RadSocialShare.SocialNetUrls[button[0]].replace('[u]', urlToShare).replace('[t]', summaryToShare);
                }
                else {
                    urlToOpen = $T.RadSocialShare.SocialNetUrls[button[0]].replace('[u]', urlToShare).replace('[t]', titleToShare).replace('[s]', summaryToShare);
                }
            }
            else {
                urlToOpen = $T.RadSocialShare.SocialNetUrls[button[0]].replace('[u]', urlToShare).replace('[t]', titleToShare);
            }

            var width = button[3];
            var height = button[4];
            var relativeBounds = window.screen ? window.screen : $telerik.getViewPortSize();
            var top = button[5] ? button[5] : (relativeBounds.height - height) / 2;
            var left = button[6] ? button[6] : (relativeBounds.width - width) / 2;

            if (cancelArgs.get_cancel()) {
                return;
            }
            var target = (button[0] == "MailTo") ? "_self" : "sharer";
            var buttonType = button[0];
            if (buttonType.toLowerCase().indexOf("pinterest") == -1) {
                var dialog = window.open(urlToOpen, target, 'resizable,scrollbars=1,toolbar=0,status=0,width=' + width + ',height=' + height + ',top=' + top + ',left=' + left);
            }
            else {
                var url = button[1];
                var title = button[2];
                var fromUrl = document.location.href;
                var urlForPinterest = $T.RadSocialShare.SocialNetUrls["PinIt"]
                        //.replace('[m]', url)
                        //.replace('[m]', '')
                        .replace('[d]', title ? encodeURIComponent(title) : document.location.href)
                        .replace('[u]', encodeURIComponent(fromUrl));
                //Pinterest needs a window wider than the default 470px to be shown properly
                var dialogWidth = width != 470 ? width : 580;
                var dialog = window.open(urlForPinterest, target, 'resizable,scrollbars=1,toolbar=0,status=0,width=' + dialogWidth + ',height=' + height + ',top=' + top + ',left=' + left);
            }
            //prevent double call when keyboard in combobox used
            $telerik.cancelRawEvent(e);
            var args = new $T.SocialDialogEventArgs(dialog, button);
            this.raiseEvent('clicked', args);
            //google analytics
            if (this.get_gaEnabled()) this._trackSocial(button[0].replace("ShareOn", ""), "share", button[1]);
            var popup = this.get_compactPopup();
            if (popup && popup.isVisible()) popup.close();
        }
    </script>
	<!-- #EndEditable -->
</body>

<!-- #EndTemplate -->

</html>
