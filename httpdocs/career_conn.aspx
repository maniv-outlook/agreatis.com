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
	<title>AGREATIS, Inc</title>
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
					<h1>
						Career Connections</h1>
					<a href="careers_new.aspx">
					<img align="right" alt="Hot Positions - Click Here!" height="174" src="images/click_here_img.jpg" style="margin-top: -60px" width="267" />
					</a>
					<h3>
						Seeking a new career move?
					</h3>
					<h3>
						Talk to us!</h3>
					<h3>
						With Agreatis&#8480; you can get access to many good positions with leading client companies we serve.!
					</h3>
					<div>
						With the help of AGreatis&#8480; make your next career move to a company that you desire to work for.
					</div>
					<div>
						For experienced candidates who meet the qualifications we provide you with the access to an impressive roster of clients 
						we work with. If you have the expertise and skills that our clients demand, we can work with you to get you the access 
						to these opportunities. With many of our clients, we are the staffing vendor of choice and have an exclusive relationship 
						with our clients allowing us to have direct contact with hiring managers. Don&#8217;t wait for a job position to be 
						advertised, by contacting us proactively, we are able to present your interest with the companies you may desire to 
						work with based on your experience and skills.
					</div>
					<div>
						If you are an active candidate seeking a new opportunity or a passive candidate looking for your next ideal opportunity, 
						We encourage you to send us your resume(Click here to Apply). We consistently search our database for an appropriate 
						match to our clients needs, and we will contact you to discuss your skills, qualifications, job criteria, company criteria 
						and career goals to assess if there it is a good match. We take the same amount of time with candidates as we do with 
						our clients to fully understand your background and experience. Our services are free to candidates. Hiring companies 
						pay us the professional services fee to find them qualified candidates.
					</div>
					<h5>
						Some of Industries we serve:
					</h5>
					<div>
						Financial Services: Banking/Insurance/Hedge Funds/Mutual Funds<br />
						Healthcare<br />
						Pharmaceuticals<br />
						Entertainment/Media<br />
						Publications/Newsprint<br />
						Transportation<br />
						Manufacturing<br />
						Retail<br />
						Technology<br />
						Aerospace and Defense <br />
						Logistics
					</div>
					<h5 style="margin-bottom: 15px">
						<a href="careers_new.aspx">Click Here</a> to check current Hot Positions we are filling for our clients.
					</h5>
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
