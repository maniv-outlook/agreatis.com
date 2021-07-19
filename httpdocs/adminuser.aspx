<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
	TagPrefix="ew" Namespace="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private int id;
	void Page_Init(object sender, EventArgs e)
	{
		if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
		{
			Int32.TryParse(Request.QueryString["id"], out id);
		}
		if (!IsPostBack && id != 0)
		{
			using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
			{
				using (SqlCommand _command = new SqlCommand("GetUser", _con)
				{
					CommandType = CommandType.StoredProcedure
				})
				{
					_command.Parameters.AddWithValue("@Id", id);
					_con.Open();
					using (SqlDataReader _read = _command.ExecuteReader())
					{
						while (_read.Read())
						{
							textFirst.Text = _read.GetString(0);
							textLast.Text = _read.GetString(1);
							textEmail.Text = _read.GetString(2);
							textPhone.Text = _read.GetString(4);
							textPassword.Attributes["value"] = _read.GetString(3);
							textFBLog.Text = _read.IsDBNull(5) ? "" : _read.GetString(5);
							textFBPass.Attributes["value"] = _read.IsDBNull(6) ? "" : _read.GetString(6);
							textLinLog.Text = _read.IsDBNull(7) ? "" : _read.GetString(7);
							textLinPass.Attributes["value"] = _read.IsDBNull(8) ? "" : _read.GetString(8);
							textTwitLog.Text = _read.IsDBNull(9) ? "" : _read.GetString(9);
							textTwitPass.Attributes["value"] = _read.IsDBNull(10) ? "" : _read.GetString(10);
						}
					}
				}
			}
		}
	}

	void buttonSubmit_Click(object sender, EventArgs e)
	{
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("SaveUser", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_command.Parameters.AddWithValue("@Id", id == 0 ? (object)DBNull.Value : id);
				_command.Parameters.AddWithValue("@First", textFirst.Text);
				_command.Parameters.AddWithValue("@Last", textLast.Text);
				_command.Parameters.AddWithValue("@Email", textEmail.Text);
				_command.Parameters.AddWithValue("@Phone", textPhone.Text);
				_command.Parameters.AddWithValue("@Password", textPassword.Text);
				_command.Parameters.AddWithValue("@LinLog", textLinLog.Text);
				_command.Parameters.AddWithValue("@LinPass", textLinPass.Text);
				_command.Parameters.AddWithValue("@FBLog", textFBLog.Text);
				_command.Parameters.AddWithValue("@FBPass", textFBPass.Text);
				_command.Parameters.AddWithValue("@TwitLog", textTwitLog.Text);
				_command.Parameters.AddWithValue("@TwitPass", textTwitPass.Text);
				_con.Open();
				_command.ExecuteNonQuery();
				Response.Redirect("adminusers.aspx", true);
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
				<%--<table cellpadding="0" cellspacing="0" class="maintbl1">
				<tr>
					<td class="tdleft">
						<uc1:leftpanel id="lpanel" runat="server" />
					</td>
					<td>
						<uc1:rightpanel id="rpanel" runat="server" />
					</td>
				</tr>
			</table>--%>
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
				<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
				<uc1:menu ID="menu" runat="server" />
				<div>
					<span class="spanLbl">
						<label for="textFirst">
							First Name:</label></span> <span>
								<asp:TextBox ID="textFirst" runat="server" MaxLength="50" CssClass="text" />
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textFirst"
									Display="Dynamic" ErrorMessage="First Name is required." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textLast">
							Last Name:</label></span> <span>
								<asp:TextBox ID="textLast" runat="server" MaxLength="50" CssClass="text" />
								<asp:RequiredFieldValidator ID="RequiredFieldValidatorLast" runat="server" ControlToValidate="textLast"
									Display="Dynamic" ErrorMessage="Last Name is required." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
							</span>
				</div>
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
								<asp:TextBox ID="textPassword" runat="server" MaxLength="20" CssClass="text" TextMode="Password" />
								<asp:RequiredFieldValidator ID="RequiredFieldValidatorPwd" runat="server" ControlToValidate="textPassword"
									Display="Dynamic" ErrorMessage="Password is required." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textPhone">
							Phone:</label></span> <span>
								<ew:MaskedTextBox ID="textPhone" runat="server" CssClass="text" Mask="(999) 999-9999"
									MaxLength="20" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></ew:MaskedTextBox>
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textFBLog">
							Facebook Login:</label></span> <span>
								<asp:TextBox ID="textFBLog" runat="server" MaxLength="50" CssClass="text" />
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textFBPass">
							Facebook Password:</label></span> <span>
								<asp:TextBox ID="textFBPass" runat="server" MaxLength="50" CssClass="text" TextMode="Password" />
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textLinLog">
							LinkedIn Login:</label></span> <span>
								<asp:TextBox ID="textLinLog" runat="server" MaxLength="50" CssClass="text" />
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textLinPass">
							LinkedIn Password:</label></span> <span>
								<asp:TextBox ID="textLinPass" runat="server" MaxLength="50" CssClass="text" TextMode="Password" />
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textTwitLog">
							Twitter Login:</label></span> <span>
								<asp:TextBox ID="textTwitLog" runat="server" MaxLength="50" CssClass="text" />
							</span>
				</div>
				<div>
					<span class="spanLbl">
						<label for="textTwitPass">
							Twitter Password:</label></span> <span>
								<asp:TextBox ID="textTwitPass" runat="server" MaxLength="50" CssClass="text" TextMode="Password" />
							</span>
				</div>
				<div>
					<span style="width: 400px; padding-left: 140px">
						<asp:ValidationSummary ID="validJob" runat="server" ShowMessageBox="true" />
						<asp:Button ID="buttonSubmit" runat="server" OnClick="buttonSubmit_Click" Style="margin-left: 100px"
							Text="Submit" />
						<input name="buttonReset" style="margin-left: 15px;" type="reset" value="Reset" />
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
