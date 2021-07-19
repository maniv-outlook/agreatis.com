<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
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
	<div id="div1">
		<table cellpadding="0" cellspacing="0">
			<caption>Create Profile</caption>
			<tr>
				<td>
					<asp:Label id="labelUser" runat="server" AssociatedControlID="textUserName" Text="User Name:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textUserName" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelEmail" runat="server" AssociatedControlID="textEmail" Text="Email ID:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textEmail" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelFirst" runat="server" AssociatedControlID="textFirstName" Text="First Name:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textFirstName" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelLast" runat="server" AssociatedControlID="textLastName" Text="Last Name:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textLastName" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelSecurityQuestion" runat="server" AssociatedControlID="dropSecurity" Text="Security Question:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropSecurity" runat="server">
						<asp:ListItem>What is the name of your first car?</asp:ListItem>
						<asp:ListItem>What is the name of your primary school?</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelSecurityAnswer" runat="server" AssociatedControlID="textSecurity" Text="Security Answer:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textSecurity" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<asp:Button id="buttonNext" runat="server" Text="Next"></asp:Button>
				</td>
			</tr>
		</table>
	</div>
	<div id="div2">
		<table cellpadding="0" cellspacing="0">
			<caption>Contact Information</caption>
			<tr>
				<td>
					<asp:Label id="labelAddress1" runat="server" AssociatedControlID="textAddress1" Text="Address:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textAddress1" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<asp:TextBox id="textAddress2" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelCountry" runat="server" AssociatedControlID="dropCountry" Text="Country:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropCountry" runat="server">
						<asp:ListItem Value="AF">Afghanistan</asp:ListItem>
						<asp:ListItem Value="AL">Albania</asp:ListItem>
						<asp:ListItem Value="DZ">Algeria</asp:ListItem>
						<asp:ListItem Value="AS">American Samoa</asp:ListItem>
						<asp:ListItem Value="AD">Andorra</asp:ListItem>
						<asp:ListItem Value="AO">Angola</asp:ListItem>
						<asp:ListItem Value="AI">Anguilla</asp:ListItem>
						<asp:ListItem Value="AQ">Antarctica</asp:ListItem>
						<asp:ListItem Value="AG">Antigua and Barbuda</asp:ListItem>
						<asp:ListItem Value="AR">Argentina</asp:ListItem>
						<asp:ListItem Value="AM">Armenia</asp:ListItem>
						<asp:ListItem Value="AW">Aruba</asp:ListItem>
						<asp:ListItem Value="AU">Australia</asp:ListItem>
						<asp:ListItem Value="AT">Austria</asp:ListItem>
						<asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>
						<asp:ListItem Value="BS">Bahamas</asp:ListItem>
						<asp:ListItem Value="BH">Bahrain</asp:ListItem>
						<asp:ListItem Value="BD">Bangladesh</asp:ListItem>
						<asp:ListItem Value="BB">Barbados</asp:ListItem>
						<asp:ListItem Value="BY">Belarus</asp:ListItem>
						<asp:ListItem Value="BE">Belgium</asp:ListItem>
						<asp:ListItem Value="BZ">Belize</asp:ListItem>
						<asp:ListItem Value="BJ">Benin</asp:ListItem>
						<asp:ListItem Value="BM">Bermuda</asp:ListItem>
						<asp:ListItem Value="BT">Bhutan</asp:ListItem>
						<asp:ListItem Value="BO">Bolivia</asp:ListItem>
						<asp:ListItem Value="BA">Bosnia and Herzegovina</asp:ListItem>
						<asp:ListItem Value="BW">Botswana</asp:ListItem>
						<asp:ListItem Value="BV">Bouvet Island</asp:ListItem>
						<asp:ListItem Value="BR">Brazil</asp:ListItem>
						<asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>
						<asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>
						<asp:ListItem Value="BG">Bulgaria</asp:ListItem>
						<asp:ListItem Value="BF">Burkina Faso</asp:ListItem>
						<asp:ListItem Value="BI">Burundi</asp:ListItem>
						<asp:ListItem Value="KH">Cambodia</asp:ListItem>
						<asp:ListItem Value="CM">Cameroon</asp:ListItem>
						<asp:ListItem Value="CA">Canada</asp:ListItem>
						<asp:ListItem Value="CV">Cape Verde</asp:ListItem>
						<asp:ListItem Value="KY">Cayman Islands</asp:ListItem>
						<asp:ListItem Value="CF">Central African Republic</asp:ListItem>
						<asp:ListItem Value="TD">Chad</asp:ListItem>
						<asp:ListItem Value="CL">Chile</asp:ListItem>
						<asp:ListItem Value="CN">China</asp:ListItem>
						<asp:ListItem Value="CX">Christmas Island</asp:ListItem>
						<asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>
						<asp:ListItem Value="CO">Colombia</asp:ListItem>
						<asp:ListItem Value="KM">Comoros</asp:ListItem>
						<asp:ListItem Value="CG">Congo</asp:ListItem>
						<asp:ListItem Value="CD">Congo, the Democratic Republic of the</asp:ListItem>
						<asp:ListItem Value="CK">Cook Islands</asp:ListItem>
						<asp:ListItem Value="CR">Costa Rica</asp:ListItem>
						<asp:ListItem Value="CI">Cote D&#39;Ivoire</asp:ListItem>
						<asp:ListItem Value="HR">Croatia</asp:ListItem>
						<asp:ListItem Value="CU">Cuba</asp:ListItem>
						<asp:ListItem Value="CY">Cyprus</asp:ListItem>
						<asp:ListItem Value="CZ">Czech Republic</asp:ListItem>
						<asp:ListItem Value="DK">Denmark</asp:ListItem>
						<asp:ListItem Value="DJ">Djibouti</asp:ListItem>
						<asp:ListItem Value="DM">Dominica</asp:ListItem>
						<asp:ListItem Value="DO">Dominican Republic</asp:ListItem>
						<asp:ListItem Value="EC">Ecuador</asp:ListItem>
						<asp:ListItem Value="EG">Egypt</asp:ListItem>
						<asp:ListItem Value="SV">El Salvador</asp:ListItem>
						<asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>
						<asp:ListItem Value="ER">Eritrea</asp:ListItem>
						<asp:ListItem Value="EE">Estonia</asp:ListItem>
						<asp:ListItem Value="ET">Ethiopia</asp:ListItem>
						<asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>
						<asp:ListItem Value="FO">Faroe Islands</asp:ListItem>
						<asp:ListItem Value="FJ">Fiji</asp:ListItem>
						<asp:ListItem Value="FI">Finland</asp:ListItem>
						<asp:ListItem Value="FR">France</asp:ListItem>
						<asp:ListItem Value="GF">French Guiana</asp:ListItem>
						<asp:ListItem Value="PF">French Polynesia</asp:ListItem>
						<asp:ListItem Value="TF">French Southern Territories</asp:ListItem>
						<asp:ListItem Value="GA">Gabon</asp:ListItem>
						<asp:ListItem Value="GM">Gambia</asp:ListItem>
						<asp:ListItem Value="GE">Georgia</asp:ListItem>
						<asp:ListItem Value="DE">Germany</asp:ListItem>
						<asp:ListItem Value="GH">Ghana</asp:ListItem>
						<asp:ListItem Value="GI">Gibraltar</asp:ListItem>
						<asp:ListItem Value="GR">Greece</asp:ListItem>
						<asp:ListItem Value="GL">Greenland</asp:ListItem>
						<asp:ListItem Value="GD">Grenada</asp:ListItem>
						<asp:ListItem Value="GP">Guadeloupe</asp:ListItem>
						<asp:ListItem Value="GU">Guam</asp:ListItem>
						<asp:ListItem Value="GT">Guatemala</asp:ListItem>
						<asp:ListItem Value="GN">Guinea</asp:ListItem>
						<asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>
						<asp:ListItem Value="GY">Guyana</asp:ListItem>
						<asp:ListItem Value="HT">Haiti</asp:ListItem>
						<asp:ListItem Value="HM">Heard Island and Mcdonald Islands</asp:ListItem>
						<asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>
						<asp:ListItem Value="HN">Honduras</asp:ListItem>
						<asp:ListItem Value="HK">Hong Kong</asp:ListItem>
						<asp:ListItem Value="HU">Hungary</asp:ListItem>
						<asp:ListItem Value="IS">Iceland</asp:ListItem>
						<asp:ListItem Value="IN">India</asp:ListItem>
						<asp:ListItem Value="ID">Indonesia</asp:ListItem>
						<asp:ListItem Value="IR">Iran, Islamic Republic of</asp:ListItem>
						<asp:ListItem Value="IQ">Iraq</asp:ListItem>
						<asp:ListItem Value="IE">Ireland</asp:ListItem>
						<asp:ListItem Value="IL">Israel</asp:ListItem>
						<asp:ListItem Value="IT">Italy</asp:ListItem>
						<asp:ListItem Value="JM">Jamaica</asp:ListItem>
						<asp:ListItem Value="JP">Japan</asp:ListItem>
						<asp:ListItem Value="JO">Jordan</asp:ListItem>
						<asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>
						<asp:ListItem Value="KE">Kenya</asp:ListItem>
						<asp:ListItem Value="KI">Kiribati</asp:ListItem>
						<asp:ListItem Value="KP">Korea, Democratic People&#39;s Republic of</asp:ListItem>
						<asp:ListItem Value="KR">Korea, Republic of</asp:ListItem>
						<asp:ListItem Value="KW">Kuwait</asp:ListItem>
						<asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>
						<asp:ListItem Value="LA">Lao People&#39;s Democratic Republic</asp:ListItem>
						<asp:ListItem Value="LV">Latvia</asp:ListItem>
						<asp:ListItem Value="LB">Lebanon</asp:ListItem>
						<asp:ListItem Value="LS">Lesotho</asp:ListItem>
						<asp:ListItem Value="LR">Liberia</asp:ListItem>
						<asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>
						<asp:ListItem Value="LI">Liechtenstein</asp:ListItem>
						<asp:ListItem Value="LT">Lithuania</asp:ListItem>
						<asp:ListItem Value="LU">Luxembourg</asp:ListItem>
						<asp:ListItem Value="MO">Macao</asp:ListItem>
						<asp:ListItem Value="MK">Macedonia, the Former Yugoslav Republic of</asp:ListItem>
						<asp:ListItem Value="MG">Madagascar</asp:ListItem>
						<asp:ListItem Value="MW">Malawi</asp:ListItem>
						<asp:ListItem Value="MY">Malaysia</asp:ListItem>
						<asp:ListItem Value="MV">Maldives</asp:ListItem>
						<asp:ListItem Value="ML">Mali</asp:ListItem>
						<asp:ListItem Value="MT">Malta</asp:ListItem>
						<asp:ListItem Value="MH">Marshall Islands</asp:ListItem>
						<asp:ListItem Value="MQ">Martinique</asp:ListItem>
						<asp:ListItem Value="MR">Mauritania</asp:ListItem>
						<asp:ListItem Value="MU">Mauritius</asp:ListItem>
						<asp:ListItem Value="YT">Mayotte</asp:ListItem>
						<asp:ListItem Value="MX">Mexico</asp:ListItem>
						<asp:ListItem Value="FM">Micronesia, Federated States of</asp:ListItem>
						<asp:ListItem Value="MD">Moldova, Republic of</asp:ListItem>
						<asp:ListItem Value="MC">Monaco</asp:ListItem>
						<asp:ListItem Value="MN">Mongolia</asp:ListItem>
						<asp:ListItem Value="MS">Montserrat</asp:ListItem>
						<asp:ListItem Value="MA">Morocco</asp:ListItem>
						<asp:ListItem Value="MZ">Mozambique</asp:ListItem>
						<asp:ListItem Value="MM">Myanmar</asp:ListItem>
						<asp:ListItem Value="NA">Namibia</asp:ListItem>
						<asp:ListItem Value="NR">Nauru</asp:ListItem>
						<asp:ListItem Value="NP">Nepal</asp:ListItem>
						<asp:ListItem Value="NL">Netherlands</asp:ListItem>
						<asp:ListItem Value="AN">Netherlands Antilles</asp:ListItem>
						<asp:ListItem Value="NC">New Caledonia</asp:ListItem>
						<asp:ListItem Value="NZ">New Zealand</asp:ListItem>
						<asp:ListItem Value="NI">Nicaragua</asp:ListItem>
						<asp:ListItem Value="NE">Niger</asp:ListItem>
						<asp:ListItem Value="NG">Nigeria</asp:ListItem>
						<asp:ListItem Value="NU">Niue</asp:ListItem>
						<asp:ListItem Value="NF">Norfolk Island</asp:ListItem>
						<asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>
						<asp:ListItem Value="NO">Norway</asp:ListItem>
						<asp:ListItem Value="OM">Oman</asp:ListItem>
						<asp:ListItem Value="PK">Pakistan</asp:ListItem>
						<asp:ListItem Value="PW">Palau</asp:ListItem>
						<asp:ListItem Value="PS">Palestinian Territory, Occupied</asp:ListItem>
						<asp:ListItem Value="PA">Panama</asp:ListItem>
						<asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>
						<asp:ListItem Value="PY">Paraguay</asp:ListItem>
						<asp:ListItem Value="PE">Peru</asp:ListItem>
						<asp:ListItem Value="PH">Philippines</asp:ListItem>
						<asp:ListItem Value="PN">Pitcairn</asp:ListItem>
						<asp:ListItem Value="PL">Poland</asp:ListItem>
						<asp:ListItem Value="PT">Portugal</asp:ListItem>
						<asp:ListItem Value="PR">Puerto Rico</asp:ListItem>
						<asp:ListItem Value="QA">Qatar</asp:ListItem>
						<asp:ListItem Value="RE">Reunion</asp:ListItem>
						<asp:ListItem Value="RO">Romania</asp:ListItem>
						<asp:ListItem Value="RU">Russian Federation</asp:ListItem>
						<asp:ListItem Value="RW">Rwanda</asp:ListItem>
						<asp:ListItem Value="SH">Saint Helena</asp:ListItem>
						<asp:ListItem Value="KN">Saint Kitts and Nevis</asp:ListItem>
						<asp:ListItem Value="LC">Saint Lucia</asp:ListItem>
						<asp:ListItem Value="PM">Saint Pierre and Miquelon</asp:ListItem>
						<asp:ListItem Value="VC">Saint Vincent and the Grenadines</asp:ListItem>
						<asp:ListItem Value="WS">Samoa</asp:ListItem>
						<asp:ListItem Value="SM">San Marino</asp:ListItem>
						<asp:ListItem Value="ST">Sao Tome and Principe</asp:ListItem>
						<asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>
						<asp:ListItem Value="SN">Senegal</asp:ListItem>
						<asp:ListItem Value="CS">Serbia and Montenegro</asp:ListItem>
						<asp:ListItem Value="SC">Seychelles</asp:ListItem>
						<asp:ListItem Value="SL">Sierra Leone</asp:ListItem>
						<asp:ListItem Value="SG">Singapore</asp:ListItem>
						<asp:ListItem Value="SK">Slovakia</asp:ListItem>
						<asp:ListItem Value="SI">Slovenia</asp:ListItem>
						<asp:ListItem Value="SB">Solomon Islands</asp:ListItem>
						<asp:ListItem Value="SO">Somalia</asp:ListItem>
						<asp:ListItem Value="ZA">South Africa</asp:ListItem>
						<asp:ListItem Value="GS">South Georgia and the South Sandwich Islands</asp:ListItem>
						<asp:ListItem Value="ES">Spain</asp:ListItem>
						<asp:ListItem Value="LK">Sri Lanka</asp:ListItem>
						<asp:ListItem Value="SD">Sudan</asp:ListItem>
						<asp:ListItem Value="SR">Suriname</asp:ListItem>
						<asp:ListItem Value="SJ">Svalbard and Jan Mayen</asp:ListItem>
						<asp:ListItem Value="SZ">Swaziland</asp:ListItem>
						<asp:ListItem Value="SE">Sweden</asp:ListItem>
						<asp:ListItem Value="CH">Switzerland</asp:ListItem>
						<asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>
						<asp:ListItem Value="TW">Taiwan, Province of China</asp:ListItem>
						<asp:ListItem Value="TJ">Tajikistan</asp:ListItem>
						<asp:ListItem Value="TZ">Tanzania, United Republic of</asp:ListItem>
						<asp:ListItem Value="TH">Thailand</asp:ListItem>
						<asp:ListItem Value="TL">Timor-Leste</asp:ListItem>
						<asp:ListItem Value="TG">Togo</asp:ListItem>
						<asp:ListItem Value="TK">Tokelau</asp:ListItem>
						<asp:ListItem Value="TO">Tonga</asp:ListItem>
						<asp:ListItem Value="TT">Trinidad and Tobago</asp:ListItem>
						<asp:ListItem Value="TN">Tunisia</asp:ListItem>
						<asp:ListItem Value="TR">Turkey</asp:ListItem>
						<asp:ListItem Value="TM">Turkmenistan</asp:ListItem>
						<asp:ListItem Value="TC">Turks and Caicos Islands</asp:ListItem>
						<asp:ListItem Value="TV">Tuvalu</asp:ListItem>
						<asp:ListItem Value="UG">Uganda</asp:ListItem>
						<asp:ListItem Value="UA">Ukraine</asp:ListItem>
						<asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>
						<asp:ListItem Value="GB">United Kingdom</asp:ListItem>
						<asp:ListItem Value="UM">United States Minor Outlying Islands</asp:ListItem>
						<asp:ListItem selected="true" Value="US">United States of America</asp:ListItem>
						<asp:ListItem Value="UY">Uruguay</asp:ListItem>
						<asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>
						<asp:ListItem Value="VU">Vanuatu</asp:ListItem>
						<asp:ListItem Value="VE">Venezuela</asp:ListItem>
						<asp:ListItem Value="VN">Viet Nam</asp:ListItem>
						<asp:ListItem Value="VG">Virgin Islands, British</asp:ListItem>
						<asp:ListItem Value="VI">Virgin Islands, U.s.</asp:ListItem>
						<asp:ListItem Value="WF">Wallis and Futuna</asp:ListItem>
						<asp:ListItem Value="EH">Western Sahara</asp:ListItem>
						<asp:ListItem Value="YE">Yemen</asp:ListItem>
						<asp:ListItem Value="ZM">Zambia</asp:ListItem>
						<asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelCity" runat="server" AssociatedControlID="textCity" Text="City:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textCity" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelState" runat="server" AssociatedControlID="dropState" Text="State/Province:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropState" runat="server">
						<asp:ListItem Value="1">Alabama</asp:ListItem>
						<asp:ListItem Value="2">Alaska</asp:ListItem>
						<asp:ListItem Value="3">Arizona</asp:ListItem>
						<asp:ListItem Value="4">Arkansas</asp:ListItem>
						<asp:ListItem Value="5">California</asp:ListItem>
						<asp:ListItem Value="6">Colorado</asp:ListItem>
						<asp:ListItem Value="7">Connecticut</asp:ListItem>
						<asp:ListItem Value="8">Delaware</asp:ListItem>
						<asp:ListItem Value="9">District of Columbia</asp:ListItem>
						<asp:ListItem Value="10">Florida</asp:ListItem>
						<asp:ListItem Value="11">Georgia</asp:ListItem>
						<asp:ListItem Value="12">Hawaii</asp:ListItem>
						<asp:ListItem Value="13">Idaho</asp:ListItem>
						<asp:ListItem Value="14">Illinois</asp:ListItem>
						<asp:ListItem Value="15">Indiana</asp:ListItem>
						<asp:ListItem Value="16">Iowa</asp:ListItem>
						<asp:ListItem Value="17">Kansas</asp:ListItem>
						<asp:ListItem Value="18">Kentucky</asp:ListItem>
						<asp:ListItem Value="19">Louisiana</asp:ListItem>
						<asp:ListItem Value="20">Maine</asp:ListItem>
						<asp:ListItem Value="21">Maryland</asp:ListItem>
						<asp:ListItem Value="22">Massachusetts</asp:ListItem>
						<asp:ListItem Value="23">Michigan</asp:ListItem>
						<asp:ListItem Value="24">Minnesota</asp:ListItem>
						<asp:ListItem Value="25">Mississippi</asp:ListItem>
						<asp:ListItem Value="26">Missouri</asp:ListItem>
						<asp:ListItem Value="27">Montana</asp:ListItem>
						<asp:ListItem Value="28">Nebraska</asp:ListItem>
						<asp:ListItem Value="29">Nevada</asp:ListItem>
						<asp:ListItem Value="30">New Hampshire</asp:ListItem>
						<asp:ListItem Value="31">New Jersey</asp:ListItem>
						<asp:ListItem Value="32">New Mexico</asp:ListItem>
						<asp:ListItem Value="33">New York</asp:ListItem>
						<asp:ListItem Value="34">North Carolina</asp:ListItem>
						<asp:ListItem Value="35">North Dakota</asp:ListItem>
						<asp:ListItem Value="36">Ohio</asp:ListItem>
						<asp:ListItem Value="37">Oklahoma</asp:ListItem>
						<asp:ListItem Value="38">Oregon</asp:ListItem>
						<asp:ListItem Value="39" Selected="True">Pennsylvania</asp:ListItem>
						<asp:ListItem Value="40">Rhode Island</asp:ListItem>
						<asp:ListItem Value="41">South Carolina</asp:ListItem>
						<asp:ListItem Value="42">South Dakota</asp:ListItem>
						<asp:ListItem Value="43">Tennessee</asp:ListItem>
						<asp:ListItem Value="44">Texas</asp:ListItem>
						<asp:ListItem Value="45">Utah</asp:ListItem>
						<asp:ListItem Value="46">Vermont</asp:ListItem>
						<asp:ListItem Value="47">Virginia</asp:ListItem>
						<asp:ListItem Value="48">Washington</asp:ListItem>
						<asp:ListItem Value="49">West Virginia</asp:ListItem>
						<asp:ListItem Value="50">Wisconsin</asp:ListItem>
						<asp:ListItem Value="51">Wyoming</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelZip" runat="server" AssociatedControlID="textZip" Text="Zip:"></asp:Label>
				</td>
				<td>
					<asp:TextBox ID="textZip" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelHome" runat="server" AssociatedControlID="textHome" Text="Home Phone:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textHome" runat="server"></asp:TextBox>
					<asp:CheckBox id="checkHome" runat="server" Text="Preferred contact number"></asp:CheckBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelCell" runat="server" AssociatedControlID="textCell" Text="Cell Phone:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textCell" runat="server"></asp:TextBox>
					<asp:CheckBox id="checkCell" runat="server" Text="Preferred contact number"></asp:CheckBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelFax" runat="server" AssociatedControlID="textFax" Text="Fax:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textFax" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<asp:Button id="buttonNext1" runat="server" Text="Next"></asp:Button>
				</td>
			</tr>
		</table>
	</div>
	<div id="div3">
		<table cellpadding="0" cellspacing="0">
			<caption>Candidate Profile</caption>
			<tr>
				<td>
					<asp:Label id="labelAuthorize" runat="server" AssociatedControlID="dropAuthorize" Text="Work Aurthorization:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropAuthorize" runat="server">
						<asp:ListItem>U.S. Citizen</asp:ListItem>
						<asp:ListItem>Canadian Citizen</asp:ListItem>
						<asp:ListItem>Have H-1 Visa</asp:ListItem>
						<asp:ListItem>Need H-1 Visa</asp:ListItem>
						<asp:ListItem>Grren Card Holder</asp:ListItem>
						<asp:ListItem>TN Permit Holder</asp:ListItem>
						<asp:ListItem>Employment Authorization Document</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelSecurityClearanace" runat="server" AssociatedControlID="radioSecurity" Text="Security Clearance:"></asp:Label>
				</td>
				<td>
					<asp:RadioButtonList id="radioSecurity" runat="server">
						<asp:ListItem Value="Yes">Yes</asp:ListItem>
						<asp:ListItem Value="No" Selected="True">No</asp:ListItem>
					</asp:RadioButtonList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelEmpType" runat="server" AssociatedControlID="dropEmpType" Text="Employment Type:"></asp:Label>
				</td>
				<td>
					<asp:ListBox id="dropEmpType" runat="server">
						<asp:ListItem>Full-time Employee</asp:ListItem>
						<asp:ListItem>Part-time Employee</asp:ListItem>
						<asp:ListItem>Contractor W-2 Status</asp:ListItem>
						<asp:ListItem>Contractor 1099 Status</asp:ListItem>
						<asp:ListItem>Contract to Hire</asp:ListItem>
						<asp:ListItem>Anything</asp:ListItem>
					</asp:ListBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelAnnual" runat="server" AssociatedControlID="dropAnnual" Text="Annual Salary:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropAnnual" runat="server">
						<asp:ListItem>$25,000/year</asp:ListItem>
						<asp:ListItem>$30,000/year</asp:ListItem>
						<asp:ListItem>$35,000/year</asp:ListItem>
						<asp:ListItem>$40,000/year</asp:ListItem>
						<asp:ListItem>$45,000/year</asp:ListItem>
						<asp:ListItem>$50,000/year</asp:ListItem>
						<asp:ListItem>$55,000/year</asp:ListItem>
						<asp:ListItem>$60,000/year</asp:ListItem>
						<asp:ListItem>$65,000/year</asp:ListItem>
						<asp:ListItem>$70,000/year</asp:ListItem>
						<asp:ListItem>$75,000/year</asp:ListItem>
						<asp:ListItem>$80,000/year</asp:ListItem>
						<asp:ListItem>$85,000/year</asp:ListItem>
						<asp:ListItem>$90,000/year</asp:ListItem>
						<asp:ListItem>$95,000/year</asp:ListItem>
						<asp:ListItem>$100,000/year</asp:ListItem>
						<asp:ListItem>$125,000/year</asp:ListItem>
						<asp:ListItem>$150,000/year</asp:ListItem>
						<asp:ListItem>$175,000/year</asp:ListItem>
						<asp:ListItem>$200,000/year</asp:ListItem>
						<asp:ListItem>Negotiable</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelHourly" runat="server" AssociatedControlID="dropHourly" Text="Hourly Pay Rate:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropHourly" runat="server">
						<asp:ListItem>$25/hr</asp:ListItem>
						<asp:ListItem>$30/hr</asp:ListItem>
						<asp:ListItem>$35/hr</asp:ListItem>
						<asp:ListItem>$40/hr</asp:ListItem>
						<asp:ListItem>$45/hr</asp:ListItem>
						<asp:ListItem>$50/hr</asp:ListItem>
						<asp:ListItem>$55/hr</asp:ListItem>
						<asp:ListItem>$60/hr</asp:ListItem>
						<asp:ListItem>$65/hr</asp:ListItem>
						<asp:ListItem>$70/hr</asp:ListItem>
						<asp:ListItem>$75/hr</asp:ListItem>
						<asp:ListItem>$80/hr</asp:ListItem>
						<asp:ListItem>$85/hr</asp:ListItem>
						<asp:ListItem>$90/hr</asp:ListItem>
						<asp:ListItem>$95/hr</asp:ListItem>
						<asp:ListItem>$100/hr</asp:ListItem>
						<asp:ListItem>$125/hr</asp:ListItem>
						<asp:ListItem>$150/hr</asp:ListItem>
						<asp:ListItem>$175/hr</asp:ListItem>
						<asp:ListItem>$200/hr</asp:ListItem>
						<asp:ListItem>Negotiable</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
		</table>
	</div>
	<div id="div4">
		<table cellpadding="0" cellspacing="0">
			<caption>Education and Work History</caption>
			<tr>
				<td>
					<asp:Label id="labelDegree" runat="server" AssociatedControlID="dropDegree" Text="Highest Degree"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropDegree" runat="server">
						<asp:ListItem>High School</asp:ListItem>
						<asp:ListItem>Military Service</asp:ListItem>
						<asp:ListItem>Vocational School</asp:ListItem>
						<asp:ListItem>Associate</asp:ListItem>
						<asp:ListItem>Pre-Bachelors</asp:ListItem>
						<asp:ListItem>Bachelors</asp:ListItem>
						<asp:ListItem>Post-Bachelors, Pre-Masters</asp:ListItem>
						<asp:ListItem>MBA</asp:ListItem>
						<asp:ListItem>Masters</asp:ListItem>
						<asp:ListItem>Post-Masters, Pre-Doctorate</asp:ListItem>
						<asp:ListItem>Doctorate</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelAddlDegree" runat="server" AssociatedControlID="dropAddlDegree" Text="Additional Degrees:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropAddlDegree" runat="server">
						<asp:ListItem>High School</asp:ListItem>
						<asp:ListItem>Military Service</asp:ListItem>
						<asp:ListItem>Vocational School</asp:ListItem>
						<asp:ListItem>Associate</asp:ListItem>
						<asp:ListItem>Pre-Bachelors</asp:ListItem>
						<asp:ListItem>Bachelors</asp:ListItem>
						<asp:ListItem>Post-Bachelors, Pre-Masters</asp:ListItem>
						<asp:ListItem>MBA</asp:ListItem>
						<asp:ListItem>Masters</asp:ListItem>
						<asp:ListItem>Post-Masters, Pre-Doctorate</asp:ListItem>
						<asp:ListItem>Doctorate</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelOtherDegree" runat="server" AssociatedControlID="textOtherCert" Text="Other Certifications:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textOtherCert" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelPresentJob" runat="server" AssociatedControlID="textPresentJobTitle" Text="Present/Recent Job Title:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textPresentJobTitle" runat="server"></asp:TextBox>
					<asp:CheckBox id="checkCurrent" runat="server" Text="currently employed"></asp:CheckBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelPresentCompany" runat="server" AssociatedControlID="textPresentCompany" Text="Company Name:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textPresentCompany" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelCurrentJobState" runat="server" AssociatedControlID="dropCurrentState" Text="State/Province:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropCurrentState" runat="server">
						<asp:ListItem Value="1">Alabama</asp:ListItem>
						<asp:ListItem Value="2">Alaska</asp:ListItem>
						<asp:ListItem Value="3">Arizona</asp:ListItem>
						<asp:ListItem Value="4">Arkansas</asp:ListItem>
						<asp:ListItem Value="5">California</asp:ListItem>
						<asp:ListItem Value="6">Colorado</asp:ListItem>
						<asp:ListItem Value="7">Connecticut</asp:ListItem>
						<asp:ListItem Value="8">Delaware</asp:ListItem>
						<asp:ListItem Value="9">District of Columbia</asp:ListItem>
						<asp:ListItem Value="10">Florida</asp:ListItem>
						<asp:ListItem Value="11">Georgia</asp:ListItem>
						<asp:ListItem Value="12">Hawaii</asp:ListItem>
						<asp:ListItem Value="13">Idaho</asp:ListItem>
						<asp:ListItem Value="14">Illinois</asp:ListItem>
						<asp:ListItem Value="15">Indiana</asp:ListItem>
						<asp:ListItem Value="16">Iowa</asp:ListItem>
						<asp:ListItem Value="17">Kansas</asp:ListItem>
						<asp:ListItem Value="18">Kentucky</asp:ListItem>
						<asp:ListItem Value="19">Louisiana</asp:ListItem>
						<asp:ListItem Value="20">Maine</asp:ListItem>
						<asp:ListItem Value="21">Maryland</asp:ListItem>
						<asp:ListItem Value="22">Massachusetts</asp:ListItem>
						<asp:ListItem Value="23">Michigan</asp:ListItem>
						<asp:ListItem Value="24">Minnesota</asp:ListItem>
						<asp:ListItem Value="25">Mississippi</asp:ListItem>
						<asp:ListItem Value="26">Missouri</asp:ListItem>
						<asp:ListItem Value="27">Montana</asp:ListItem>
						<asp:ListItem Value="28">Nebraska</asp:ListItem>
						<asp:ListItem Value="29">Nevada</asp:ListItem>
						<asp:ListItem Value="30">New Hampshire</asp:ListItem>
						<asp:ListItem Value="31">New Jersey</asp:ListItem>
						<asp:ListItem Value="32">New Mexico</asp:ListItem>
						<asp:ListItem Value="33">New York</asp:ListItem>
						<asp:ListItem Value="34">North Carolina</asp:ListItem>
						<asp:ListItem Value="35">North Dakota</asp:ListItem>
						<asp:ListItem Value="36">Ohio</asp:ListItem>
						<asp:ListItem Value="37">Oklahoma</asp:ListItem>
						<asp:ListItem Value="38">Oregon</asp:ListItem>
						<asp:ListItem Value="39" Selected="True">Pennsylvania</asp:ListItem>
						<asp:ListItem Value="40">Rhode Island</asp:ListItem>
						<asp:ListItem Value="41">South Carolina</asp:ListItem>
						<asp:ListItem Value="42">South Dakota</asp:ListItem>
						<asp:ListItem Value="43">Tennessee</asp:ListItem>
						<asp:ListItem Value="44">Texas</asp:ListItem>
						<asp:ListItem Value="45">Utah</asp:ListItem>
						<asp:ListItem Value="46">Vermont</asp:ListItem>
						<asp:ListItem Value="47">Virginia</asp:ListItem>
						<asp:ListItem Value="48">Washington</asp:ListItem>
						<asp:ListItem Value="49">West Virginia</asp:ListItem>
						<asp:ListItem Value="50">Wisconsin</asp:ListItem>
						<asp:ListItem Value="51">Wyoming</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelPresentCity" runat="server" AssociatedControlID="textPresentCity" Text="City:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textPresentCity" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelTotalExp" runat="server" AssociatedControlID="dropTotalExp" Text="Total Experience:"></asp:Label>
				</td>
				<td>
					<asp:DropDownList id="dropTotalExp" runat="server">
						<asp:ListItem>0-1</asp:ListItem>
						<asp:ListItem>2-4</asp:ListItem>
						<asp:ListItem>5-8</asp:ListItem>
						<asp:ListItem>8-10</asp:ListItem>
						<asp:ListItem>11-15</asp:ListItem>
						<asp:ListItem>16-20</asp:ListItem>
						<asp:ListItem>&gt;20</asp:ListItem>
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td>
					<asp:Label id="labelDesiredPosition" runat="server" AssociatedControlID="textDesiredPosition1" Text="Desired Position Titles: (optional)"></asp:Label>
				</td>
				<td>
					<asp:TextBox runat="server" id="textDesiredPosition1"></asp:TextBox><br/>
					<asp:TextBox runat="server" id="textDesiredPosition2"></asp:TextBox><br/>
					<asp:TextBox runat="server" id="textDesiredPosition3"></asp:TextBox>				</td>
			</tr>
		</table>
	</div>
	<div id="div5">
		<table cellpadding="0" cellspacing="0">
			<caption>Resume Submission</caption>
			<tr>
				<td>
					<asp:Label id="labelLinkedIn" runat="server" AssociatedControlID="textLinkedIn" Text="Linked In:"></asp:Label>
				</td>
				<td>
					<asp:TextBox id="textLinkedIn" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<asp:Label id="labelBriefSummary" runat="server" AssociatedControlID="textBriefSummary" Text="Brief Summary of your Experience (optional):"></asp:Label>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<asp:TextBox id="textBriefSummary" runat="server"></asp:TextBox>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<asp:Label id="labelUploadResume" runat="server" AssociatedControlID="textUploadResume" Text="Upload Resume:"></asp:Label>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<asp:FileUpload id="textUploadResume" runat="server" />
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<asp:Label id="labelTextResume" runat="server" AssociatedControlID="textTextResume" Text="(or) Paste your resume here:"></asp:Label>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<asp:TextBox id="textTextResume" runat="server"></asp:TextBox>
				</td>
			</tr>
		</table>
	</div>
	<div id="div6">
	</div>
</form>
</body>
</html>