<%@ Control Language="C#" ClassName="Copyright" %>
<script runat="server" type="text/c#">
	protected override void OnInit(EventArgs e)
	{
			divCopyright.InnerHtml = string.Format("AGREATIS&#8480; name and the logo is the trademark of AGreatis Inc. All Rights Reserved. Copyright &copy; AGREATIS, Inc. {0}", DateTime.Today.Year);
	}
</script>
<div id="divCopyright" runat="server"></div>