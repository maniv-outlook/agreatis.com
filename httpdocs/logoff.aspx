<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	protected void Page_Init(object sender, EventArgs e)
	{
		Response.Cookies.Remove("UserId");
		Response.Cookies.Remove("UserName");
		Response.Cookies.Remove("Admin");
		Response.Cookies["UserId"].Expires = DateTime.Now.AddDays(-1);
		Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
		Response.Cookies["Admin"].Expires = DateTime.Now.AddDays(-1);
		Response.Redirect("adminlogin.aspx");
	}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-33783303-1']);
		_gaq.push(['_trackPageview']);
  		(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
	</div>
	</form>
</body>
</html>
