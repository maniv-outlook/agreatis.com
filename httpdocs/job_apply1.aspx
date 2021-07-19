<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.Net" %>
<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
	Namespace="eWorld.UI" TagPrefix="ew" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private int _id = 0;
	void Page_Init(object sender, EventArgs e)
	{
		Int32.TryParse(Request.QueryString["id"], out _id);
		if (!IsPostBack && !string.IsNullOrWhiteSpace(Request.QueryString["id"]))
		{
			using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
			{
				using (SqlCommand _command = new SqlCommand("GetJob", _con) { CommandType = CommandType.StoredProcedure })
				{
					_command.Parameters.AddWithValue("@Id", _id);
					_con.Open();
					using (SqlDataReader _read = _command.ExecuteReader())
					{
						while (_read.Read())
						{
							hTitle.InnerHtml = string.Concat("[", _read.GetString(0), "] - ", _read.GetString(1));
							hidJobName.Value = _read.GetString(1);
							//divCode.InnerHtml = _read.GetString(0);
							divPosted.InnerHtml = _read.GetDateTime(8).ToString("dddd, MMMM dd, yyyy");
							divLocation.InnerHtml = "<span>Location: </span>" + _read.GetString(3);
							divDesc.InnerHtml = _read.GetString(2);
						}
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
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("ApplyJob", _con) { CommandType = CommandType.StoredProcedure })
			{
				_command.Parameters.AddWithValue("@JobId", _id);
				_command.Parameters.AddWithValue("@FirstName", textFirstName.Text);
				_command.Parameters.AddWithValue("@LastName", textLastName.Text);
				_command.Parameters.AddWithValue("@Email", textEmail.Text);
				_command.Parameters.AddWithValue("@Phone", textPhone.Text);
				_command.Parameters.AddWithValue("@FilePath", _fileName == "" ? (object)DBNull.Value : _fileName);
				_command.Parameters.AddWithValue("@TextResume", textResume.Text == "" ? (object)DBNull.Value : textResume.Text);
				_con.Open();
				_command.ExecuteNonQuery();
			}
		}
		string _str = string.Format("Job Name: {1}{0}First Name: {2}{0}Last Name: {3}{0}Email: {4}{0}Phone: {5}{0}Text Resume: {0}{6}{0}Titan Administrator", Environment.NewLine, hidJobName.Value, textFirstName.Text, textLastName.Text, textEmail.Text, textPhone.Text, textResume.Text);
		using (SmtpClient _client = new SmtpClient("smtp.gmail.com", 587))
		{
			_client.Credentials = new NetworkCredential("info@titan-techs.com", "netage123");
			_client.EnableSsl = true;
			using (MailMessage _msg = new MailMessage())
			{
				_msg.To.Add(new MailAddress("info@titan-techs.com"));
				_msg.From = new MailAddress("info@titan-techs.com");
				if (_fileName != "")
				{
					_msg.Attachments.Add(new Attachment(_path));
				}
				_msg.Subject = "Job Application for: " + hidJobName.Value;
				_msg.Body = _str;
				_client.Send(_msg);
			}
		}
		Response.Redirect("thankyouapply.aspx", true);
	}
</script>
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/home.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TITAN TECHNOLOGIES</title>
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/titan_bckg_main2_img.jpg);
	background-repeat:repeat-x;

}
-->
</style>
<link href="titan.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-29440710-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script></head>
<body>
<table width="984" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td style="background-image:url(images/titan_top_main2_img.jpg); background-repeat:no-repeat; height:152px; min-height:152px; width:984px"><img src="images/trans.png" width="984" height="152" border="0" usemap="#Map" />
      <map name="Map" id="Map">
        <area shape="rect" coords="760,74,863,106" href="contact_us.aspx" alt="Contact Us" />
        <area shape="rect" coords="250,74,325,106" href="index.aspx" alt="Home" />
        <area shape="rect" coords="329,74,431,106" href="company.aspx" alt="Company" />
        <area shape="rect" coords="439,74,535,106" href="services.aspx" alt="Services" />
        <area shape="rect" coords="540,74,635,106" href="careers.aspx" alt="Careers" />
        <area shape="rect" coords="648,74,751,106" href="login.aspx" alt="My Titan" />
        <area shape="rect" coords="79,34,211,147" href="index.aspx" alt="TITAN TECHNOLOGIES" />
      </map></td>
  </tr>
  <tr>
    <td style="background-image:url(images/titan_mid_main2_img.jpg); background-repeat:repeat">
<table width="984" border="0" cellspacing="0" cellpadding="0"><tr><td style="vertical-align:top"><div class="tdHead" style="width:244px; vertical-align:top"><h2><!-- InstanceBeginEditable name="EditRegion2" -->
									Careers<!-- InstanceEndEditable --></h2></div><div style="vertical-align:top; width:244px"><!-- InstanceBeginEditable name="Menu" -->
								<table width="240px" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td style="width: 22px">&nbsp;
											
										</td>
										<td class="tdContent">
											<h5>
												<a href="aboutus.aspx">About Us</a></h5>
										</td>
									</tr>
									<tr>
										<td style="width: 22px">&nbsp;
											
										</td>
										<td class="tdContent">
											<a href="news.aspx">News</a>
										</td>
									</tr>
									<tr>
										<td style="width: 22px">&nbsp;
											
										</td>
										<td class="tdContent">
											<a href="investors.aspx">Investors</a>
										</td>
									</tr>
									<tr>
										<td style="width: 22px">&nbsp;
											
										</td>
										<td class="tdContent highlightMenu">
											Careers
										</td>
									</tr>
									<tr>
										<td style="width: 22px">&nbsp;
											
										</td>
										<td class="tdContent">
											<a href="contact_us.aspx">Contact Us</a>
										</td>
									</tr>
									<tr>
										<td style="width: 22px">&nbsp;
											
										</td>
										<td class="tdContent">
											<a href="login.aspx">My Titan</a>
										</td>
									</tr>
								</table>
								<!-- InstanceEndEditable --></div></td><td style="width:740px; vertical-align:top; padding-top:10px"><div style="margin-bottom:10px; width:100%; text-align:left"><asp:SiteMapPath ID="siteMap" runat="server"  NodeStyle-CssClass="nodestyle" CurrentNodeStyle-CssClass="currentnodestyle"></asp:SiteMapPath></div><!-- InstanceBeginEditable name="RIGHT IMAGE" -->
							<form id="form1" runat="server">
							<input type="hidden" id="hidJobName" runat="server" />
							<div style="padding: 20px;">
								<h3 id="hTitle" runat="server" class="dTit">
								</h3>
								<div id="divPosted" runat="server" class="dDat">
								</div>
								<div id="divLocation" runat="server" class="dLoc">
								</div>
								<div id="divDesc" runat="server" class="dDesc" style="border-bottom: 1px solid #bbb;
									width: 96%; padding-bottom: 20px;">
								</div>
								<table id="tableReg" runat="server" class="Events_Reg_Table">
									<tr>
										<td id="Register" runat="server" colspan="2" class="pad7">
											Please enter the information below. Items marked with a red <span class="red">*</span>
											are mandatory.
										</td>
									</tr>
									<tr>
										<td class="pad7 td30">
											<asp:Label ID="Label1" runat="server" AssociatedControlID="textFirstName"><span class="red">* </span>First Name:</asp:Label>
										</td>
										<td class="pad7 td70">
											<asp:TextBox ID="textFirstName" runat="server" CssClass="text" MaxLength="75"></asp:TextBox>
											<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator1" runat="server"
												ErrorMessage="Enter First Name." ControlToValidate="textFirstName" Display="Dynamic"
												ToolTip="Enter First Name.">*</asp:RequiredFieldValidator>
										</td>
									</tr>
									<tr>
										<td class="pad7 td30">
											<asp:Label ID="Label12" runat="server" AssociatedControlID="textLastName"><span class="red">* </span>Last Name:</asp:Label>
										</td>
										<td class="pad7 td70">
											<asp:TextBox ID="textLastName" runat="server" CssClass="text" MaxLength="75"></asp:TextBox>
											<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="textLastName"
												CssClass="validator" Display="Dynamic" ErrorMessage="Enter Last Name." ToolTip="Enter Last Name.">*</asp:RequiredFieldValidator>
										</td>
									</tr>
									<tr>
										<td class="pad7 td30">
											<asp:Label ID="Label2" runat="server" AssociatedControlID="textEmail"><span class="red">* </span>E-mail:</asp:Label>
										</td>
										<td class="pad7 td70">
											<asp:TextBox CssClass="text" ID="textEmail" runat="server" MaxLength="150"></asp:TextBox>
											<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator2" runat="server"
												ErrorMessage="Enter E-Mail Address." ControlToValidate="textEmail" Display="Dynamic"
												ToolTip="Enter E-Mail Address.">*</asp:RequiredFieldValidator>
											<asp:RegularExpressionValidator CssClass="validator" ID="RegularExpressionValidator1"
												runat="server" ErrorMessage="Invalid EMail, please enter again." ControlToValidate="textEmail"
												Display="Dynamic" ToolTip="Invalid EMail, please enter again." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="pad7">
											<em style="margin-left: 30px;">Please enter the phone number in the format (000) 000-0000</em>
										</td>
									</tr>
									<tr>
										<td class="pad7 td30">
											<asp:Label ID="Label9" runat="server" AssociatedControlID="textPhone"><span class="red">* </span>Phone:</asp:Label>
										</td>
										<td class="pad7 td70">
											<ew:MaskedTextBox ID="textPhone" runat="server" CssClass="text" Mask="(999) 999-9999"
												MaxLength="20" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></ew:MaskedTextBox>
											<asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator7" runat="server"
												ErrorMessage="Enter Phone Number." ControlToValidate="textPhone" Display="Dynamic"
												ToolTip="Enter Phone Number.">*</asp:RequiredFieldValidator>
											<asp:RegularExpressionValidator CssClass="validator" ID="RegularExpressionValidator3"
												runat="server" ControlToValidate="textPhone" Display="Dynamic" ErrorMessage="Invalid Phone Number. Please enter again."
												ToolTip="Invalid Phone Number. Please enter again." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
										</td>
									</tr>
									<tr>
										<td class="pad7 td30">
											<asp:Label ID="Label10" runat="server" AssociatedControlID="fileUpload">Upload Resume:</asp:Label>
										</td>
										<td class="pad7 td70">
											<asp:FileUpload ID="fileUpload" runat="server" CssClass="text" Style="width: 400px"
												size="50" />
											<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Select a resume to upload or paste your resume."
												ControlToValidate="fileUpload" Display="Dynamic" Text="*" ToolTip="Select a resume to upload or paste your resume."
												ClientValidationFunction="checkResume" ValidateEmptyText="True"></asp:CustomValidator>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="pad7" style="text-align: center; font-weight: bold;">
											OR
										</td>
									</tr>
									<tr>
										<td class="pad7 td30" style="vertical-align: top;">
											<asp:Label ID="Label11" runat="server" AssociatedControlID="textResume">Paste your Resume:</asp:Label>
										</td>
										<td class="pad7 td70">
											<asp:TextBox ID="textResume" runat="server" TextMode="MultiLine" Rows="15" CssClass="text"></asp:TextBox>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="pad7">&nbsp;
											
										</td>
									</tr>
									<tr>
										<td colspan="2" class="pad7 center">
											<asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validator"
												ShowMessageBox="True" ShowSummary="False" Width="100%" />
											<asp:Button ID="buttonRegister" runat="server" Text="Apply for the Job" OnClick="buttonRegister_Click" />
											&nbsp;
											<input id="buttonReset" type="reset" value="Reset" />
										</td>
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
							</script>
							</form>
							<!-- InstanceEndEditable --></td>
      </tr>
        <tr>
        <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table style="margin-top:50px; margin-left:20px; width:944px; border-spacing:0px; height:294px; min-height:294px; border:1px solid #dbdbdb; background-image:url(images/testbckgHome.png)">
              <tr>
               <tr>
                <td  style="width:25%; vertical-align:top; padding-top:22px; padding-bottom:10px; border-bottom:1px solid #dbdbdb"  class="bottomHdrcontent"><a href="services.aspx" title="Services"><img src="images/services.png" alt="" width="60" height="14" /></a></td>
                <td   style="width:25%; vertical-align:top; padding-top:22px; padding-bottom:10px; border-bottom:1px solid #dbdbdb" class="bottomHdrcontent"><a href="ivs_home.aspx" title="Industry Vertical Solutions"><img src="images/ivs.png" alt="" width="183" height="17" /></a></td>
                <td style="width:25%; vertical-align:top; padding-top:22px; padding-bottom:10px; border-bottom:1px solid #dbdbdb"  class="bottomHdrcontent"><a href="company.aspx" title="Company"><img src="images/company.png" alt="" width="64" height="17" /></a></td>
                <td style="width:25%; vertical-align:top; padding-top:22px; padding-bottom:10px; border-bottom:1px solid #dbdbdb"  class="bottomHdrcontent"><a href="evnts.aspx" title="Events"><img src="images/events.png" alt="" width="45" height="14" /></a></td>
              </tr> <td  style="width:25%; vertical-align:top"  class="bottomHdrcontent">
				  <div style="line-height:120%; margin-top:7px"><a href="services_itinframgmt.aspx" title="IT Infrastructure Management">IT Infrastructure Management</a></div>
                  <div style="line-height:120%; margin-top:7px"><a href="services_spitsol.aspx" title="Specialized IT Solutions">Specialized IT Solutions</a></div>
                  <div style="line-height:120%; margin-top:7px"><a href="services_erpsol.aspx" title="Mid-Market ERP Solutions">Mid-Market ERP Solutions</a></div>
                  <div style="line-height:120%; margin-top:7px"><a href="services_customapp.aspx" title="Custom Application Development">Custom Application Development</a></div>
                  <div style="line-height:120%; margin-top:7px"><a href="services_webdesigndev.aspx" title="Website Design/Web Application">Website Design/Web Application</a></div>
                  <div style="line-height:120%; margin-top:7px"><a href="services_mobile.aspx" title="">Mobile Technology Solutions</a></div>
                  <div style="line-height:120%; margin-top:7px"><a href="services_bi.aspx" title="Business Intelligence Solutions">Business Intelligence Solutions</a></div>
                  <div style="line-height:110%; margin-top:7px"><a href="services_adm_titan.aspx" title="Application Development Methodology - Titan TeamTrack™">Application Development<br />
                  Methodology - Titan TeamTrack&trade;</a></div></td>
                <td style="width:25%" valign="top" class="bottomHdrcontent">
				<div style="margin-top:7px; line-height:100%"><a href="ivs_cg.aspx" title="Consumer Goods">Consumer Goods</a></div> 
                  <div style="line-height:100%; margin-top:7px"><a href="ivs_hcare.aspx" title="Healthcare">Healthcare</a></div>
                  <div style="line-height:100%; margin-top:7px"><a href="ivs_retail.aspx" title="Retail">Retail</a></div>
                  <div style="line-height:100%; margin-top:7px"><a href="ivs_manf.aspx" title="Process Manufacturing">Process Manufacturing</a></div></td>
                <td style="width:25%"  valign="top" class="bottomHdrcontent"><div style="margin-top:7px; line-height:100%"><a href="aboutus.aspx" title="About Us">About Us</a></div>
                  <div style="line-height:100%; margin-top:7px"><a href="news.aspx" title="News">News</a></div>
                  <div style="line-height:100%; margin-top:7px"><a href="investors.aspx" title="Investors">Investors</a></div>
                  <div style="line-height:100%; margin-top:7px"><a href="careers.aspx" title="Careers">Careers</a></div><div style="line-height:100%; margin-top:7px"><a href="partners.aspx" title="Titan Partners">Titan Partners</a></div>
<div style="line-height:100%; margin-top:7px"><a href="login.aspx" title="My Titan">My Titan</a></div><div style="line-height:100%; margin-top:7px"><a href="contact_us.aspx" title="Contact Us">Contact Us</a></div>
                  </td>
                <td style="width:25%"  valign="top" class="bottomHdrcontent"><div style="line-height:100%; margin-top:7px"><a href="evnts_webinars.aspx" title="Webinars">Webinars</a></div>
                  <div style="line-height:98%; margin-top:7px"><a href="evnts_live_sem.aspx" title="Live Seminars">Live Seminars</a></div></td>
              </tr>
              
            </table>            </td>
            </tr>
          
        </table>          </td>
        </tr>
    </table>    </td>
  </tr>
  
  <tr>
    <td style="background-image:url(images/titan_bot_2_img.jpg); background-repeat:no-repeat; height:59px; min-height:59px"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<blockquote>&nbsp;</blockquote>

</body>
<!-- InstanceEnd --></html>
