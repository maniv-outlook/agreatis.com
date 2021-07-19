<%@ Page Language="C#" %>

<%@ Register Assembly="eWorld.UI" Namespace="eWorld.UI" TagPrefix="ew" %>
<html><!-- InstanceBegin template="/Templates/template.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
    <title>:: Spot Staffing :: Welcome To Our Home On The Internet</title>

    <script runat="server">
        public void Page_Load(object sender, System.EventArgs e)
        {
            if (IsPostBack)
            {
                string _cn, _cont, _phone, _email, _loc, _contract, _desc;
                string _sal, _reloc, _citizen, _duration, _other, _4day, _exp;
                _cn = textCompany.Text;
                _cont = textContact.Text;
                _phone = textPhone.Text;
                _email = textEmail.Text;
                _loc = textLocation.Text;
                _contract = radioContract.SelectedValue;
                _desc = textDescription.Text;
                _sal = textSalary.Text;
                _reloc = radioRelocation.SelectedValue;
                _citizen = textCitizen.Text;
                _other = textOther.Text;
                _duration = textDuration.Text;
                _4day = radio4day.SelectedValue;
                _exp = radioExpenses.SelectedValue;
                string str = "Company Name: " + _cn + Environment.NewLine
                    + "Contact Person: " + _cont + Environment.NewLine
                    + "Phone: " + _phone + Environment.NewLine
                    + "E-Mail: " + _email + Environment.NewLine
                    + "Location: " + _loc + Environment.NewLine
                    + "Type of Assignment: " + _contract + Environment.NewLine
                    + "Description of Need: " + _desc + Environment.NewLine
                    + "Salary/Rate ($): " + _sal + Environment.NewLine
                    + "Relocation offered: " + _reloc + Environment.NewLine
                    + "Citizenship Requirements: " + _citizen + Environment.NewLine
                    + "Other Requirements: " + _other + Environment.NewLine;
                if (_contract.Equals("Contract"))
                {
                    str += "Duration: " + _duration + Environment.NewLine
                    + "4 day work-week allowed: " + _4day + Environment.NewLine
                    + "Expenses Paid: " + _exp + Environment.NewLine;
                }
                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient("smtpout.secureserver.net", 25);
                using (System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage())
                {
                    msg.To.Add(new System.Net.Mail.MailAddress("lisa.grenier@spotstaffing.com"));
                    msg.From = new System.Net.Mail.MailAddress(_email);
                    msg.Subject = "Request for Services for Spot Staffing.";
                    msg.Body = str;
                    client.Send(msg);
                }
                Response.Redirect("thankyou.html", true);
            }
            else
            {
                radioContract.Attributes["onclick"] = "javascript:EnableDisable()";
            }
        }
    </script>

    <!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<style type="text/css">
<!--
body {
	background-color: #727878;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<script type="text/javascript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script><!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<link href="spotstaffing.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="MM_preloadImages('images/about_us_img.jpg','images/services_img.jpg','images/contact_us_img.jpg')" >
<table border="0" cellpadding="0" cellspacing="0" width="955">

  <tr>
   <td><img src="images/spacer.gif" width="955" height="1" border="0" alt=""></td>
   <td><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
  </tr>

  <tr>
   <td><img src="images/index_r1_c1_new.jpg" alt="" name="index_r1_c1" width="955" height="56" border="0" usemap="#index_r1_c1Map"></td>
   <td><img src="images/spacer.gif" width="1" height="56" border="0" alt=""></td>
  </tr>
  <tr>
   <td><img name="index_r2_c1" src="images/index_r2_c1.jpg" width="955" height="1" border="0" alt=""></td>
   <td><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
  </tr>
  <tr>
    <td><!-- InstanceBeginEditable name="top" -->
      <table border="0" cellpadding="0" cellspacing="0" width="955">
        <!-- fwtable fwsrc="about_usMiddlePortion.png" fwbase="request_img.jpg" fwstyle="Dreamweaver" fwdocid = "742308039" fwnested="0" -->
        <tr>
          <td><img src="images/spacer.gif" width="567" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="122" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="122" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="122" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="20" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
        </tr>
        <tr>
          <td colspan="7"><img name="request_img_r1_c1" src="images/request_img_r1_c1.jpg" width="955" height="39" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="39" border="0" alt=""></td>
        </tr>
        <tr>
          <td rowspan="2"><img name="request_img_r2_c1" src="images/request_img_r2_c1.jpg" width="567" height="367" border="0" alt=""></td>
          <td><a href="ss_abouts.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image32','','images/about_us_img.jpg',1)"><img src="images/about_us_img_org.jpg" alt="About Us" name="Image32" width="122" height="67" border="0"></a></td>
          <td rowspan="2"><img name="request_img_r2_c3" src="images/request_img_r2_c3.jpg" width="1" height="367" border="0" alt=""></td>
          <td><a href="ss_services.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image33','','images/services_img.jpg',1)"><img src="images/services_img_org.jpg" alt="Our Services" name="Image33" width="122" height="67" border="0"></a></td>
          <td rowspan="2"><img name="request_img_r2_c5" src="images/request_img_r2_c5.jpg" width="1" height="367" border="0" alt=""></td>
          <td><a href="ss_contact.html" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image34','','images/contact_us_img.jpg',1)"><img src="images/contact_us_img_org.jpg" alt="Contact Us" name="Image34" width="122" height="67" border="0"></a></td>
          <td rowspan="2"><img name="request_img_r2_c7" src="images/request_img_r2_c7.jpg" width="20" height="367" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="67" border="0" alt=""></td>
        </tr>
        <tr>
          <td><img name="request_img_r3_c2" src="images/request_img_r3_c2.jpg" width="122" height="300" border="0" alt=""></td>
          <td><img name="request_img_r3_c4" src="images/request_img_r3_c4.jpg" width="122" height="300" border="0" alt=""></td>
          <td><img name="request_img_r3_c6" src="images/request_img_r3_c6.jpg" width="122" height="300" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="300" border="0" alt=""></td>
        </tr>
      </table>
    <!-- InstanceEndEditable --></td>
    <td><img src="images/spacer.gif" width="1" height="406" border="0" alt=""></td>
  </tr>
  <tr>
    <td rowspan="3" valign="top" style="background-image:url(images/index_r5_c1.jpg); background-repeat:repeat"><!-- InstanceBeginEditable name="content" -->
                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 300px;
                    min-height: 300px">
                    <tr>
                        <td valign="top" style="height: 90%; min-height: 90%">
                            <form id="form1" runat="server">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td>
                                            <div>
                                              <table width="80%" cellpadding="3" cellspacing="4" class="Events_Reg_Table" id="tableReg" style="background-color: White;" runat="server">
      <tr>
                                                        <td id="Description" runat="server" colspan="3" class="pad7" style="text-align: justify;">                                                        </td>
                                                    </tr>
                                                    <tr>
                                                      <td id="Register2" runat="server" colspan="3" class="pad7"><img src="images/request_img.jpg" width="195" height="24"></td>
                                                    </tr>
                                                    <tr>
                                                      <td id="Register3" runat="server" colspan="3" class="SSContent_11">Our representative will get back to you within one business day after you fill   in the form.</td>
                                                    </tr>
                                                    <tr>
                                                        <td id="Register" runat="server" colspan="3" class="NotesGreen" style="padding-bottom:12px">
                                                            Please enter the information below. Items marked with a Red <span class="red" style="color: red">
                                                                *</span> are mandatory.                                                        </td>
                                                    </tr>
                                                    <tr>
                                                      <td width="16%" class="pad7 td30">&nbsp;</td>
                                                        <td width="28%" class="SSFormLabel_10">
                                                      <asp:Label ID="labelCompany" runat="server" AssociatedControlID="textCompany"><span class="red">*</span>Company Name:</asp:Label>                                                        </td>
                                                  <td width="56%" class="SSred">
                                            <asp:TextBox ID="textCompany" runat="server" CssClass="text"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="reqCompany" runat="server" ControlToValidate="textCompany"
                                                                CssClass="validator" Display="Dynamic" ErrorMessage="Enter Company Name.">Enter Company Name.</asp:RequiredFieldValidator></td>
                                                </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelContact" runat="server" AssociatedControlID="textContact"><span class="red">*</span>Contact Person:</asp:Label></td>
                                                        <td class="SSred">
                                                            <asp:TextBox CssClass="text" ID="textContact" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="reqContact" runat="server" ControlToValidate="textContact"
                                                                CssClass="validator" Display="Dynamic" ErrorMessage="Enter Contact Person Name.">Enter Contact Person Name.</asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelPhone" runat="server" AssociatedControlID="textPhone" Text='phone'><span class="red">*</span>Phone:</asp:Label>                                                        </td>
                                                        <td class="SSred">
                                                            <ew:MaskedTextBox ID="textPhone" runat="server" CssClass="text" Mask="(999) 999-9999"
                                                                MaxLength="20" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">                                                            </ew:MaskedTextBox>
                                                            <asp:RequiredFieldValidator ID="reqPhone" runat="server" ControlToValidate="textPhone"
                                                                CssClass="validator" Display="Dynamic" ErrorMessage="Enter Phone Number.">Enter Phone Number.</asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="regPhone" runat="server" ControlToValidate="textPhone"
                                                                CssClass="validator" Display="Dynamic" ErrorMessage="Enter valid Phone Number."
                                                                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Enter valid Phone Number.</asp:RegularExpressionValidator></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelEmail" runat="server" AssociatedControlID="textEmail"><span class="red">*</span>E-mail :</asp:Label>                                                        </td>
                                                        <td class="SSred">
                                                            <asp:TextBox CssClass="text" ID="textEmail" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator
                                                                ID="reqEmail" runat="server" ControlToValidate="textEmail" CssClass="validator"
                                                                Display="Dynamic" ErrorMessage="Enter E-mail Address.">Enter E-mail Address.</asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="textEmail"
                                                                CssClass="validator" Display="Dynamic" ErrorMessage="Enter valid E-mail Address."
                                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter valid E-mail Address.</asp:RegularExpressionValidator></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30" valign="top">&nbsp;</td>
                                                        <td class="SSFormLabel_10" valign="top">
                                                            <asp:Label ID="labelLocation" runat="server" AssociatedControlID="textLocation"><span class="red">*</span>Location:</asp:Label></td>
                                                        <td class="SSred">
                                                            <asp:TextBox CssClass="text" ID="textLocation" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="reqLocation" runat="server" ControlToValidate="textLocation"
                                                                CssClass="validator" Display="Dynamic" ErrorMessage="Enter Location.">Enter Location.</asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelContract" runat="server" AssociatedControlID="radioContract"><span class="red">*</span>Contract / Permanent:</asp:Label>                                                        </td>
                                                        <td class="pad7 td70">
                                                            <asp:RadioButtonList ID="radioContract" runat="server" RepeatDirection="Horizontal"
                                                                RepeatLayout="Flow">
                                                                <asp:ListItem Selected="True">Contract</asp:ListItem>
                                                                <asp:ListItem>Permanent</asp:ListItem>
                                                            </asp:RadioButtonList></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelDescription" runat="server" AssociatedControlID="textDescription"><span class="red">*</span>Description Of Need:</asp:Label>                                                        </td>
                                                        <td class="SSred">
                                                            <asp:TextBox CssClass="text" ID="textDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="reqDescription" runat="server" ControlToValidate="textDescription"
                                                                CssClass="validator" Display="Dynamic" ErrorMessage="Enter Description of need.">Enter Description of need.</asp:RequiredFieldValidator></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelSalary" runat="server" AssociatedControlID="textSalary"> Salary/Rate:</asp:Label>                                                        </td>
                                                        <td class="pad7 td70">
                                                            <asp:TextBox CssClass="text" ID="textSalary" runat="server"></asp:TextBox>&nbsp;                                                        </td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelRelocation" runat="server" AssociatedControlID="radioRelocation">Relocation offered:</asp:Label>                                                        </td>
                                                        <td class="pad7 td70">
                                                            &nbsp;
                                                            <asp:RadioButtonList ID="radioRelocation" runat="server" RepeatDirection="Horizontal"
                                                                RepeatLayout="Flow">
                                                                <asp:ListItem Value="Yes" Text="Yes" Selected="True" />
                                                            <asp:ListItem Value="No" Text="No" />                                                            </asp:RadioButtonList></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelCitizenship" runat="server" AssociatedControlID="textCitizen">Citizenship requirements:</asp:Label></td>
                                                        <td class="pad7 td70">
                                                            <asp:TextBox ID="textCitizen" runat="server" CssClass="text" MaxLength="255"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelOthers" runat="server" AssociatedControlID="textOther">Other requirements:</asp:Label></td>
                                                        <td class="pad7 td70">
                                                            <asp:TextBox ID="textOther" runat="server" CssClass="text" MaxLength="255"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10" style="padding-top:10px"><strong>
                                                          If Contract:</strong></td>
                                                      <td class="pad7 td70">&nbsp;                                                        </td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelDuration" runat="server" AssociatedControlID="textDuration">Duration:</asp:Label></td>
                                                        <td class="pad7 td70">
                                                            <asp:TextBox ID="textDuration" runat="server" CssClass="text" MaxLength="255"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30" style="height: 21px">&nbsp;</td>
                                                        <td class="SSFormLabel_10" style="height: 21px">
                                                            <asp:Label ID="label4day" runat="server" AssociatedControlID="radio4day">4-day workweek allowed:</asp:Label></td>
                                                        <td class="pad7 td70" style="height: 21px">
                                                            <asp:RadioButtonList ID="radio4day" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                                <asp:ListItem Value="Yes" Text="Yes" Selected="True" />
                                                            <asp:ListItem Value="No" Text="No" />                                                            </asp:RadioButtonList></td>
                                                    </tr>
                                                    <tr>
                                                      <td class="pad7 td30">&nbsp;</td>
                                                        <td class="SSFormLabel_10">
                                                            <asp:Label ID="labelExpenses" runat="server" AssociatedControlID="radioExpenses">Expenses Paid:</asp:Label></td>
                                                        <td class="pad7 td70">
                                                            <asp:RadioButtonList ID="radioExpenses" runat="server" RepeatDirection="Horizontal"
                                                                RepeatLayout="Flow">
                                                                <asp:ListItem Value="Yes" Text="Yes" Selected="True" />
                                                            <asp:ListItem Value="No" Text="No" />                                                            </asp:RadioButtonList></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" class="pad7">&nbsp;                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" class="pad7 center" style="padding-bottom:14px">
                                                            <asp:ValidationSummary ID="validateSummary" runat="server" CssClass="validator" ShowMessageBox="True"
                                                                ShowSummary="False" Width="100%" HeaderText="The request was not submitted due to the follwing errors:" />
                                                            <asp:Button ID="buttonRegister" runat="server" Text="Submit Request" />
                                                            &nbsp;
                                                            <input id="buttonReset" type="reset" value="Reset" /></td>
                                                    </tr>
                                                </table>
                                          </div>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </form>

                            <script type="text/javascript">
                                function EnableDisable()
                                {
                                    if (document.getElementById("radioContract_0").checked)
                                    {
                                        document.getElementById("textDuration").disabled = false;
                                        document.getElementById("radio4day_0").disabled = false;
                                        document.getElementById("radio4day_0").checked = false;
                                        document.getElementById("radio4day_1").disabled = false;
                                        document.getElementById("radio4day_1").checked = true;
                                        document.getElementById("radioExpenses_0").disabled = false;
                                        document.getElementById("radioExpenses_0").checked = true;
                                        document.getElementById("radioExpenses_1").disabled = false;
                                        document.getElementById("radioExpenses_1").checked = false;
                                    }
                                    else
                                    {
                                        document.getElementById("textDuration").value = "";
                                        document.getElementById("textDuration").disabled = true;
                                        document.getElementById("radio4day_0").disabled = true;
                                        document.getElementById("radio4day_0").checked = false;
                                        document.getElementById("radio4day_1").disabled = true;
                                        document.getElementById("radio4day_1").checked = false;
                                        document.getElementById("radioExpenses_0").disabled = true;
                                        document.getElementById("radioExpenses_0").checked = false;
                                        document.getElementById("radioExpenses_1").disabled = true;
                                        document.getElementById("radioExpenses_1").checked = false;
                                    }
                                }
                            </script>

                        </td>
                    </tr>
                    <tr>
                             <td valign="bottom" class="SSBotLinks"><a href="ss_abouts.html" title="about us">about us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ss_services.html" title="our services">our services</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ss_contact.html" title="contact us">contact us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="request_services.aspx" title="request our services">request our services</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html" title="home" >home</a></td>
                  </tr>
                </table>
                <!-- InstanceEndEditable -->     </td>
   <td><img src="images/spacer.gif" width="1" height="186" border="0" alt=""></td>
  </tr>
  <tr>
   <td><img src="images/spacer.gif" width="1" height="4" border="0" alt=""></td>
  </tr>
  <tr>
   <td><img src="images/spacer.gif" width="1" height="37" border="0" alt=""></td>
  </tr>
  <tr>
   <td><img name="index_r7_c1" src="images/index_r7_c1.jpg" width="955" height="46" border="0" alt=""></td>
   <td><img src="images/spacer.gif" width="1" height="46" border="0" alt=""></td>
  </tr>
</table>

<map name="index_r1_c1Map"><area shape="rect" coords="862,33,936,54" href="index.html">
</map></body>
<!-- InstanceEnd --></html>
