<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
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
				using (SqlCommand _command = new SqlCommand("GetSingleSeminars", _con) { CommandType = CommandType.StoredProcedure })
				{
					_command.Parameters.AddWithValue("@Id", _id);
					_con.Open();
					using (SqlDataReader _read = _command.ExecuteReader())
					{
						while (_read.Read())
						{
							textTitle.Text = _read.GetString(0);
							DateTime _dt = _read.GetDateTime(1);
							dropSemMon.Text = _dt.Month.ToString();
							dropSemYear.Text = _dt.Year.ToString();
							dropSemDay.Text = _dt.Day.ToString();
							dropSemHr.Text = _dt.Hour.ToString();
							dropSemMin.Text = _dt.Minute.ToString();
							//textSeminarDate.Text = _read.GetString(1);
							textLocation.Text = _read.IsDBNull(2) ? "" : _read.GetString(2);
							textPresenter.Text = _read.GetString(3);
							textDescription.Text = _read.GetString(4);
							textEmail.Text = _read.GetString(5);
							DateTime _dt1 = _read.GetDateTime(6);
							dropExpMon.Text = _dt1.Month.ToString();
							dropExpYear.Text = _dt1.Year.ToString();
							dropExpDay.Text = _dt1.Day.ToString();
							//textExpiry.Text = _read.GetDateTime(6).ToShortDateString();
							checkWebinar.Checked = _read.GetBoolean(7);
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
			using (SqlCommand _command = new SqlCommand("SaveSeminar", _con) { CommandType = CommandType.StoredProcedure })
			{
				_command.Parameters.AddWithValue("@Id", _id == 0 ? (object)DBNull.Value : _id);
				_command.Parameters.AddWithValue("@Title", textTitle.Text);
				_command.Parameters.AddWithValue("@SeminarDate", new DateTime(Convert.ToInt32(dropSemYear.Text), Convert.ToInt32(dropSemMon.Text), Convert.ToInt32(dropSemDay.Text), Convert.ToInt32(dropSemHr.Text), Convert.ToInt32(dropSemMin.Text), 0));
				_command.Parameters.AddWithValue("@Location", checkWebinar.Checked ? (object)DBNull.Value : textLocation.Text);
				_command.Parameters.AddWithValue("@Presenter", textPresenter.Text);
				_command.Parameters.AddWithValue("@Description", textDescription.Text);
				_command.Parameters.AddWithValue("@Email", textEmail.Text);
				_command.Parameters.AddWithValue("@Expiry", new DateTime(Convert.ToInt32(dropExpYear.Text), Convert.ToInt32(dropExpMon.Text), Convert.ToInt32(dropExpDay.Text)));
				_command.Parameters.AddWithValue("@Webinar", checkWebinar.Checked);
				_con.Open();
				_command.ExecuteNonQuery();
				Response.Redirect("adminseminars.aspx", true);
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
	<title></title>
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
	<div>
		<span class="spanLbl">
			<label for="textTitle">
				Title:</label></span> <span>
					<asp:TextBox runat="server" ID="textTitle" Width="500px" MaxLength="255" /><asp:RequiredFieldValidator
						ID="reqTitle" runat="server" ErrorMessage="Seminar Title is required." ControlToValidate="textTitle"
						Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textSeminarDate">
				Seminar Date / Time:</label></span> <span>Month:
					<asp:DropDownList runat="server" ID="dropSemMon">
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
					<asp:DropDownList runat="server" ID="dropSemDay">
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
					<asp:DropDownList runat="server" ID="dropSemYear">
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
					Hour:
					<asp:DropDownList runat="server" ID="dropSemHr">
						<asp:ListItem Text="00" />
						<asp:ListItem Text="01" />
						<asp:ListItem Text="02" />
						<asp:ListItem Text="03" />
						<asp:ListItem Text="04" />
						<asp:ListItem Text="05" />
						<asp:ListItem Text="06" />
						<asp:ListItem Text="07" />
						<asp:ListItem Text="08" />
						<asp:ListItem Text="09" />
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
					</asp:DropDownList>
					Mins:
					<asp:DropDownList runat="server" ID="dropSemMin">
						<asp:ListItem Text="00" />
						<asp:ListItem Text="05" />
						<asp:ListItem Text="10" />
						<asp:ListItem Text="15" />
						<asp:ListItem Text="20" />
						<asp:ListItem Text="25" />
						<asp:ListItem Text="30" />
						<asp:ListItem Text="35" />
						<asp:ListItem Text="40" />
						<asp:ListItem Text="45" />
						<asp:ListItem Text="50" />
						<asp:ListItem Text="55" />
					</asp:DropDownList>
					<%--<asp:TextBox runat="server" ID="textSeminarDate" Width="100px" MaxLength="30" /><asp:RequiredFieldValidator
						ID="reqSemDate" runat="server" ErrorMessage="Seminar Date/Time is required."
						ControlToValidate="textSeminarDate" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
					Format: mm/dd/yyyy hh:mm AM/PM (Example: 02/28/2012 03:15 PM)--%></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textDescription">
				Description:</label></span> <span>
					<asp:TextBox runat="server" ID="textDescription" Width="500px" MaxLength="2000" TextMode="MultiLine"
						Rows="7" /><asp:RequiredFieldValidator ID="reqDesc" runat="server" ErrorMessage="Seminar Description is required."
							ControlToValidate="textDescription" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="checkWebinar">
				Is this a Webinar?:</label></span> <span>
					<asp:CheckBox ID="checkWebinar" runat="server" />
					Location would be <i>null</i> if Webinar during save</span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textLocation">
				Location:</label></span> <span>
					<asp:TextBox runat="server" ID="textLocation" Width="500px" MaxLength="255" Text="" /></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textPresenter">
				Presenter:</label></span> <span>
					<asp:TextBox runat="server" ID="textPresenter" Width="500px" MaxLength="255" Text="" /><asp:RequiredFieldValidator
						ID="reqPresenter" runat="server" ErrorMessage="Presenter is required." ControlToValidate="textPresenter"
						Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textEmail">
				Email:</label></span> <span>
					<asp:TextBox runat="server" ID="textEmail" Width="500px" MaxLength="255" Text="" /><asp:RequiredFieldValidator
						ID="reqEmail" runat="server" ErrorMessage="Contact Email is required." ControlToValidate="textEmail"
						Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
							ID="regEmail" runat="server" ErrorMessage="Enter email is proper format." ControlToValidate="textEmail"
							Display="None" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
						</asp:RegularExpressionValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textExpiry">
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
					<%--<asp:TextBox runat="server" ID="textExpiry" Width="100px" MaxLength="20" /><asp:RequiredFieldValidator
						ID="reqExpiry" runat="server" ErrorMessage="Expiry Date is required." ControlToValidate="textExpiry"
						Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:CompareValidator
							ID="comExpiry" runat="server" ErrorMessage="Enter a valid Date." ControlToValidate="textExpiry"
							Display="None" Operator="DataTypeCheck" SetFocusOnError="True" Type="Date"></asp:CompareValidator>--%></span>
	</div>
	<div>
		<span style="width: 400px; padding-left: 140px">
			<asp:ValidationSummary ID="validNews" runat="server" />
			<asp:Button Text="Submit" ID="buttonSubmit" runat="server" OnClick="buttonSubmit_Click"
				Style="margin-left: 100px" />
			<input type="reset" name="buttonReset" value="Reset" style="margin-left: 15px;" />
		</span>
	</div>
	</form>
</body>
</html>
