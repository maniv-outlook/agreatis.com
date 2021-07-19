<%@ Control Language="C#" ClassName="LeftPanel" %>
<script runat="server" type="text/c#">
	protected override void OnInit(EventArgs e)
	{
		string _pageName = Request.Url.ToString();
		if (_pageName.Contains("index.aspx") || _pageName.Contains("careers_new.aspx"))
		{
			imgLeft3.ImageUrl = "~/images/left_pnl_img_3.jpg";
		}
		else if (_pageName.Contains("stf_redfnd.aspx"))
		{
			imgLeft3.ImageUrl = "~/images/left_pnl_img_4.jpg";
		}
		else if (_pageName.Contains("why_pivotal.aspx"))
		{
			imgLeft3.ImageUrl = "~/images/left_pnl_img_5.jpg";
		}
		else if (_pageName.Contains("pivotal_services.aspx"))
		{
			imgLeft3.ImageUrl = "~/images/left_pnl_img_6.jpg";
		}
		else if (_pageName.Contains("pivotal_solutions.aspx"))
		{
			imgLeft3.ImageUrl = "~/images/left_pnl_img_7.jpg";
		}
		else if (_pageName.Contains("career_conn.aspx") || _pageName.Contains("apply.aspx") || _pageName.Contains("register.aspx"))
		{
			imgLeft3.ImageUrl = "~/images/left_pnl_img_8.jpg";
		}
		else if (_pageName.Contains("workat_pivotal.aspx"))
		{
			imgLeft3.ImageUrl = "~/images/left_pnl_img_9.jpg";
		}
		else if (_pageName.Contains("contactus.aspx") || _pageName.Contains("contactsuccess.aspx"))
		{
			imgLeft3.ImageUrl = "~/images/left_pnl_img_10.jpg";
		}
	}
</script>
<div id="leftpanel" class="divLeft panelStyle">
	<div id="test" class="panelStyle">
		<asp:Image ID="imgLeft2" runat="server" AlternateText="RedImage" CssClass="panelStyle" ImageUrl="~/images/left_pnl_img_1.jpg"></asp:Image>
	</div>
	<asp:Image ID="imgLeft3" runat="server" AlternateText="Main Left Image" CssClass="panelStyle" style="display: none"></asp:Image>
</div>
