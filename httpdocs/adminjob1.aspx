<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
	TagPrefix="ew" Namespace="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
	TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private int _id = 0;
	void Page_Init(object sender, EventArgs e)
	{
		if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
		{
			Int32.TryParse(Request.QueryString["id"], out _id);
		}
		if (!IsPostBack && _id != 0)
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
							textCode.Text = _read.GetString(0);
							textTitle.Text = _read.GetString(1);
							Editor1.Content = _read.GetString(2);
							textLocation.Text = _read.GetString(3);
							textPerson.Text = _read.GetString(4);
							textPhone.Text = _read.GetString(5);
							textEmail.Text = _read.GetString(6);
							DateTime _dt1 = _read.GetDateTime(7);
							dropExpMon.Text = _dt1.Month.ToString();
							dropExpYear.Text = _dt1.Year.ToString();
							dropExpDay.Text = _dt1.Day.ToString();
							DateTime _dt = _read.GetDateTime(8);
							dropPostMon.Text = _dt.Month.ToString();
							dropPostYear.Text = _dt.Year.ToString();
							dropPostDay.Text = _dt.Day.ToString();
							textClientNo.Text = _read.IsDBNull(9) ? "" : _read.GetString(9);
							checkOFCCP.Checked = _read.GetBoolean(10);
							textShort.Text = _read.GetString(11);
							//textExpiry.Text = _read.GetDateTime(7).ToShortDateString();
						}
					}
				}
			}
		}
		if (!IsPostBack && _id == 0)
		{
			DateTime _dt = DateTime.Today;
			dropPostMon.Text = _dt.Month.ToString();
			dropPostYear.Text = _dt.Year.ToString();
			dropPostDay.Text = _dt.Day.ToString();
			buttonRepost.Visible = false;
		}
	}

	void buttonSubmit_Click(object sender, EventArgs e)
	{
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("SaveJob", _con) { CommandType = CommandType.StoredProcedure })
			{
				_command.Parameters.AddWithValue("@Id", _id == 0 ? (object)DBNull.Value : _id);
				_command.Parameters.AddWithValue("@Code", textCode.Text);
				_command.Parameters.AddWithValue("@ClientReqNo", textClientNo.Text);
				_command.Parameters.AddWithValue("@Title", textTitle.Text);
				_command.Parameters.AddWithValue("@Description", Editor1.Content);
				_command.Parameters.AddWithValue("@Location", textLocation.Text);
				_command.Parameters.AddWithValue("@Person", textPerson.Text);
				_command.Parameters.AddWithValue("@Phone", textPhone.Text);
				_command.Parameters.AddWithValue("@Email", textEmail.Text);
				_command.Parameters.AddWithValue("@OFCCP", checkOFCCP.Checked);
				_command.Parameters.AddWithValue("@Short", textShort.Text);
				_command.Parameters.AddWithValue("@Expiry", new DateTime(Convert.ToInt32(dropExpYear.Text), Convert.ToInt32(dropExpMon.Text), Convert.ToInt32(dropExpDay.Text)));
				_command.Parameters.AddWithValue("@PostDate", new DateTime(Convert.ToInt32(dropPostYear.Text), Convert.ToInt32(dropPostMon.Text), Convert.ToInt32(dropPostDay.Text)));
				_con.Open();
				_command.ExecuteNonQuery();
				Response.Redirect("adminjobs.aspx", true);
			}
		}
	}

	void buttonRepost_Click(object sender, EventArgs e)
	{
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("Repost", _con) { CommandType = CommandType.StoredProcedure })
			{
				_command.Parameters.AddWithValue("@Id", _id == 0 ? (object)DBNull.Value : _id);
				_con.Open();
				_command.ExecuteNonQuery();
				Response.Redirect("adminjobs.aspx", true);
			}
		}
	}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<style type="text/css">
		.spanLbl
		{
			display: inline-block;
			font-weight: bold;
			text-align: right;
			width: 170px;
		}
	</style>
	<title>TITAN TECHNOLOGIES</title>
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
	<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
	<div>
		<span class="spanLbl">
			<label for="textCode">
				Job Code:</label></span> <span>
					<asp:TextBox runat="server" ID="textCode" Width="500px" MaxLength="20" /><asp:RequiredFieldValidator
						ID="RequiredFieldValidator1" runat="server" ErrorMessage="Job Code is required."
						ControlToValidate="textCode" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textClientNo">
				Client Requisition No:</label></span> <span>
					<asp:TextBox runat="server" ID="textClientNo" Width="500px" MaxLength="20" /><asp:RequiredFieldValidator
						ID="RequiredFieldValidatorClient" runat="server" ErrorMessage="Client Requisition No is required."
						ControlToValidate="textClientNo" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="dropPostMon">
				Posting Date:</label></span> <span>Month:
					<asp:DropDownList runat="server" ID="dropPostMon">
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
					Day:
					<asp:DropDownList runat="server" ID="dropPostDay">
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
					Year:
					<asp:DropDownList runat="server" ID="dropPostYear">
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
			<label for="textTitle">
				Title:</label></span> <span>
					<asp:TextBox runat="server" ID="textTitle" Width="500px" MaxLength="255" /><asp:RequiredFieldValidator
						ID="reqTitle" runat="server" ErrorMessage="Job Title is required." ControlToValidate="textTitle"
						Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textDescription">
				Description:</label></span> <span>
					<cc1:Editor ID="Editor1" runat="server" Width="80%" Height="450px" ClientIDMode="Predictable" />
					<%--<asp:TextBox runat="server" ID="textDescription" Width="500px" MaxLength="2000" TextMode="MultiLine"
						Rows="7" />--%><asp:RequiredFieldValidator ID="reqDesc" runat="server" ErrorMessage="Job Description is required."
							ControlToValidate="Editor1" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textLocation">
				Location:</label></span> <span>
					<asp:TextBox runat="server" ID="textLocation" Width="500px" MaxLength="100" Text="" /><asp:RequiredFieldValidator
						ID="RequiredFieldValidator2" runat="server" ErrorMessage="Job Location is required."
						ControlToValidate="textLocation" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>(City,
					StateCode example: Pittsburg, PA)</span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textPerson">
				Short Link:</label></span> <span>
					<asp:TextBox runat="server" ID="textShort" Width="500px" MaxLength="255" Text="" /></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textPerson">
				Contact Person:</label></span> <span>
					<asp:TextBox runat="server" ID="textPerson" Width="500px" MaxLength="100" Text="" /></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textLocation">
				Contact Phone:</label></span> <span>
					<ew:MaskedTextBox ID="textPhone" runat="server" CssClass="text" Mask="(999) 999-9999"
						MaxLength="20" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></ew:MaskedTextBox>
				</span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textLocation">
				Contact Email:</label></span> <span>
					<asp:TextBox CssClass="text" ID="textEmail" runat="server" MaxLength="255"></asp:TextBox>
					<asp:RegularExpressionValidator CssClass="validator" ID="RegularExpressionValidator1"
						runat="server" ErrorMessage="Invalid EMail, please enter again." ControlToValidate="textEmail"
						Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" />
				</span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="dropExpMon">
				Expiry Date:</label></span> <span>Month:
					<asp:DropDownList runat="server" ID="dropExpMon">
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
					Day:
					<asp:DropDownList runat="server" ID="dropExpDay">
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
					Year:
					<asp:DropDownList runat="server" ID="dropExpYear">
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
			<label for="checkOFCCP">
				OFCCP Required?:</label></span> <span>
				<asp:CheckBox ID="checkOFCCP" runat="server" />
				</span>
	</div>
	<div>
		<span style="width: 400px; padding-left: 140px">
			<asp:ValidationSummary ID="validJob" runat="server" ShowMessageBox="true" />
			<asp:Button Text="Submit" ID="buttonSubmit" runat="server" OnClick="buttonSubmit_Click"
				Style="margin-left: 100px" />
			<input type="reset" name="buttonReset" value="Reset" style="margin-left: 15px;" />
			<asp:Button Text="Repost" ID="buttonRepost" runat="server" OnClick="buttonRepost_Click"
				Style="margin-left: 100px" />
		</span>
	</div>
	</form>
</body>
</html>
