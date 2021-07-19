<%@ Control Language="C#" %>
<script runat="server">
	protected void Page_Load(object sender, EventArgs e)
	{
		/*if (!Convert.ToBoolean(Request.Cookies["Admin"].Value))
		{
			linkUser.Attributes["onclick"] = "javascript:alert('Only an Administrator can access the Users section.');";
			linkSumm.Attributes["onclick"] = "javascript:alert('Only an Administrator can access the Users section.');";
			linkDetails.Attributes["onclick"] = "javascript:alert('Only an Administrator can access the Users section.');";
		}*/
	}
</script>
<div class="adminMenu" style="margin-left: 25px">
	<div class="menuLink" style="width: 60px; margin-left: 30px; margin-top: 0" onclick="javascript:document.location.href='adminusers.aspx';"
		id="linkUser" runat="server">
		Users</div>
	<div class="menuLink" style="width: 60px; margin-left: 30px; margin-top: 0" onclick="javascript:document.location.href='adminjobs.aspx';">
		Jobs</div>
	<div class="menuLink" style="width: 160px; margin-left: 30px; margin-top: 0" id="linkSumm"
		runat="server" onclick="javascript:document.location.href='adminofccpsummary.aspx';">
		OFCCP Summary</div>
	<div class="menuLink" style="width: 140px; margin-left: 30px; margin-top: 0" id="linkDetails"
		runat="server" onclick="javascript:document.location.href='adminshowofccp.aspx';">
		OFFCP Details</div>
	<div class="menuLink" style="width: 140px; margin-left: 30px; margin-top: 0" onclick="javascript:document.location.href='logoff.aspx';">
		Logoff</div>
</div>
