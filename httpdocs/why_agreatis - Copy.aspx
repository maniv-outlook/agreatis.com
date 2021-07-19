<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<!-- 
	****************
	Description: AGREATIS, Inc.
	Called By : http://www.agreatis.com
	Created: DonBosco Paily 07/30/2013
	Last Modified: DonBosco Paily 07/30/2013
	****************
	-->
	<meta content="text/html; charset=iso-8859-1" http-equiv="Content-Type" />
<title>AGREATIS, Inc.</title>
<link href="agreatis.css" rel="stylesheet" type="text/css" />
	<script src="scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
	<script src="scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var img = new Image();
		img.src = "images/left_pnl_img_2.jpg";
	</script>
</head>
<body>
	<table cellpadding="0" cellspacing="0" class="maintbl">
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><table cellpadding="0" cellspacing="0" class="maintbl1">
				<tr>
					<td class="tdleft">
						<uc1:leftpanel id="lpanel" runat="server" />
					</td>
					<td>
						<uc1:rightpanel id="rpanel" runat="server" />
					</td>
				</tr>
			</table>
		    </td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td class="tdContent">
				
<h1 align="center">NOTICE:</h1>
<h3>TO:<br />
				  ALL CLIENTS, PARTNERS AND CANDIDATES/ASSOCIATES AND TO WHOSOMEVER IT MAY CONCERN.</h3>
				<div>
				  <p>Pivotal  Partners Inc. has agreed for a voluntary settlement of a dispute arising from  the use of similar name &ldquo;Pivotal Partners&rdquo; &nbsp;Inc.&rdquo; with another company &nbsp;with similar name &ldquo;Pivotal Partners Group  Inc.&rdquo; Therefore as a reasonable settlement offer Pivotal Partners Inc., has  agreed change its name to Agreatis Inc.</p>
				</div>
				<div>With effect from August 1st  &nbsp;2013, Pivotal Partners Inc, will be conducting its business under a  new company name and brand name as &quot;AGREATIS Inc.&rdquo;</div>
				<div class="dTit">The new website for the company is <a href="http://www.agreatis.com">www.agreatis.com</a>.</div>
				<h3>Note: All our contact phone numbers are the same as before:</h3>
				<div>
					<span>Toll  free: 1-877-817-5505
				<br /> 
				Fax:&nbsp; &nbsp; 267-352-4752</span></p>
				.</div>
				<div>
			      <h4>Email address update: 
				    If you are familiar with Pivotal Partners&rsquo; associate&rsquo;s email before, please replace the same email as follows:  pivotal-email-name@agreatis.com., 
				  ( e.g.  John smith&rsquo;s new email address will johns@agreatis.com)				  </h4>
			    			</div><div>
			      <h4>Also we will continue to forward  &nbsp;the old emails to the new email address.</h4>
			    			</div>
			  <div align="center">
			      <h3 align="center">(The site will Automatically redirect the address to the new site after 3 minutes).
                Or click here to go to Agreatis website: (<a href="http://www.agreatis.com" target="_blank">www.agreatis.com</a>) </h3>
   			  </div>
			</td>
		</tr>
		<tr>
			<td>
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
</body>

</html>
