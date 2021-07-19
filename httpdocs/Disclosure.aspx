<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server" type="text/c#">
	protected void Page_Load(object sender, EventArgs e)
	{
		/*if (IsPostBack)
		{
			Response.Redirect("~/thankyou.aspx", true);
		}*/
		if (!IsPostBack)
		{
			textDate.Text = DateTime.Now.ToShortDateString();
		}
	}
	protected void buttonRegister_Click(object sender, EventArgs e)
	{
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
			else if (radioDecline.Checked)
			{
				_race = 8;
			}
			if (checkNoVet.Checked)
			{
				_veteran = "";
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
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("SaveOFCCP", _con) { CommandType = CommandType.StoredProcedure })
			{
				_command.Parameters.AddWithValue("@JobId", textID.Text);
				_command.Parameters.AddWithValue("@FirstName", textFirst.Text);
				_command.Parameters.AddWithValue("@Initials", textInit.Text);
				_command.Parameters.AddWithValue("@LastName", textLast.Text);
				_command.Parameters.AddWithValue("@Position", textPosition.Text);
				_command.Parameters.AddWithValue("@DateApplied", DateTime.Now);
				_command.Parameters.AddWithValue("@State", dropState.Text);
				_command.Parameters.AddWithValue("@Country", dropCountry.Text);
				_command.Parameters.AddWithValue("@Gender", _gender);
				_command.Parameters.AddWithValue("@Race", _race);
				_command.Parameters.AddWithValue("@Veteran", _veteran);
				_con.Open();
				_command.ExecuteNonQuery();
			}
		}
		/*string _str = "";
		if (_state == "")
		{* /
			_str = string.Format("Job Name: {1}{0}First Name: {2}{0}Last Name: {3}{0}Email: {4}{0}Phone: {5}{0}Text Resume: {0}{6}{0}Pivotal Administrator", Environment.NewLine, hidJobName.Value, textFirstName.Text, textLastName.Text, textEmail.Text, textPhone.Text, textResume.Text);
		/*}
		else
		{
			_str = string.Format("Job Name: {1}{0}First Name: {2}{0}Last Name: {3}{0}Email: {4}{0}Phone: {5}{0}Text Resume: {0}{6}{0}State: {7}{0}Country: {8}{0}Gender: {9}{0}Race: {10}{0}Veteran Status{11}{0}Pivotal Administrator", Environment.NewLine, hidJobName.Value, textFirstName.Text, textLastName.Text, textEmail.Text, textPhone.Text, textResume.Text, _state, _country, _gender, _race, _veteran);
		}
		using (SmtpClient _client = new SmtpClient("relay-hosting.secureserver.net", 25))
		{
			_client.Credentials = new NetworkCredential("info@the-pivotal.com", "thepivotal");
			/*_client.EnableSsl = true;* /
			using (MailMessage _msg = new MailMessage("info@the-pivotal.com","info@the-pivotal.com"))
			{
				/*_msg.To.Add(new MailAddress("info@the-pivotal.com"));
				_msg.From = new MailAddress("info@the-pivotal.com");* /
				if (_fileName != "")
				{
					_msg.Attachments.Add(new Attachment(_path));
				}
				_msg.Subject = "Job Application for: " + hidJobName.Value;
				_msg.Body = _str;
				_client.Send(_msg);
			}
		}*/
		Response.Redirect("thankyou.aspx", true);
	}
</script>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<title>Applicant Voluntary Self-Disclosure Submittal Form</title>
	<script src="scripts/jquery-1.4.4.js" type="text/javascript"></script>

	<link href="pivotal.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		body {
			margin: 15px;
		}
		td {
			vertical-align: top;
		}
	</style>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-33783303-1']);
		_gaq.push(['_trackPageview']);
  		(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	</script>
</head>

<body>

<form id="form1" runat="server">
	<table border="0" cellpadding="2" cellspacing="2" width="100%">
		<tr>
			<td>
				<div style="text-align: center"><img src="images/logo_form.jpg" width="283" height="95"  alt=""/></div>
			</td>
		</tr>
	</table>
	<h1>
		Applicant Voluntary Self-Disclosure Submittal Form
	</h1>
	The employers we represent are subject to certain governmental recordkeeping and reporting requirements for the administration 
	of civil rights laws and regulations. In order to comply with these laws, we invite the applicant to voluntarily self-identify 
	their race/ethnicity, sex and veteran status.&nbsp;&nbsp; Submission of the self identification information is voluntary 
	and refusal to provide it will not subject you to any adverse treatment or influence in the hiring process. The information 
	obtained will be kept confidential and may only be used in accordance with the provisions of applicable laws, executive 
	orders, and regulations, including those that require the information to be summarized and reported to the federal government 
	for civil rights enforcement. When reported, data will not identify <br />
	<br />
	<table border="0" cellpadding="5" cellspacing="5" width="100%">
		<tr>
			<td colspan="1"><strong>Job Requisition ID:</strong></td>
			<td>
				<asp:TextBox id="textID" runat="server" MaxLength="20"></asp:TextBox>
				<asp:RequiredFieldValidator id="reqID" runat="server" ControlToValidate="textID" Display="None" ErrorMessage="Job ID is required."></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td colspan="1"><strong>Full Name:</strong></td>
			<td>
				<asp:TextBox id="textLast" runat="server" MaxLength="100"></asp:TextBox>
				<asp:RequiredFieldValidator id="reqLast" runat="server" ControlToValidate="textLast" Display="None" ErrorMessage="Last Name is required."></asp:RequiredFieldValidator>
			</td>
			<td>
				<asp:TextBox id="textFirst" runat="server" MaxLength="100"></asp:TextBox>
				<asp:RequiredFieldValidator id="reqFirst" runat="server" ControlToValidate="textFirst" Display="None" ErrorMessage="First Name is required."></asp:RequiredFieldValidator>
			</td>
			<td>
				<asp:TextBox id="textInit" runat="server" MaxLength="5"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td colspan="1" style="line-height: 100%"></td>
			<td style="line-height: 100%">Last</td>
			<td style="line-height: 100%">First</td>
			<td style="line-height: 100%">Initials</td>
		</tr>
		<tr>
			<td colspan="1" style="line-height: 100%"></td>
			<td style="line-height: 100%">&nbsp;</td>
			<td style="line-height: 100%">&nbsp;</td>
			<td style="line-height: 100%">&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Position Applied For</strong></td>
			<td>
				<asp:TextBox id="textPosition" runat="server" MaxLength="200"></asp:TextBox>
				<asp:RequiredFieldValidator id="reqPos" runat="server" ControlToValidate="textPosition" Display="None" ErrorMessage="Position Applied is required."></asp:RequiredFieldValidator>
			</td>
			<td><strong>Date Applied:</strong></td>
			<td>
				<asp:TextBox id="textDate" runat="server" MaxLength="20" ReadOnly="true"></asp:TextBox>
				<asp:RequiredFieldValidator id="reqDate" runat="server" ControlToValidate="textDate" Display="None" ErrorMessage="Date Applied is required."></asp:RequiredFieldValidator>
				<asp:CompareValidator id="compDate" runat="server" ControlToValidate="textDate" Display="None" ErrorMessage="Enter a valid Date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
			</td>
		</tr>
		<tr>
			<td colspan="1"><strong>Location:</strong></td>
			<td>
				<asp:DropDownList id="dropState" runat="server">
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
			<td>
				<asp:DropDownList id="dropCountry" runat="server">
					<asp:ListItem Text="United States of America" Value="USA"/>				
				</asp:DropDownList>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					Gender:</h3>
			</td>
			<td colspan="3">
				<asp:RadioButton id="radioMale" runat="server" groupname="Gender" text="Male" />
				<asp:RadioButton id="radioFeMale" runat="server" groupname="Gender" text="Female" />
				<asp:RadioButton id="radioOther" runat="server" groupname="Gender" text="Others" />
				<asp:RadioButton id="radioRefuse" runat="server" checked="true" groupname="Gender" text="Declined to State" />
			</td>
		</tr>
	</table>
	<hr />
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td colspan="3">
				<h3>
					RACE/ETHNICITY</h3>
			</td>
		</tr>
		<tr>
			<td colspan="3"><strong>Please mark on box that describes the race/ethnicity category with which you primarily 
				indetify:</strong><br />
				<br />
			</td>
		</tr>
		<tr>
			<td style="width: 5%">
				<asp:RadioButton id="radioHispanic" runat="server" groupname="Race" />
			</td>
			<td style="width: 30%"><strong>Hispanic or Latino</strong></td>
			<td style="width: 60%">A person of Mexican, Puerto Rican, Cuban, Central or South American or other Spanish 
				culture or origin, regardless of ethnicity.A person of Mexican, Puerto Rican, Cuban, Central or South American 
				or other Spanish culture or origin, regardless of ethnicity. A person of Mexican, Puerto Rican, Cuban, Central 
				or South American or other Spanish culture or origin, regardless of ethnicity.<br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:RadioButton id="radioWhite" runat="server" groupname="Race" />
			</td>
			<td><strong>White</strong></td>
			<td>A person having origins in any of the original peoples of Europe, North Africa or the Middle East.<br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:RadioButton id="radioBlack" runat="server" groupname="Race" />
			</td>
			<td><strong>Black or African American</strong></td>
			<td>A person having origins in any of the black ethnic groups of Africa.<br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:RadioButton id="radioNative" runat="server" groupname="Race" />
			</td>
			<td><strong>Native Hawaiian or Other Pacific Islander</strong></td>
			<td>A person having origins in any of the peoples of Hawaii, Guam, Samoa, or other Pacific Islands.<br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:RadioButton id="radioAsian" runat="server" groupname="Race" />
			</td>
			<td><strong>Asian</strong></td>
			<td>A person having origins in any of the peoples of Hawaii, Indian Subcontinent, including, for example, Cambodia, 
				China, India, Japan, Korea, Malaysia, Pakistan, the Phillippine Islands, Thailand and Vietnam. <br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:RadioButton id="radioAlaska" runat="server" groupname="Race" />
			</td>
			<td><strong>American Indian or Alaska Native</strong></td>
			<td>A person having origins in any of the original peoples of North and South America (including Central America) 
				and who maintain tribal affiliation or community attachment. <br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:RadioButton id="radioTwo" runat="server" groupname="Race" />
			</td>
			<td><strong>Two or More Races (Not Hispanic or Latino)</strong></td>
			<td>All persons who identify with more than one of the five races listed above. <br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:RadioButton id="radioDecline" runat="server" checked="True" groupname="Race" />
			</td>
			<td><strong>Decline to state</strong></td>
			<td>&nbsp;<br />
				<br />
			</td>
		</tr>
		<tr>
			<td colspan="3"><hr />
				<h3>
					VETERAN STATUS – please check all that apply:</h3>
			</td>
		</tr>
		<tr>
			<td>
				<asp:CheckBox id="checkNoVet" runat="server"></asp:CheckBox>
			</td>
			<td><strong>No Veteran Status<br />
				<br />
				</strong></td>
			<td>&nbsp; </td>
		</tr>
		<tr>
			<td>
				<asp:CheckBox id="checkSpecial" runat="server"></asp:CheckBox>
			</td>
			<td><strong>Special Disabled Veteran</strong></td>
			<td>(A) A veteran who is entitled to compensation (or who, but for receipt of military retired pay, would be 
				entitled to compensation) under laws administered by the Dept. of Veteran Affairs for a disability rated 
				at 10 or 20% in the case of a veteran who has been determined to have a serious employment disability OR
				<br />
				<br />
				(B) A person who was discharged or released from active duty because of a service-connected disability
				<br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:CheckBox id="checkVietnam" runat="server"></asp:CheckBox>
			</td>
			<td><strong>Vietnam</strong></td>
			<td>A person who:<br />
				<br />
				(A) Served on active duty for a period of time more than 180 days, any part of which occurred between 8/10/64 
				and 5/07/75 and was discharged or released with other than a dishonorable discharge OR <br />
				<br />
				(B) Was discharged or released from active duty for a service connected disability if any part of such active 
				duty was performed between 8/10/64 and 5/07/75 OR <br />
				<br />
				(C) Served on active duty for more than 180 days and served in the Republic of Vietnam between 2/28/61 and 
				5/07/75. <br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				<asp:CheckBox id="checkOther" runat="server"></asp:CheckBox>
			</td>
			<td><strong>Other Protected Veteran</strong></td>
			<td>A veteran in one of the following groups:<br />
				<br />
				(A) Veterans who served in a “war”;<br />
				<br />
				(B) Veterans whose service in a campaign or expedition for which a campaign badge has been authorized or 
				an expeditionary medal has been awarded. This includes a number of engagements.
				<asp:CustomValidator id="customVet" runat="server" ClientValidationFunction="checkVet" Display="None" ErrorMessage="Select at least one Veteran Status." ValidateEmptyText="True"></asp:CustomValidator>
				<br />
				<br />
			</td>
		</tr>
	</table>
	<div>
		<strong>Disclosure:</strong><br />
		For each applicant where the prospective employer needs us to provide documentation and data related to OFCCP, we 
		request these applicants to provide this data by filling form -OFCCP (Applicant Self- Disclosure Form) along with 
		their application for the job requisition they were solicited or applied for. The data collected for this purpose 
		will be kept confidential and may only be used in accordance of the permissible laws, executive orders and regulations, 
		including those require these information to be summarized and reported to the federal government for civil rights 
		enforcement. When reported data will not identify any specific individual.
	</div>
	<div style="margin-top: 20px; margin-bottom: 20px">
		<asp:CheckBox id="checkIAgree" runat="server" text="I have read the above disclosure statement and I comply to the same." />
		<asp:CustomValidator id="customAgree" runat="server" ClientValidationFunction="checkAgree" Display="None" ErrorMessage="Please agree to the disclosure statement." ValidateEmptyText="True"></asp:CustomValidator>
	</div>
	<div style="text-align: center; width: 100%">
		<asp:Button id="buttonSubmit" runat="server" style="font-size: 12pt; font-weight: bold" Text="Submit" onclick="buttonRegister_Click"></asp:Button>
		<input style="font-size: 12pt; font-weight: bold" type="reset" value="Reset" />
		<asp:ValidationSummary id="validAll" runat="server" headertext="The form could not be submitted due to the following errors:" showmessagebox="True" showsummary="False" />
	</div>
</form>
<script type="text/javascript">
	function checkRace(sender, args)
	{
		if ($('#checkHispanic').attr('checked') || $('#checkWhite').attr('checked') || $('#checkBlack').attr('checked') || $('#checkNative').attr('checked') || $('#checkAsian').attr('checked') || $('#checkAlaska').attr('checked') || $('#checkTwo').attr('checked') || $('#checkDecline').attr('checked'))
		{
			args.IsValid = true;
		}
		else
		{
			args.IsValid = false;
		}
	}
	function checkVet(sender, args)
	{
		if ($('#checkNoVet').attr('checked') || $('#checkSpecial').attr('checked') || $('#checkVietnam').attr('checked') || $('#checkOther').attr('checked'))
		{
			args.IsValid = true;
		}
		else
		{
			args.IsValid = false;
		}
	}
	function checkAgree(sender, args)
	{
		args.IsValid = $('#checkIAgree').attr('checked');
	}
	</script>

</body>

</html>
