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
	<script runat="server" type="text/c#">
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack)
			{
				Response.Redirect("~/contactsuccess.aspx", true);
			}
			else
			{
				if (string.IsNullOrWhiteSpace(Request.QueryString["q"]))
				{
					dropLocation.SelectedIndex = 5;
				}
				else
				{
					switch (Request.QueryString["q"])
					{
						case "csas":
							dropLocation.SelectedIndex = 0;
							break;
						case "rss":
							dropLocation.SelectedIndex = 1;
							break;
						case "css":
							dropLocation.SelectedIndex = 2;
							break;
						case "rpm":
							dropLocation.SelectedIndex = 3;
							break;
						case "vms":
							dropLocation.SelectedIndex = 4;
							break;
						default:
							dropLocation.SelectedIndex = 5;
							break;
					}
				}
			}
		}
	</script>
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
				<h1>Contact Us</h1>
				<h3>Main Office:</h3>
				<!--<h5>Main Office:</h5>-->
				<div class="divTemp">
					<div>
						247 East Front Street</div>
					<div>
						Suite #225 Trenton, NJ 08611 <!--<span id="sMap">
						<a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=12+Penns+Trail+Newtown+PA+18940&amp;sll=37.0625,-95.677068&amp;sspn=39.235538,93.076172&amp;ie=UTF8&amp;hq=&amp;hnear=12+Penns+Trail,+Newtown,+Bucks,+Pennsylvania+18940&amp;t=h&amp;z=16" target="_blank">
						Get Directions</a></span>--></div>
					<div>
						<span>Phone Toll Free: </span>833-553-3200</div>
					<!--<div>
						<span>Direct Dial: </span>888-885-8712</div>-->
					<div>
						<span>FAX:</span> 888-885-4752</div>
					<div>
						<span>General Email: </span>
						<a href="mailto:info@agreatis.com">info@agreatis.com</a></div>
					<!--<div>
						<span>2Bugle Technical Support Phone Toll Free: </span>877-817-5550 
						ext 129</div>
					<div></div>-->
				</div>
               <!--<h5>Pittsburgh, PA Offices:</h5> <div class="divTemp">
					<div>
						2535 Washington Road, Suite 1100,</div>
					<div>
						Pittsburgh PA 15241 <span id="sMap">
						<a href="https://www.google.co.in/maps/place/2535+Washington+Rd+%231100,+Upper+St+Clair,+PA+15241,+USA/@40.3156351,-80.0923165,5794m/data=!3m1!1e3!4m5!3m4!1s0x8834f89a6c458b71:0x7395b27c21b55af4!8m2!3d40.3170695!4d-80.0879331" target="_blank">
						Get Directions</a></span></div>
					
					<div></div>
				</div>-->
				<asp:ValidationSummary id="validateSummary" runat="server" CssClass="validate"></asp:ValidationSummary>
				<hr />
				<h3>Request Information</h3>
				<div class="divContact">
					<div>
						<span class="spanLeft">
						<asp:Label id="labelName" runat="server" AssociatedControlID="textName" Text="Name:"></asp:Label>
						</span><span class="spanRight">
						<asp:TextBox id="textName" runat="server" CssClass="text"></asp:TextBox>
						<asp:RequiredFieldValidator id="reqName" runat="server" ControlToValidate="textName" CssClass="validate" Display="Dynamic" ErrorMessage="Name is required." Text="*" ToolTip="Name is required."></asp:RequiredFieldValidator>
						</span>
					</div>
					<div>
						<span class="spanLeft">
						<asp:Label id="labelEmail" runat="server" AssociatedControlID="textEmail" Text="Email:"></asp:Label>
						</span><span class="spanRight">
						<asp:TextBox id="textEmail" runat="server" CssClass="text"></asp:TextBox>
						<asp:RequiredFieldValidator id="reqEmail" runat="server" ControlToValidate="textEmail" CssClass="validate" Display="Dynamic" ErrorMessage="Email is required." Text="*" ToolTip="Email is required."></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator id="regEmail" runat="server" ControlToValidate="textEmail" CssClass="validate" Display="Dynamic" ErrorMessage="Email is not in the valid format." ToolTip="Email is not in the valid format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
						</span>
					</div>
					<div>
						<span class="spanLeft">
						<asp:Label id="labelLocation" runat="server" AssociatedControlID="dropLocation" Text="Location:"></asp:Label>
						</span><span class="spanRight">
						<asp:DropDownList id="dropLocation" runat="server" CssClass="text">
								<asp:ListItem>Contract Staff Augmentation Services</asp:ListItem>
								<asp:ListItem>Retained Search Services</asp:ListItem>
								<asp:ListItem>Contingency Search Services</asp:ListItem>
								<asp:ListItem>2Bugle® RPM - For HR Professionals</asp:ListItem>
								<asp:ListItem>2Bugle®-VMS - For contingent staffing service providers</asp:ListItem>
								<asp:ListItem>Others</asp:ListItem>
							</asp:DropDownList>
						</span>
					</div>
					<div>
						<span class="spanLeft">
						<asp:Label id="labelMessage" runat="server" AssociatedControlID="textMessage" Text="Message:"></asp:Label>
						</span><span class="spanRight">
						<asp:TextBox id="textMessage" runat="server" CssClass="text" TextMode="MultiLine"></asp:TextBox>
						<asp:RequiredFieldValidator id="reqMessage" runat="server" ControlToValidate="textMessage" CssClass="validate" Display="Dynamic" ErrorMessage="Message is required." Text="*" ToolTip="Message is required."></asp:RequiredFieldValidator>
						</span>
					</div>
					<div>
						<asp:Button id="buttonSubmit" runat="server" Text="Submit"></asp:Button>
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
