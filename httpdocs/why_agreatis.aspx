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
				<!-- #BeginEditable "jqueryImg" -->
			<table cellpadding="0" cellspacing="0" class="maintbl1">
				<tr>
					<td class="tdleft">
						<uc1:leftpanel id="lpanel" runat="server" />
					</td>
					<td>
						<uc1:rightpanel id="rpanel" runat="server" />
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
				<h1>Why AGREATIS&#8480;?</h1>
				<div>
					AGreatis&#8480; has its own unique standing in staffing 
					services industry. We are distinguished for our quality of 
					service and excellence in client satisfaction. We are not a 
					large corporate staffing firm which is focused on driving 
					its revenues by sheer numbers, but uniquely small size, well 
					structured as partners focused on delivering results for our 
					clients. This approach has earned us the respect and 
					recognition of our clients.</div>
				<h3>So why do clients prefer working with AGREATIS&#8480;?</h3>
				<div>
					We just do not want to boast about it, but would like to 
					state the facts here.....</div>
				<div>
					<span>Industry Experience:</span> Our capability to deliver 
					new generation staffing services and solutions 
					differentiates our firm with any other staffing firms within 
					our industry. Our services and solutions have been defined 
					based on our thirty five years of combined industry 
					experience.</div>
				<div>
					<span>Best Practices:</span> Our services foundation is 
					based on best practices and processes which are supported by 
					state of the art technology solutions and people with 
					business acumen for client services, people management and 
					networking skills to drive effective recruitment strategies 
					in order to produce the right results for our clients hiring 
					goals.</div>
				<div>
					<span>Know How:</span> Our account managers and recruiters 
					have extensive knowledge in understanding the jobs skills 
					sets and are able to deliver the right combination of 
					skilled and experienced candidates for the opportunities 
					presented by our clients.</div>
				<div>
					<span>Technology Enabled Search Techniques:</span> Our 
					recruitment search techniques has been designed from several 
					sources, including mining our extensive proprietary database 
					of qualified candidates which we have built over several 
					years which is constantly updated and also from a vast 
					network of professionals from several internal/external 
					sources and affiliates there by enabling us locate qualified 
					candidates for our clients to hire within expected 
					timeframes.</div>
				<div>
					<span>Attention to details:</span> In our recruiting 
					approach, we stand apart from other staffing and recruiting 
					companies because our recruiting techniques are unique and 
					guaranteed result oriented. Our research staff focuses on 
					the details of every job requisition, besides seeking to 
					match the candidate's core skills and experience that is 
					needed for a position. They match the candidates based on 
					the company's corporate culture and how well the candidate's 
					over all personality would fit within that particular 
					organization.</div>
				<div>
					<span>360 Degree Approach:</span> For a potential candidate, 
					we present the various aspects of the hiring organization's 
					culture and detail how they would be become a valuable 
					resource for the organization and give them as much as 
					insight to their prospective future employer and workplace. 
					In this process we give both the employer and the 
					prospective employee a 360 degree view of each other in 
					order to make it a win-win proposition.</div>
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
