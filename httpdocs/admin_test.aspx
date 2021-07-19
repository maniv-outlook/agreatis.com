<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>
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
	<title>AGREATIS&#8480;, Inc. - </title>
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
	<!-- #EndEditable -->
</head>
<body>
	<div style="text-align: center">
		<a href="index.aspx"><img alt="Header" src="images/Hdrs_imgAdmin.jpg" style="border: none" /></a>
	</div>
	<!-- #BeginEditable "jqueryImg" -->
	<!-- #EndEditable --><form id="form1" runat="server">
		<div style="width: 96%; margin: 10px; padding: 5px; margin-bottom: 40px;">
			<!-- #BeginEditable "Content" -->
			<!-- #EndEditable -->
		</div>
	</form>
	<div class="td3 copyAdmin">
		<uc1:copy ID="copy" runat="server" />
	</div>
	<!-- #BeginEditable "Script" -->
	<!-- #EndEditable -->
</body>

<!-- #EndTemplate -->

</html>
