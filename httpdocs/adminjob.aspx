<%@ Page CodeFile="adminjob.aspx.cs" EnableViewState="false" EnableViewStateMac="false" Inherits="AdminJob" Language="C#" %>

<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
    TagPrefix="ew" Namespace="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- #BeginTemplate "templates/agreatis_admin.dwt" -->

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
	<!-- #BeginEditable "doctitle" -->
    <title>AGREATIS&trade;, Inc.</title>
	<!-- #EndEditable -->
	<link href="agreatis.css" rel="stylesheet" type="text/css" />
	<script src="scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script src="scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var img = new Image();
		img.src = "images/left_pnl_img_2.jpg";
	</script>
	<script src="scripts/kendo/2012.3.1114/kendo.web.min.js" type="text/javascript"> </script>
	<script src="scripts/modernizr.js" type="text/javascript"> </script>
	<link href="Content/kendo/2012.3.1114/kendo.metro.min.css" rel="stylesheet" type="text/css" />
	<link href="Content/kendo/2012.3.1114/kendo.common.min.css" rel="stylesheet" type="text/css" />
	<style type="text/css">

		form
		{
			margin-top: 10px;
		}
		
			form > div > div
			{
				margin-top: 20px;
			}
		
				form > div > div > .spanLbl, form > div > div > .spanTxt
				{
					margin-left: 5px;
					margin-right: 5px;
				}
	</style>
	<meta content="http://www.agreatis.com/images/logo_og.jpg" property="og:image" />
	<meta content="image/png" property="og:image:type">
	<meta content="720" property="og:image:width">
	<meta content="440" property="og:image:height">
	<!-- #BeginEditable "head" -->
	<!-- #EndEditable -->
</head>
<body>
	<div style="text-align: center">
		<a href="index.aspx"><img alt="Header" src="images/Hdrs_imgAdmin.jpg" style="border: none" /></a>
	</div>
	<!-- #BeginEditable "jqueryImg" -->
	<!-- #EndEditable --><form id="form1" runat="server">
		<div style="width: 96%; margin: 10px; padding: 5px; margin-bottom: 40px;">
			<!-- #BeginEditable "Content" -->
            <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
            <uc1:menu runat="server" />
            <div style="margin-top: 20px;">
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textCode">Job Code:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:TextBox ID="textCode" runat="server" CssClass="text" MaxLength="20" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="textCode" Display="Dynamic" ErrorMessage="Job Code is required." ForeColor="Red" SetFocusOnError="True" />
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textClientNo">Client Requisition No:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:TextBox ID="textClientNo" runat="server" CssClass="text" MaxLength="20"></asp:TextBox>
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="dropPostMon">Posting Date:</asp:Label>
                </span>
                <span style="margin-left: 5px; margin-right: 5px;">Month:
				<asp:DropDownList ID="dropPostMon" runat="server" CssClass="text" Width="60">
                    <asp:ListItem Text="Jan" Value="1" />
                    <asp:ListItem Text="Feb" Value="2" />
                    <asp:ListItem Text="Mar" Value="3" />
                    <asp:ListItem Text="Apr" Value="4" />
                    <asp:ListItem Text="May" Value="5" />
                    <asp:ListItem Text="Jun" Value="6" />
                    <asp:ListItem Text="Jul" Value="7" />
                    <asp:ListItem Text="Aug" Value="8" />
                    <asp:ListItem Text="Sep" Value="9" />
                    <asp:ListItem Text="Oct" Value="10" />
                    <asp:ListItem Text="Nov" Value="11" />
                    <asp:ListItem Text="Dec" Value="12" />
                </asp:DropDownList>
                    <asp:Label runat="server" AssociatedControlID="dropPostDay">Day:</asp:Label>
                    <asp:DropDownList ID="dropPostDay" runat="server" CssClass="text" Width="60">
                        <asp:ListItem Text="1" />
                        <asp:ListItem Text="2" />
                        <asp:ListItem Text="3" />
                        <asp:ListItem Text="4" />
                        <asp:ListItem Text="5" />
                        <asp:ListItem Text="6" />
                        <asp:ListItem Text="7" />
                        <asp:ListItem Text="8" />
                        <asp:ListItem Text="9" />
                        <asp:ListItem Text="10" />
                        <asp:ListItem Text="11" />
                        <asp:ListItem Text="12" />
                        <asp:ListItem Text="13" />
                        <asp:ListItem Text="14" />
                        <asp:ListItem Text="15" />
                        <asp:ListItem Text="16" />
                        <asp:ListItem Text="17" />
                        <asp:ListItem Text="18" />
                        <asp:ListItem Text="19" />
                        <asp:ListItem Text="20" />
                        <asp:ListItem Text="21" />
                        <asp:ListItem Text="22" />
                        <asp:ListItem Text="23" />
                        <asp:ListItem Text="24" />
                        <asp:ListItem Text="25" />
                        <asp:ListItem Text="26" />
                        <asp:ListItem Text="27" />
                        <asp:ListItem Text="28" />
                        <asp:ListItem Text="29" />
                        <asp:ListItem Text="30" />
                        <asp:ListItem Text="31" />
                    </asp:DropDownList>
                    <asp:Label runat="server" AssociatedControlID="dropPostYear">Year:</asp:Label>
                    <asp:DropDownList ID="dropPostYear" runat="server" CssClass="text" Width="80">
                        <asp:ListItem Text="2011" />
                        <asp:ListItem Text="2012" />
                        <asp:ListItem Text="2013" />
                        <asp:ListItem Text="2014" />
                        <asp:ListItem Text="2015" />
                        <asp:ListItem Text="2016" />
                        <asp:ListItem Text="2017" />
                        <asp:ListItem Text="2018" />
                        <asp:ListItem Text="2019" />
                        <asp:ListItem Text="2020" />
                    </asp:DropDownList>
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textTitle">Title:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:TextBox ID="textTitle" runat="server" CssClass="text" MaxLength="255"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="textTitle" Display="Dynamic" ErrorMessage="Job Title is required." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="radioFull">Type:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:RadioButton ID="radioContract" runat="server" GroupName="type" Text="Contract"></asp:RadioButton>
                    <asp:RadioButton ID="radioFull" runat="server" GroupName="type" Text="Full Time"></asp:RadioButton>
                    <asp:RadioButton ID="radioHire" runat="server" GroupName="type" Text="Contract to Hire"></asp:RadioButton>
                </span>
            </div>
            <div style="height: 450px">
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="Editor1">Description:</asp:Label>
                </span>
                <span class="spanTxt">
                    <telerik:RadEditor ID="Editor1" runat="server" AutoResizeHeight="false" ContentAreaMode="Iframe" Height="430" StripFormattingOptions="MSWordRemoveAll" Width="95%">
                        <%--OnClientLoad="ClientLoad"--%>
                        <Modules>
                            <telerik:EditorModule Name="RadEditorDomInspector" />
                            <telerik:EditorModule Name="RadEditorNodeInspector" Visible="false" Enabled="true" />
                            <telerik:EditorModule Name="RadEditorHtmlInspector" Visible="false" Enabled="true" />
                        </Modules>
                        <Tools>
                            <telerik:EditorToolGroup Tag="File">
                                <telerik:EditorTool Name="Undo" ShortCut="CTRL+Z" />
                                <telerik:EditorTool Name="Redo" ShortCut="CTRL+Y" />
                                <telerik:EditorSeparator />
                                <telerik:EditorTool Name="Cut" ShortCut="CTRL+X" />
                                <telerik:EditorTool Name="Copy" ShortCut="CTRL+C" />
                                <telerik:EditorTool Name="Paste" ShortCut="CTRL+V" />
                                <telerik:EditorTool Name="PasteFromWordNoFontsNoSizes" />
                                <telerik:EditorTool Name="PastePlainText" />
                                <telerik:EditorSeparator />
                                <telerik:EditorTool Name="Print" ShortCut="CTRL+P" />
                                <telerik:EditorTool Name="AjaxSpellCheck" ShortCut="F7" />
                                <telerik:EditorTool Name="FindAndReplace" ShortCut="CTRL+F" />
                            </telerik:EditorToolGroup>
                            <telerik:EditorToolGroup Tag="Format">
                                <telerik:EditorTool Name="FontSize" />
                                <telerik:EditorTool Name="Bold" />
                                <telerik:EditorTool Name="Italic" />
                                <telerik:EditorTool Name="Underline" />
                                <telerik:EditorTool Name="ForeColor" />
                                <telerik:EditorTool Name="BackColor" />
                                <telerik:EditorSeparator />
                                <telerik:EditorTool Name="JustifyLeft" />
                                <telerik:EditorTool Name="JustifyCenter" />
                                <telerik:EditorTool Name="JustifyRight" />
                                <telerik:EditorTool Name="JustifyFull" />
                                <telerik:EditorTool Name="JustifyNone" />
                                <telerik:EditorSeparator />
                                <telerik:EditorTool Name="LinkManager" ShortCut="CTRL+K" />
                                <telerik:EditorTool Name="InsertUnorderedList" />
                                <telerik:EditorTool Name="InsertOrderedList" />
                                <telerik:EditorTool Name="InsertHorizontalRule" />
                                <telerik:EditorSeparator />
                                <telerik:EditorTool Name="ConvertToUpper" />
                                <telerik:EditorTool Name="ConvertToLower" />
                                <telerik:EditorSeparator />
                                <telerik:EditorTool Name="InsertDate" />
                                <telerik:EditorTool Name="InsertTime" />
                                <telerik:EditorSeparator />
                                <telerik:EditorTool Name="FormatStripper" />
                            </telerik:EditorToolGroup>
                        </Tools>
                    </telerik:RadEditor>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Editor1" Display="Dynamic" ErrorMessage="Job Description is required." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textShortDesc">Short Description:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:TextBox ID="textShortDesc" runat="server" CssClass="text" MaxLength="140" Text="" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="textShortDesc" Display="Dynamic" ErrorMessage="Short Description is required." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </span>
            </div>
            <div id="divLoc">
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textLocation">Location:</asp:Label>
                </span>
                <span style="margin-left: 5px; margin-right: 5px;">
                    <asp:TextBox ID="textLocation" runat="server" CssClass="text" MaxLength="100" Text="" Width="250px" />
                    <asp:DropDownList ID="dropState" runat="server" CssClass="text" Width="180px">
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
                    <asp:Label runat="server" AssociatedControlID="textZip">Zip Code:</asp:Label>
                    <asp:TextBox ID="textZip" runat="server" CssClass="text" MaxLength="10" Text="" Width="100px" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="textLocation" Display="Dynamic" ErrorMessage="Location is required." ForeColor="Red" SetFocusOnError="True" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="textZip" Display="Dynamic" ErrorMessage="Zip Code is required" ForeColor="Red" SetFocusOnError="True" Text="*" />
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textShort">Short Link:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:TextBox ID="textShort" runat="server" CssClass="text" MaxLength="255" Text="" />
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textPerson">Contact Person:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:TextBox ID="textPerson" runat="server" CssClass="text" MaxLength="100" Text="" />
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textLocation">Contact Phone:</asp:Label>
                </span>
                <span class="spanTxt">
                    <ew:MaskedTextBox ID="textPhone" runat="server" CssClass="text" Mask="(999) 999-9999" MaxLength="20" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></ew:MaskedTextBox>
                    <asp:CheckBox ID="checkShowPhone" runat="server" Text="Show in Job Posting?" Style="margin-left: 15px"></asp:CheckBox>
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="textLocation">Contact Email:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:TextBox ID="textEmail" runat="server" CssClass="text" MaxLength="255"></asp:TextBox>
               	    <asp:CheckBox ID="checkShowEmail" runat="server" Text="Show in Job Posting?" Style="margin-left: 15px"></asp:CheckBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textEmail" CssClass="validator" Display="Dynamic" ErrorMessage="Invalid EMail, please enter again." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="dropExpMon">Expiry Date:</asp:Label>
                </span>
                <span style="margin-left: 5px; margin-right: 5px;">Month:
				<asp:DropDownList ID="dropExpMon" runat="server" CssClass="text" Width="60">
                    <asp:ListItem Text="Jan" Value="1" />
                    <asp:ListItem Text="Feb" Value="2" />
                    <asp:ListItem Text="Mar" Value="3" />
                    <asp:ListItem Text="Apr" Value="4" />
                    <asp:ListItem Text="May" Value="5" />
                    <asp:ListItem Text="Jun" Value="6" />
                    <asp:ListItem Text="Jul" Value="7" />
                    <asp:ListItem Text="Aug" Value="8" />
                    <asp:ListItem Text="Sep" Value="9" />
                    <asp:ListItem Text="Oct" Value="10" />
                    <asp:ListItem Text="Nov" Value="11" />
                    <asp:ListItem Text="Dec" Value="12" />
                </asp:DropDownList>
                    <asp:Label runat="server" AssociatedControlID="dropExpDay">Day:</asp:Label>
                    <asp:DropDownList ID="dropExpDay" runat="server" CssClass="text" Width="60">
                        <asp:ListItem Text="1" />
                        <asp:ListItem Text="2" />
                        <asp:ListItem Text="3" />
                        <asp:ListItem Text="4" />
                        <asp:ListItem Text="5" />
                        <asp:ListItem Text="6" />
                        <asp:ListItem Text="7" />
                        <asp:ListItem Text="8" />
                        <asp:ListItem Text="9" />
                        <asp:ListItem Text="10" />
                        <asp:ListItem Text="11" />
                        <asp:ListItem Text="12" />
                        <asp:ListItem Text="13" />
                        <asp:ListItem Text="14" />
                        <asp:ListItem Text="15" />
                        <asp:ListItem Text="16" />
                        <asp:ListItem Text="17" />
                        <asp:ListItem Text="18" />
                        <asp:ListItem Text="19" />
                        <asp:ListItem Text="20" />
                        <asp:ListItem Text="21" />
                        <asp:ListItem Text="22" />
                        <asp:ListItem Text="23" />
                        <asp:ListItem Text="24" />
                        <asp:ListItem Text="25" />
                        <asp:ListItem Text="26" />
                        <asp:ListItem Text="27" />
                        <asp:ListItem Text="28" />
                        <asp:ListItem Text="29" />
                        <asp:ListItem Text="30" />
                        <asp:ListItem Text="31" />
                    </asp:DropDownList>
                    <asp:Label runat="server" AssociatedControlID="dropExpYear">Year:</asp:Label>
                    <asp:DropDownList ID="dropExpYear" runat="server" CssClass="text" Width="80">
                        <asp:ListItem Text="2012" />
                        <asp:ListItem Text="2013" />
                        <asp:ListItem Text="2014" />
                        <asp:ListItem Text="2015" />
                        <asp:ListItem Text="2016" />
                        <asp:ListItem Text="2017" />
                        <asp:ListItem Text="2018" />
                        <asp:ListItem Text="2019" />
                        <asp:ListItem Text="2020" />
                    </asp:DropDownList>
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="checkOFCCP">OFCCP Required?:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:CheckBox ID="checkOFCCP" runat="server" Text="Yes" />
                </span>
            </div>
            <div>
                <span class="spanLbl">
                    <asp:Label runat="server" AssociatedControlID="checkStatus">Status?:</asp:Label>
                </span>
                <span class="spanTxt">
                    <asp:CheckBox ID="checkStatus" runat="server" Text="Enabled" />
                </span>
            </div>
            <div>
                <span style="padding-left: 140px; width: 400px;">
                    <asp:ValidationSummary runat="server" ShowMessageBox="true" ShowSummary="false" />
                    <asp:Button ID="buttonSubmit" runat="server" OnClick="buttonSubmit_Click" Style="margin-left: 100px" Text="Submit" UseSubmitBehavior="false" />
                    <%--OnClientClick=" javascript:SetJobDesc(); " --%>
                    <input name="buttonReset" style="margin-left: 15px;" type="reset" value="Reset" />
                    <input name="buttonBack" onclick=" javascript: document.location.href = 'adminjobs.aspx'; " style="margin-left: 25px;" type="button" value="Back to Jobs Listing" />
                    <asp:Button ID="buttonRepost" runat="server" OnClick="buttonRepost_Click" Style="margin-left: 100px" Text="Repost" />
                </span>
            </div>
			<!-- #EndEditable -->
		</div>
	</form>
	<div class="td3 copyAdmin">
		<uc1:copy ID="copy" runat="server" />
	</div>
	<!-- #BeginEditable "Script" -->
    <script type="text/javascript">
        var _id = "< %= GetID() %>";
    </script>
	<!-- #EndEditable -->
</body>

<!-- #EndTemplate -->

</html>
