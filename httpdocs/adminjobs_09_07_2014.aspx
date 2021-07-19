<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" CodeFile="adminjobs.aspx.cs" Inherits="AdminJobs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- #BeginTemplate "templates/agreatis_admin.dwt" -->

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
    <!-- #BeginEditable "doctitle" -->
    <title>AGREATIS&#8480;, Inc. - View All Jobs</title>
    <!-- #EndEditable -->
    <link href="agreatis.css" rel="stylesheet" type="text/css" />
    <script src="scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var img = new Image();
        img.src = "images/left_pnl_img_2.jpg";
    </script>
    <script src="scripts/kendo/2012.3.1114/kendo.web.min.js" type="text/javascript"> </script>
    <script src="scripts/modernizr.js" type="text/javascript"> </script>
    <link href="Content/kendo/2012.3.1114/kendo.metro.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/kendo/2012.3.1114/kendo.common.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        form
        {
            margin-top: 10px;
        }

            form > div > div
            {
                margin-top: 20px;
            }

                form > div > div > .spanLbl, form > div > div > .spanTxt
                {
                    margin-left: 5px;
                    margin-right: 5px;
                }
    </style>
    <meta content="http://www.agreatis.com/images/logo_og.jpg" property="og:image" />
    <meta content="image/png" property="og:image:type">
    <meta content="720" property="og:image:width">
    <meta content="440" property="og:image:height">
    <!-- #BeginEditable "head" -->
    <style type="text/css">
        .linkImage > img
        {
            margin-top: 3px;
        }

        .hidden
        {
            display: none;
        }

        #grid tr td
        {
            padding: 2px 5px;
        }
    </style>
    <!-- #EndEditable -->
</head>
<body>
    <div style="text-align: center">
        <a href="index.aspx">
            <img alt="Header" src="images/Hdrs_imgAdmin.jpg" style="border: none" /></a>
    </div>
    <!-- #BeginEditable "jqueryImg" -->
    <!-- #EndEditable -->
    <form id="form1" runat="server">
        <div style="width: 96%; margin: 10px; padding: 5px; margin-bottom: 40px;">
            <!-- #BeginEditable "Content" -->
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
            <uc1:menu ID="menu" runat="server" />
            <div>
                <button type="button" onclick="javascript:document.location.href='adminjob.aspx?id=0'; " style="margin: 20px">Add new Job</button>
                <button type="button" onclick="javascript:document.location.href='adminjobs.aspx?s=<%=string.IsNullOrWhiteSpace(Request.QueryString["s"]) || Request.QueryString["s"] == "true" ? "false" : "true" %>'; " style="margin: 20px"><%=string.IsNullOrWhiteSpace(Request.QueryString["s"]) || Request.QueryString["s"] == "true" ? "Show Inactive Jobs" : "Show Active Jobs" %></button>
                <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sqlJob" EmptyDataText="No Jobs" ShowHeaderWhenEmpty="True"
                    Width="100%" OnRowDataBound="gridJob_RowDataBound">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="adminjob.aspx?id={0}"
                            DataTextField="JobCode" HeaderText="JobCode" HeaderStyle-Width="100" ItemStyle-Wrap="true" />
                        <asp:BoundField DataField="ClientJobReqCode" HeaderText="Client Code" HeaderStyle-Width="100" ItemStyle-Wrap="true"></asp:BoundField>
                        <asp:BoundField DataField="JobTitle" HeaderText="Title"></asp:BoundField>
                        <asp:BoundField DataField="Location" HeaderText="Location" HeaderStyle-Width="170" ItemStyle-Wrap="true" />
                        <asp:BoundField DataField="State" HeaderText="State" HeaderStyle-Width="60" />
                        <asp:BoundField DataField="JobType" HeaderText="Type" HeaderStyle-Width="80" />
                        <%--<asp:BoundField DataField="JobDescription" HeaderText="JobDescription" />--%>
                        <asp:BoundField DataField="PostedOn" DataFormatString="{0:d}" HeaderText="Posted On" HeaderStyle-Width="120" />
                        <asp:BoundField DataField="Expiry" DataFormatString="{0:d}" HeaderText="Expiry" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" HeaderStyle-Width="100" />
                        <asp:BoundField DataField="OFCCPRequired" HeaderText="OFCCP?" HeaderStyle-Width="60" />
                        <asp:BoundField DataField="Status" HeaderText="Status" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                        <%--                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="adminshowsubmissions.aspx?id={0}"
                            HeaderText="Submissions" Text="Submissions" />--%>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Bottom" HeaderText="Submissions" HeaderStyle-Width="120">
                            <ItemTemplate>
                                <asp:HyperLink ID="linkSubmission" runat="server" ImageUrl="~/images/resume.png" ToolTip="Submissions" NavigateUrl='<%# Eval("Id", "adminshowsubmissions.aspx?id={0}") %>' CssClass="linkImage"></asp:HyperLink>
                                <asp:HyperLink ID="HyperLink1" runat="server" ToolTip="Submissions" NavigateUrl='<%# Eval("Id", "adminshowsubmissions.aspx?id={0}") %>' Text='<%#Eval("CountResumes", "Count: ({0})") %>'></asp:HyperLink>
                                <%--<asp:Label runat="server" Text='<%#Eval("CountResumes", "Count: ({0})") %>'></asp:Label>--%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--                        <asp:TemplateField ShowHeader="False" HeaderText="Toggle Status">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                    Text="Toggle" OnClientClick="return confirm('Are you certain you want to toggle the Status for this Job?');"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Bottom" HeaderStyle-Width="155" HeaderText="Post To">
                            <ItemTemplate>
                                <asp:ImageButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Delete" ImageUrl="~/images/active.png" Width="16" Height="16" OnClientClick=" return confirm('Are you certain you want to toggle the Status for this Job?'); " />
                                <%--<asp:HyperLink ID="linkFacebook" runat="server" ImageUrl="~/images/facebook.gif" NavigateUrl='<%#string.Format("javascript:ShowWin(\"http://www.facebook.com/sharer.php?u={0}&t={1}\");", Eval("Link"), Eval("JobTitle")) %>' CssClass="linkImage" Style="margin-left: 25px"></asp:HyperLink>--%>
                                <%--                                <asp:HyperLink ID="linkFacebook" runat="server" ImageUrl="~/images/facebook.gif" NavigateUrl='<%#string.Format("fbfeed.aspx?id={0}&f=a", Eval("Id")) %>' CssClass="linkImage" Style="margin-left: 25px"></asp:HyperLink>
                                <asp:HyperLink ID="linkLinkedIn" runat="server" ImageUrl="~/images/linkedin.gif" NavigateUrl='<%#Eval("Id", "javascript:ShowWin(\"linkedinfeed.aspx?id={0}\");") %>' CssClass="linkImage" Style="margin-left: 5px"></asp:HyperLink>
                                <asp:HyperLink ID="linkTwitter" runat="server" ImageUrl="~/images/twitter.png" NavigateUrl='<%#Eval("Id", "javascript:ShowWin(\"twitterfeed.aspx?id={0}\");") %>' CssClass="linkImage" Style="margin-left: 5px"></asp:HyperLink>--%>
                                <telerik:RadSocialShare runat="server" UrlToShare='<%#Eval("Link")  + "||" + Eval("ShortText")%>' TitleToShare='<%#Eval("JobTitle") %>' BorderStyle="None">
                                    <MainButtons>
                                        <telerik:RadSocialButton SocialNetType="LinkedIn" />
                                        <telerik:RadSocialButton SocialNetType="ShareOnFacebook" />
                                        <telerik:RadSocialButton SocialNetType="ShareOnTwitter" />
                                        <telerik:RadSocialButton SocialNetType="ShareOnPinterest" />
                                        <telerik:RadGoogleButton AnnotationType="None" ButtonSize="Small" />
                                    </MainButtons>
                                </telerik:RadSocialShare>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="sqlJob" runat="server" ConnectionString="<%$AppSettings:ConnStr %>"
                    DeleteCommand="DeleteJob" DeleteCommandType="StoredProcedure" ProviderName="System.Data.SqlClient"
                    SelectCommand="GetAllJobs" SelectCommandType="StoredProcedure">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Status" Type="Boolean" DefaultValue="true" QueryStringField="s" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <!-- #EndEditable -->
        </div>
    </form>
    <div class="td3 copyAdmin">
        <uc1:copy ID="copy" runat="server" />
    </div>
    <!-- #BeginEditable "Script" -->
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
