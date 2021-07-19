<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
	<title>AGREATIS, Inc.</title>
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
				<!-- #BeginEditable "jqueryImg" --><table cellpadding="0" cellspacing="0" class="maintbl1">
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
					<h1 style="display: none">AGREATIS&#8480;</h1>
					<div id="divMain1">
						<img alt="Header" height="35" src="images/home_img_Hdr.jpg" width="455" />
						<div id="divSubHeader1">
							<img alt="Header" height="35" src="images/home_img_Sub1Hdr.jpg" width="244" />
							<div id="divSubHeaderText">
								<span style="font-weight: normal;"></span>AGREATIS&#8480; as the name suggests, strive to be A GREAT partner to our clients in achieving their goals to acquire the best human resources within their industry. Our job is not just to help...<a href="stf_redfnd.aspx">
								<img alt="Read More" src="images/home_img_readmore.jpg" style="margin-top: 0px; float: right" /></a>
	<!--<a href="careers_new.aspx"><img alt="CLICK HERE to check current Hot Positions we are filling for our clients.  " height="71" src="images/hot_jobs1.jpg" width="198" /></a>-->
							</div>
						</div>
						<div id="divSubImages">
							<img alt="2BugleRPM" height="24" src="images/home_img_2BugleHdr.jpg" width="186" />
							<img alt="Recruitment Process Management" height="44" src="images/home_img_2Bugle_desc.jpg" width="186" />
							<a href="solutions.aspx#RPM"><img alt="Read More" height="15" src="images/home_img_readmore.jpg" width="186" /></a>
							<img alt="2BugleVMS" height="24" src="images/home_img_2BugleVMSHdr.jpg" style="margin-top: 10px;" width="186" />
							<img alt="Vendor Management System" height="44" src="images/home_img_2BugleVMS_desc.jpg" width="186" />
							<a href="solutions.aspx#VMS"><img alt="Read More" height="15" src="images/home_img_readmore.jpg" width="186" /></a>
						</div>
					</div>
					<div id="divMain2">
						<img alt="Header" height="35" src="images/home_img_Hdr_2.jpg" width="430" />
												<div id="divAboutText0">AGREATIS&#8480; is a unique name that was coined by putting together the basic three words &ldquo;A GREAT IS&rdquo;. For us this name symbolizes everything to be GREAT in what we do in our business and within the staffing industry. AGreatis embodies the &ldquo;GREAT&rdquo; quality of service to our clients in sourcing their next &ldquo;Best Hire&rdquo;; AGreatis personifies motivation and reflects on our company&rsquo;s philosophy to be A GREAT company that excels in the Professional Staffing world. We coined this name to motivate ourselves in pursuit of Greatness! It inspires higher thinking that is required to redefine &ldquo;Sourcing Talent&rdquo; strategies for our clients.<a href="about_agreatis.aspx"><img alt="Read More" height="15" src="images/home_img_readmore.jpg" width="186" align="right" /></a></p>
						</div>
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
	<!-- #EndEditable -->
</body>

<!-- #EndTemplate -->

</html>
