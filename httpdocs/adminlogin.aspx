<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Globalization" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

	void Page_Init(object sender, EventArgs e)
	{
		if (Request.Cookies["UserName"] != null && Request.Cookies["UserName"].ToString() != "")
		{
			Response.Redirect("~/adminusers.aspx", true);
		}
	}

	void buttonSubmit_Click(object sender, EventArgs e)
	{
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("CheckUser", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_command.Parameters.AddWithValue("@Email", textEmail.Text);
				_command.Parameters.AddWithValue("@Password", textPassword.Text);
				_con.Open();
				using (SqlDataReader _read = _command.ExecuteReader())
				{
					if (_read.HasRows)
					{
						while (_read.Read())
						{
							Response.Cookies["UserId"].Value = _read.GetInt32(0).ToString(CultureInfo.InvariantCulture);
							Response.Cookies["UserName"].Value = textEmail.Text;
							Response.Cookies["Admin"].Value = (_read.GetInt32(0) == 1).ToString(CultureInfo.InvariantCulture);
						}
					}
					else
					{
						ClientScript.RegisterClientScriptBlock(typeof(string), Guid.NewGuid().ToString(), "alert('Invalid User Name/Password')", true);
						return;
					}
				}
				Response.Redirect("adminjobs.aspx", true);
			}
		}
	}
</script>
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
	<title>Logon - Agreatis&trade;, Inc.</title>
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
	<style type="text/css">

















		.spanLbl
		{
			display: inline-block;
			font-weight: bold;
			text-align: right;
			width: 170px;
		}
	</style>
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
				<h2>
					Logon to Agreatis&#8480;, Inc.</h2>
				<div>
					<span class="spanLbl">
						<label for="textEmail">
							Email:</label></span> <span>
								<asp:TextBox ID="textEmail" runat="server" CssClass="text" MaxLength="255"></asp:TextBox>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textEmail"
									CssClass="validator" Display="Dynamic" ErrorMessage="Invalid EMail, please enter again."
									ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textPassword">
							Password:</label></span> <span>
								<asp:TextBox ID="textPassword" runat="server" MaxLength="20" CssClass="text" TextMode="Password"
									Width="30%" />
								<asp:RequiredFieldValidator ID="RequiredFieldValidatorPwd" runat="server" ControlToValidate="textPassword"
									Display="Dynamic" ErrorMessage="Password is required." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
							</span>
				</div>
				<div>
					<span style="width: 400px; padding-left: 140px">
						<asp:ValidationSummary ID="validJob" runat="server" ShowMessageBox="true" />
						<asp:Button ID="buttonSubmit" runat="server" OnClick="buttonSubmit_Click" Style="margin-left: 100px"
							Text="Submit" />
					</span>
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
