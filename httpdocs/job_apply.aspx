<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
	Namespace="eWorld.UI" TagPrefix="ew" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private int id;
	void Page_Init(object sender, EventArgs e)
	{
		Int32.TryParse(Request.QueryString["id"], out id);
		if (IsPostBack || string.IsNullOrWhiteSpace(Request.QueryString["id"]))
		{
			return;
		}
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("GetJob", _con)
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
						hTitle.InnerHtml = string.Concat("[", _read.GetString(0), "] - ", _read.GetString(1));
						hidJobName.Value = _read.GetString(1);
						//divCode.InnerHtml = _read.GetString(0);
						divPosted.InnerHtml = "<strong>Date Posted:</strong> " + _read.GetDateTime(8).ToString("dddd, MMMM dd, yyyy");
						divLocation.InnerHtml = "<span>Location: </span>" + _read.GetString(3);
						divDesc.InnerHtml = _read.GetString(2);
						if (_read.GetBoolean(10))
						{
							continue;
						}
						trVoluntaryHead.Visible = false;
						trVoluntaryGender.Visible = false;
						trVoluntaryState.Visible = false;
						trVoluntaryCtry.Visible = false;
						trVoluntaryRaceVet.Visible = false;
						trVoluntaryDisclosure.Visible = false;
						trVoluntaryAgree.Visible = false;
					}
				}
			}
		}
	}
	void buttonRegister_Click(object sender, EventArgs e)
	{
		string _fileName = "";
		string _path = "";
		if (fileUpload.HasFile)
		{
			_fileName = fileUpload.FileName;
			_path = Server.MapPath("~/Resumes/" + _fileName);
			fileUpload.SaveAs(_path);
		}
		int _gender = 4, _race = 8;
		string _state = "", _country = "USA";
		string _veteran = "";
		try
		{
			_state = dropState.Text;
			_country = dropCountry.Text;
			if (radioMale.Checked)
			{
				_gender = 1;
			}
			else if (radioFeMale.Checked)
			{
				_gender = 2;
			}
			else if (radioOther.Checked)
			{
				_gender = 3;
			}
			else if (radioRefuse.Checked)
			{
				_gender = 4;
			}
			if (radioHispanic.Checked)
			{
				_race = 1;
			}
			else if (radioWhite.Checked)
			{
				_race = 2;
			}
			else if (radioBlack.Checked)
			{
				_race = 3;
			}
			else if (radioNative.Checked)
			{
				_race = 4;
			}
			else if (radioAsian.Checked)
			{
				_race = 5;
			}
			else if (radioAlaska.Checked)
			{
				_race = 6;
			}
			else if (radioTwo.Checked)
			{
				_race = 7;
			}
			else if (radioRaceOthers.Checked)
			{
				_race = 10;
			}
			else if (radioUnknown.Checked)
			{
				_race = 9;
			}
			else
			{
				_race = 8;
			}
			if (checkNoVet.Checked)
			{
				_veteran = "";
			}
			else if (checkUnknown.Checked)
			{
				_veteran = "U";
			}
			else if (checkDeclined.Checked)
			{
				_veteran = "D";
			}
			else
			{
				if (checkSpecial.Checked)
				{
					if (_veteran == "")
					{
						_veteran = "S";
					}
					else
					{
						_veteran += "S";
					}
				}
				if (checkVietnam.Checked)
				{
					if (_veteran == "")
					{
						_veteran = "V";
					}
					else
					{
						_veteran += "V";
					}
				}
				if (checkOther.Checked)
				{
					if (_veteran == "")
					{
						_veteran = "O";
					}
					else
					{
						_veteran += "O";
					}
				}
			}
		}
		catch
		{
		}
		string _jobCode = "", _jobTitle = "", _clientCode = "", _name = "", _emailId = "info@agreatis.com";
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("ApplyJob", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_command.Parameters.AddWithValue("@JobId", id);
				_command.Parameters.AddWithValue("@FirstName", textFirstName.Text);
				_command.Parameters.AddWithValue("@Initials", textInit.Text);
				_command.Parameters.AddWithValue("@LastName", textLastName.Text);
				_command.Parameters.AddWithValue("@Email", textEmail.Text);
				_command.Parameters.AddWithValue("@Phone", textPhone.Text);
				_command.Parameters.AddWithValue("@FilePath", _fileName == "" ? (object)DBNull.Value : _fileName);
				_command.Parameters.AddWithValue("@TextResume", textResume.Text == "" ? (object)DBNull.Value : textResume.Text);
				_command.Parameters.AddWithValue("@State", _state);
				_command.Parameters.AddWithValue("@Country", _country);
				_command.Parameters.AddWithValue("@Gender", _gender);
				_command.Parameters.AddWithValue("@Race", _race);
				_command.Parameters.AddWithValue("@Veteran", _veteran);
				_con.Open();
				using (SqlDataReader _read = _command.ExecuteReader())
				{
					if (_read.HasRows)
					{
						while (_read.Read())
						{
							_jobCode = _read.GetString(0);
							_jobTitle = _read.GetString(1);
							_clientCode = _read.GetString(2);
							_name = _read.GetString(3);
							_emailId = _read.GetString(4);
						}
					}
				}
			}
		}
		if (_emailId == "")
		{
			_emailId = "info@the-pivotal.com";
		}
		string _mailText;
		using (StreamReader _stream = File.OpenText(Server.MapPath("Mail.txt")))
		{
			_mailText = _stream.ReadToEnd();
		}
		string _str = string.Format(_mailText, _name, _jobCode, _jobTitle, _clientCode, textFirstName.Text + " " + textLastName.Text, textEmail.Text, textPhone.Text, textResume.Text.Replace(Environment.NewLine, "<br/>"));
		using (SmtpClient _client = new SmtpClient("relay-hosting.secureserver.net", 25))
		{
			//_client.Credentials = new NetworkCredential("info@the-pivotal.com", "thepivotal");
			using (MailMessage _msg = new MailMessage("info@agreatis.com", _emailId))
			{
				_msg.IsBodyHtml = true;
				/*_msg.To.Add(new MailAddress("info@agreatis.com"));
				_msg.From = new MailAddress("info@the-pivotal.com");*/
				if (_fileName != "")
				{
					_msg.Attachments.Add(new Attachment(_path));
				}
				_msg.Subject = string.Concat("Job Application for: [", _jobCode, "]: ", _jobTitle);
				_msg.Body = _str;
				_client.Send(_msg);
			}
		}
		Response.Redirect("thankyou.aspx", true);
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
	<title>Contents</title>
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











        .tdContent div span
        {
            font-weight: normal;
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
				<input id="hidJobName" runat="server" type="hidden" />
				<div style="padding: 20px;">
					<h3 id="hTitle" runat="server" class="dTit">
					</h3>
					<div id="divPosted" runat="server" class="dDat">
					</div>
					<div id="divLocation" runat="server" class="dLoc">
					</div>
					<div id="divDesc" runat="server" class="dDesc" style="border-bottom: 1px solid #bbb; width: 96%; padding-bottom: 20px;">
					</div>
					<table id="tableReg" runat="server" class="Events_Reg_Table">
						<tr>
							<td id="Register" runat="server" class="pad7" colspan="2">Please enter the information below. 
								Items marked with a red <span class="red">*</span> are mandatory. </td>
						</tr>
						<tr>
							<td class="pad7 td30">
								<asp:Label ID="Label1" runat="server" AssociatedControlID="textFirstName"><span class="red">* </span>First Name:</asp:Label>
							</td>
							<td class="pad7 td70">
								<asp:TextBox ID="textFirstName" runat="server" CssClass="text" MaxLength="75"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textFirstName" CssClass="validator" Display="Dynamic" ErrorMessage="Enter First Name." ToolTip="Enter First Name.">*</asp:RequiredFieldValidator>
							</td>
						</tr>
						<tr>
							<td class="pad7 td30">
								<asp:Label runat="server" AssociatedControlID="textInit">Initials:</asp:Label>
							</td>
							<td class="pad7 td70">
								<asp:TextBox ID="textInit" runat="server" CssClass="text" MaxLength="5" Width="20%"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="pad7 td30">
								<asp:Label ID="Label12" runat="server" AssociatedControlID="textLastName"><span class="red">* </span>Last Name:</asp:Label>
							</td>
							<td class="pad7 td70">
								<asp:TextBox ID="textLastName" runat="server" CssClass="text" MaxLength="75"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="textLastName" CssClass="validator" Display="Dynamic" ErrorMessage="Enter Last Name." ToolTip="Enter Last Name.">*</asp:RequiredFieldValidator>
							</td>
						</tr>
						<tr>
							<td class="pad7 td30">
								<asp:Label ID="Label2" runat="server" AssociatedControlID="textEmail"><span class="red">* </span>E-mail:</asp:Label>
							</td>
							<td class="pad7 td70">
								<asp:TextBox ID="textEmail" runat="server" CssClass="text" MaxLength="150"></asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textEmail" CssClass="validator" Display="Dynamic" ErrorMessage="Enter E-Mail Address." ToolTip="Enter E-Mail Address.">*</asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textEmail" CssClass="validator" Display="Dynamic" ErrorMessage="Invalid EMail, please enter again." ToolTip="Invalid EMail, please enter again." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
							</td>
						</tr>
						<%--<tr>
							<td class="pad7" colspan="2"><em style="margin-left: 30px;">Please enter the phone number in 
								the format (000) 000-0000</em> </td>
						</tr>--%>
						<tr>
							<td class="pad7 td30">
								<asp:Label ID="Label9" runat="server" AssociatedControlID="textPhone"><span class="red">* </span>Phone:</asp:Label>
							</td>
							<td class="pad7 td70">
								<ew:MaskedTextBox ID="textPhone" runat="server" CssClass="text" Mask="(999) 999-9999" MaxLength="20" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></ew:MaskedTextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="textPhone" CssClass="validator" Display="Dynamic" ErrorMessage="Enter Phone Number." ToolTip="Enter Phone Number.">*</asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="textPhone" CssClass="validator" Display="Dynamic" ErrorMessage="Invalid Phone Number. Please enter again." ToolTip="Invalid Phone Number. Please enter again." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
							</td>
						</tr>
						<tr>
							<td class="pad7 td30">
								<asp:Label ID="Label10" runat="server" AssociatedControlID="fileUpload"><span class="red">* </span>Upload Resume:</asp:Label>
							</td>
							<td class="pad7 td70">
								<asp:FileUpload id="fileUpload" runat="server" cssclass="text" size="50" style="width: 400px" />
								<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="checkResume" ControlToValidate="fileUpload" Display="Dynamic" ErrorMessage="Select a resume to upload or paste your resume." Text="*" ToolTip="Select a resume to upload or paste your resume." ValidateEmptyText="True"></asp:CustomValidator>
							</td>
						</tr>
						<tr>
							<td class="pad7" colspan="2" style="text-align: center; font-weight: bold;">OR </td>
						</tr>
						<tr>
							<td class="pad7 td30" style="vertical-align: top;">
								<asp:Label ID="Label11" runat="server" AssociatedControlID="textResume">Paste your Resume:</asp:Label>
							</td>
							<td class="pad7 td70">
								<asp:TextBox ID="textResume" runat="server" CssClass="text" Rows="15" TextMode="MultiLine" Width="100%"></asp:TextBox>
							</td>
						</tr>
						<tr id="trVoluntaryHead" runat="server">
							<td class="pad7" colspan="2"><hr />
								<h6 style="font-size: 12pt;">
									<span class="red">* </span>Applicant Voluntary Self-Disclosure Information - OFCCP Compliance 
									Requirement</h6>
							</td>
						</tr>
						<tr id="trVoluntaryDisclosure" runat="server">
							<td class="pad7" colspan="2" style="text-align: left"><strong>Disclosure:</strong><br />
								For each applicant where the prospective employer needs us to provide documentation and 
								data related to OFCCP, we request these applicants to provide this data by filling form 
								-OFCCP (Applicant Self- Disclosure Form) along with their application for the job requisition 
								they were solicited or applied for. The data collected for this purpose will be kept confidential 
								and may only be used in accordance of the permissible laws, executive orders and regulations, 
								including those require these information to be summarized and reported to the federal government 
								for civil rights enforcement. When reported data will not identify any specific individual.
							</td>
						</tr>
						<tr id="trVoluntaryGender" runat="server">
							<td class="pad7 td30" style="vertical-align: top; padding-top: 25px;">
								<asp:Label runat="server" AssociatedControlID="radioRefuse"><span class="red">* </span>Gender:</asp:Label>
							</td>
							<td class="pad7 td70" style="vertical-align: top; padding-top: 25px;">
								<asp:RadioButton id="radioMale" runat="server" font-bold="false" groupname="Gender" text="Male" />
								<asp:RadioButton id="radioFeMale" runat="server" font-bold="false" groupname="Gender" text="Female" />
								<asp:RadioButton id="radioOther" runat="server" font-bold="false" groupname="Gender" text="Others" />
								<asp:RadioButton id="radioRefuse" runat="server" checked="true" font-bold="false" groupname="Gender" text="Declined to State" />
							</td>
						</tr>
						<tr id="trVoluntaryState" runat="server">
							<td class="pad7 td30" style="vertical-align: top;">
								<asp:Label runat="server" AssociatedControlID="dropState"><span class="red">* </span>State:</asp:Label>
							</td>
							<td class="pad7 td70" style="vertical-align: top;">
								<asp:DropDownList ID="dropState" runat="server">
									<asp:ListItem Value="AL">Alabama</asp:ListItem>
									<asp:ListItem Value="AK">Alaska</asp:ListItem>
									<asp:ListItem Value="AZ">Arizona</asp:ListItem>
									<asp:ListItem Value="AR">Arkansas</asp:ListItem>
									<asp:ListItem Value="CA">California</asp:ListItem>
									<asp:ListItem Value="CO">Colorado</asp:ListItem>
									<asp:ListItem Value="CT">Connecticut</asp:ListItem>
									<asp:ListItem Value="DC">District of Columbia</asp:ListItem>
									<asp:ListItem Value="DE">Delaware</asp:ListItem>
									<asp:ListItem Value="FL">Florida</asp:ListItem>
									<asp:ListItem Value="GA">Georgia</asp:ListItem>
									<asp:ListItem Value="HI">Hawaii</asp:ListItem>
									<asp:ListItem Value="ID">Idaho</asp:ListItem>
									<asp:ListItem Value="IL">Illinois</asp:ListItem>
									<asp:ListItem Value="IN">Indiana</asp:ListItem>
									<asp:ListItem Value="IA">Iowa</asp:ListItem>
									<asp:ListItem Value="KS">Kansas</asp:ListItem>
									<asp:ListItem Value="KY">Kentucky</asp:ListItem>
									<asp:ListItem Value="LA">Louisiana</asp:ListItem>
									<asp:ListItem Value="ME">Maine</asp:ListItem>
									<asp:ListItem Value="MD">Maryland</asp:ListItem>
									<asp:ListItem Value="MA">Massachusetts</asp:ListItem>
									<asp:ListItem Value="MI">Michigan</asp:ListItem>
									<asp:ListItem Value="MN">Minnesota</asp:ListItem>
									<asp:ListItem Value="MS">Mississippi</asp:ListItem>
									<asp:ListItem Value="MO">Missouri</asp:ListItem>
									<asp:ListItem Value="MT">Montana</asp:ListItem>
									<asp:ListItem Value="NE">Nebraska</asp:ListItem>
									<asp:ListItem Value="NV">Nevada</asp:ListItem>
									<asp:ListItem Value="NH">New Hampshire</asp:ListItem>
									<asp:ListItem Value="NJ">New Jersey</asp:ListItem>
									<asp:ListItem Value="NM">New Mexico</asp:ListItem>
									<asp:ListItem Value="NY">New York</asp:ListItem>
									<asp:ListItem Value="NC">North Carolina</asp:ListItem>
									<asp:ListItem Value="ND">North Dakota</asp:ListItem>
									<asp:ListItem Value="OH">Ohio</asp:ListItem>
									<asp:ListItem Value="OK">Oklahoma</asp:ListItem>
									<asp:ListItem Value="OR">Oregon</asp:ListItem>
									<asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
									<asp:ListItem Value="RI">Rhode Island</asp:ListItem>
									<asp:ListItem Value="SC">South Carolina</asp:ListItem>
									<asp:ListItem Value="SD">South Dakota</asp:ListItem>
									<asp:ListItem Value="TN">Tennessee</asp:ListItem>
									<asp:ListItem Value="TX">Texas</asp:ListItem>
									<asp:ListItem Value="UT">Utah</asp:ListItem>
									<asp:ListItem Value="VT">Vermont</asp:ListItem>
									<asp:ListItem Value="VA">Virginia</asp:ListItem>
									<asp:ListItem Value="WA">Washington</asp:ListItem>
									<asp:ListItem Value="WV">West Virginia</asp:ListItem>
									<asp:ListItem Value="WI">Wisconsin</asp:ListItem>
									<asp:ListItem Value="WY">Wyoming</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr id="trVoluntaryCtry" runat="server">
							<td class="pad7 td30" style="vertical-align: top;">
								<asp:Label runat="server" AssociatedControlID="dropCountry"><span class="red">* </span>Country:</asp:Label>
							</td>
							<td class="pad7 td70">
								<asp:DropDownList ID="dropCountry" runat="server">
									<asp:ListItem Value="USA">United States of America</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr id="trVoluntaryRaceVet" runat="server">
							<td class="pad7" colspan="2">
								<table cellpadding="0" cellspacing="0" style="margin-top: -0px; border: none; width: 100%">
									<tr>
										<td colspan="3">
											<h6 style="font-size: 10pt; font-style: italic">
												<span class="red">* </span>Race/Ethnicity &#8211; Please mark on box that 
												describes the race/ethnicity category with which you primarily indetify:</h6>
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top; padding-top: 35px;">
											<asp:RadioButton id="radioHispanic" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; padding-top: 35px; text-align: left;">
											<strong>Hispanic or Latino</strong> </td>
										<td style="width: 60%; vertical-align: top; padding-top: 35px; text-align: left;">
											A person of Mexican, Puerto Rican, Cuban, Central or South American or other 
											Spanish culture or origin, regardless of ethnicity.A person of Mexican, Puerto 
											Rican, Cuban, Central or South American or other Spanish culture or origin, 
											regardless of ethnicity. A person of Mexican, Puerto Rican, Cuban, Central or 
											South American or other Spanish culture or origin, regardless of ethnicity.<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioWhite" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>White</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the original peoples of Europe, North Africa or the Middle East.<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioBlack" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Black or 
											African American</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the black ethnic groups of Africa.<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioNative" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Native Hawaiian 
											or Other Pacific Islander</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the peoples of Hawaii, Guam, Samoa, or other Pacific Islands.<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioAsian" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Asian</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the peoples of Hawaii, Indian Subcontinent, including, for example, 
											Cambodia, China, India, Japan, Korea, Malaysia, Pakistan, the Phillippine Islands, 
											Thailand and Vietnam. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioAlaska" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>American 
											Indian or Alaska Native</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the original peoples of North and South America (including Central 
											America) and who maintain tribal affiliation or community attachment. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioTwo" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Two or More 
											Races (Not Hispanic or Latino)</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">All persons who identify 
											with more than one of the five races listed above. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioUnknown" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Unknown</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left;">&nbsp; <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioRaceOthers" runat="server" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Others</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left;">All persons who identify 
											with any race other than listed above. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:RadioButton id="radioDecline" runat="server" checked="True" groupname="Race" />
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Decline to 
											state</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">&nbsp;<br />
											<br />
										</td>
									</tr>
									<tr>
										<td colspan="3"><hr />
											<h6 style="font-size: 10pt; font-style: italic">
												<span class="red">* </span>VETERAN STATUS &#8211; please check all that 
												apply:</h6>
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top; padding-top: 35px;">
											<asp:CheckBox ID="checkNoVet" runat="server"></asp:CheckBox>
										</td>
										<td style="width: 30%; vertical-align: top; padding-top: 35px; text-align: left;">
											<strong>No Veteran Status<br />
											<br />
											</strong></td>
										<td style="width: 60%; vertical-align: top; padding-top: 35px;">&nbsp; </td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:CheckBox ID="checkSpecial" runat="server"></asp:CheckBox>
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Special Disabled 
											Veteran</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left">(A) A veteran who 
											is entitled to compensation (or who, but for receipt of military retired pay, 
											would be entitled to compensation) under laws administered by the Dept. of Veteran 
											Affairs for a disability rated at 10 or 20% in the case of a veteran who has 
											been determined to have a serious employment disability OR <br />
											<br />
											(B) A person who was discharged or released from active duty because of a service-connected 
											disability <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:CheckBox ID="checkVietnam" runat="server"></asp:CheckBox>
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Vietnam</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left">A person who:<br />
											<br />
											(A) Served on active duty for a period of time more than 180 days, any part 
											of which occurred between 8/10/64 and 5/07/75 and was discharged or released 
											with other than a dishonorable discharge OR <br />
											<br />
											(B) Was discharged or released from active duty for a service connected disability 
											if any part of such active duty was performed between 8/10/64 and 5/07/75 OR
											<br />
											<br />
											(C) Served on active duty for more than 180 days and served in the Republic 
											of Vietnam between 2/28/61 and 5/07/75. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:CheckBox ID="checkOther" runat="server"></asp:CheckBox>
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Other Protected 
											Veteran</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A veteran in one 
											of the following groups:<br />
											<br />
											(A) Veterans who served in a &#8220;war&#8221;;<br />
											<br />
											(B) Veterans whose service in a campaign or expedition for which a campaign 
											badge has been authorized or an expeditionary medal has been awarded. This includes 
											a number of engagements.
											<asp:CustomValidator ID="customVet" runat="server" ClientValidationFunction="checkVet" Display="None" ErrorMessage="Select at least one Veteran Status." ValidateEmptyText="True"></asp:CustomValidator>
											<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:CheckBox ID="checkUnknown" runat="server"></asp:CheckBox>
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Unknown</strong></td>
										<td style="width: 60%; vertical-align: top; text-align: left;"><br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											<asp:CheckBox ID="checkDeclined" runat="server"></asp:CheckBox>
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Declined 
											to State</strong></td>
										<td style="width: 60%; vertical-align: top; text-align: left;"><br />
											<br />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr id="trVoluntaryAgree" runat="server">
							<td class="pad7" colspan="2" style="text-align: left">
								<asp:CheckBox id="checkIAgree" runat="server" text="&lt;span class='red'&gt;* &lt;/span&gt;I have read the above disclosure statement and I comply to the same." />
								<asp:CustomValidator ID="customAgree" runat="server" ClientValidationFunction="checkAgree" Display="None" ErrorMessage="Please agree to the disclosure statement." ValidateEmptyText="True"></asp:CustomValidator>
							</td>
						</tr>
						<tr>
							<td class="pad7 center" colspan="2">
								<asp:ValidationSummary id="ValidationSummary1" runat="server" cssclass="validator" showmessagebox="True" showsummary="False" width="100%" />
								<asp:Button id="buttonRegister" runat="server" onclick="buttonRegister_Click" text="Apply for the Job" />
								<input id="buttonReset" type="reset" value="Reset" /> </td>
						</tr>
					</table>
				</div>
				<script type="text/javascript">
					function checkResume(sender, args) {
						if (document.getElementById("textResume").value == "" && document.getElementById("fileUpload").value == "") {
							args.IsValid = false;
						}
						else {
							args.IsValid = true;
						}
					}
					function checkRace(sender, args) {
						if ($('#checkHispanic').attr('checked') || $('#checkWhite').attr('checked') || $('#checkBlack').attr('checked') || $('#checkNative').attr('checked') || $('#checkAsian').attr('checked') || $('#checkAlaska').attr('checked') || $('#checkTwo').attr('checked') || $('#checkDecline').attr('checked')) {
							args.IsValid = true;
						}
						else {
							args.IsValid = false;
						}
					}
					function checkVet(sender, args) {
						if ($('#checkNoVet').attr('checked') || $('#checkSpecial').attr('checked') || $('#checkVietnam').attr('checked') || $('#checkOther').attr('checked') || $('#chgeckUnknown').attr('checked') || $('#checkDeclined').attr('checked')) {
							args.IsValid = true;
						}
						else {
							args.IsValid = false;
						}
					}
					function checkAgree(sender, args) {
						args.IsValid = $('#checkIAgree').attr('checked');
					}
				</script>
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
