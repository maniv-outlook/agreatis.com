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
				<h1>AGREATIS&#8480; Services</h1>
				<h3>AGREATIS&#8480; - Professional Staffing Services:</h3>
				<div>
					From inception, AGreatis&#8480; has been in the forefront of Professional Staffing Services and Contingent Staff Augmentation.</div>
				<div>
					Our services offering are focused within high demand skills domains such as Information Technology, Engineering, Biomedical Engineering and 
					Scientific (R&D) which are fundamentally derived from STEM ( Science, Technology, Engineering and Mathematics) educational backgrounds.</div>
				<h5>We provide the following professional types staffing services to our clients:<br/><br/>Contract Staff Augmentation Services within Information Technology
					Skills:</h5>
				<div>
					Majority of IT staffing needs are due to project specific needs for most organizations. Since expert IT skills are high demand, they tend to be more
					available on project/on-demand basis and are very mobile. With over twenty years of experience in contract staff augmentation, AGreatis&#8480; are
					able to	provide a quick turnaround to its client&rsquo;s resources needs for any specific project. Our recruiters are adept in locating the right 
					resources within the required timeframe and budget. We have the capacity to handle exclusive staff augmentation for any sized projects and the
					capability to source skills ranging from a entry level IT technician to highly specialized skilled resources. Our delivery model can support any 
					organization&rsquo;s contingency staffing needs at anytime. For more information please feel free to submit your request 
					<a href="contactus.aspx?q=csas">here.</a></div>
				<h5>Contingency Search Services And Retained Staffing Services:</h5>
				<div>
					For both Contingency and Retained search services we have the expertise to staff positions ranging from Higher Level Management, Senior/Mid-
					management levels and Subject matter expert role specific candidates  across Information Technology, Engineering, Scientific (R&D) and Finance skills 
					domains. We work with our client&rsquo;s HR/Hiring managers and understand specifics of the roles that needs to be filled and develop the overall 						<strong>(K/S/A matrix)</strong> <em>i.e. Knowledge, Skills, and Abilities.!</em></div>
				<div>	
					We deliver the right mix of candidates for the hiring managers to interview and select from based on the predefined K/S/A&rsquo;s. Contingency search
					services are flexible and most desired by our clients for a wide range of skills needed to hire at a fixed cost. For more information please feel 
					free to submit your request <a href="contactus.aspx?q=rss">here.</a>
				</div>
				<!--
				<h5>Contingency Search Services: </h5>
				<div>
					For contingency search services, we are able to deliver the right candidates matching for positions ranging from mid-level positions to senior level
					mid-management positions within IT, Finance and Engineering skills. We work with our client&#8217;s HR/Hiring managers and understand specifics of 
					the job order to be filled and develop a over all skills matrix ranging from must have (S)-Skills to nice to have skills along with the required 
					(K)-knowledge(industry specific) and (A)Abilities!. We deliver the right mix for candidates for the hiring managers to interview and select from, 
					based on the predefined K-S-A&#8217;s. Contingency search services are flexible and most desired by our clients for wide range of skills needed to 
					hire at a fixed cost. For more information please feel free to submit your request <a href="contactus.aspx?q=css">here.</a></div>
				-->
				<h3>AGREATIS&#8480; - Niche Skills Focus:</h3>
				<h5 style="margin-top:25px">Information Technology Staffing:</h5>
				<div>
					AGreatis&#8480; staffing services lead the way in sourcing hard to find skills within information technology arena. Our niche expertise has been 
					sourcing candidates with expertise SAP skills and IT Infrastructure Management skills. We have been very successful in helping our clients hire these
					resources, especially the combination of the skills sets and the required domain knowledge that is needed in order to maximize the full potential of
					these individuals.</div>
				<div>
					We have provided these services within the industry verticals across Manufacturing, Pharmaceuticals / CPG / Chemical, Banking / Financial Services, 
					Insurance, Publishing, Transportation, Logistics and Defense.</div>
				<div>
					<h6>Our niche expertise is providing contract staff augmentation and contingency staffing services in the following skill areas:</h6></div>
				<div>
					<h6 style="margin-top:12px">ERP Skills</h6>
					<div>
						<strong>SAP - </strong>FICO, PP, MM, SD, APO, BASIS Admin, SAP Infrastructure Architect, SAP Project Manager / PMO, SAP Technical 
						(ABAP/Reports), BW / SAP SCM / SRM.</div>
					<div>
						<strong>SAP Functional Areas: </strong>Plant Controller with SAP skills, Finance Manager Master Scheduler with SAP expertise, SAP Planner 
						with SAP expertise, Supply Chain Manager with SAP expertise, EHS-Manager with SAP Skills.</div>
					<h6 style="margin-top:12px">Other ERP Applications Skills: </h6>
					<div>
						Peoplesoft, JD Edwards, Oracle Applications, Oracle Retail Applications</div>
					<h6 style="margin-top:12px">Data Warehouse / Business Intelligence(BI):</h6>
					<div>
						MicroStrategy, Cognos, Essbase, SAS, Hyperion</div>
					<h6 style="margin-top:12px">Infrastructure Management:</h6>
					<div>
						Infrastructure Project Manager/ Network Management Skills/ Network Engineer / Security Architects / Identity / Access Management / Change 
						Management / Storage Engineers / Architects / Systems Administrators / Database Administrators</div>
					<h6 style="margin-top:12px">Focus on IT-Management Positions: </h6>
					<div>
						CIO, CFO, VP-Information Technology, IT Infrastructure Director, SAP Project Manager</div>
					<h6 style="margin-top:12px">Engineering:</h6>
					<div>
						Management level positions with Engineering skills such as Electrical Engineers, Civil Engineers, Robotics Engineers / Process 
						Engineers / Quality / EHS within Manufacturing / Chemical / CPG / Pharmaceuticals / Transportation / Construction / Energy / Gas and 
						Utilities.</div>
					<h6>Bio-Medical/Medical Devices:</h6>
					<div>
						Management Level Scientific and Research (R&D) positions, EHS Data Science and Statistical Analysts, Product Engineer, Device 
						Engineers.</div>
				</div>
				<!--
				<div>&nbsp;</div>
				<div><h6>
					We are currently expanding our services within Contingency 
					Search Services for the following industries for specific 
					job positions such as:</h6>
				</div>
				<div>
					<h6>Banking and Financial Services: </h6>
					<div>
						Wealth Management Analysts, Risk management Analyst, 
						Mortgage Banking Analysts, Retail Banking Analysts, 
						Credit Analysts.
					</div>
					<h6>Bio-Medical:</h6>
					<div>
						Management Level Scientific and Research positions.</div>
				</div>
				-->
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
