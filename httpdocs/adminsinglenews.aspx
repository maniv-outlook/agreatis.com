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
				using (SqlCommand _command = new SqlCommand("GetSingleNews", _con) { CommandType = CommandType.StoredProcedure })
				{
					_command.Parameters.AddWithValue("@Id", _id);
					_con.Open();
					using (SqlDataReader _read = _command.ExecuteReader())
					{
						while (_read.Read())
						{
							textTitle.Text = _read.GetString(0);
							textDescription.Text = _read.GetString(1);
							textMoreLink.Text = _read.IsDBNull(2) ? "" : _read.GetString(2);
							DateTime _dt1 = _read.GetDateTime(3);
							dropExpMon.Text = _dt1.Month.ToString();
							dropExpYear.Text = _dt1.Year.ToString();
							dropExpDay.Text = _dt1.Day.ToString();
							DateTime _dt = _read.GetDateTime(4);
							dropPostMon.Text = _dt.Month.ToString();
							dropPostYear.Text = _dt.Year.ToString();
							dropPostDay.Text = _dt.Day.ToString();
						}
					}
				}
			}
		}
		else
		{
			dropExpDay.Text = "31";
			dropExpMon.Text = "12";
			dropExpYear.Text = "2020";
			DateTime _dt = DateTime.Today;
			dropPostMon.Text = _dt.Month.ToString();
			dropPostYear.Text = _dt.Year.ToString();
			dropPostDay.Text = _dt.Day.ToString();
		}
	}
	void buttonSubmit_Click(object sender, EventArgs e)
	{
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("SaveNews", _con) { CommandType = CommandType.StoredProcedure })
			{
				_command.Parameters.AddWithValue("@Id", _id == 0 ? (object)DBNull.Value : _id);
				_command.Parameters.AddWithValue("@Title", textTitle.Text);
				_command.Parameters.AddWithValue("@Description", textDescription.Text);
				_command.Parameters.AddWithValue("@MoreLink", string.IsNullOrWhiteSpace(textMoreLink.Text) ? (object)DBNull.Value : textMoreLink.Text);
				_command.Parameters.AddWithValue("@Expiry", new DateTime(Convert.ToInt32(dropExpYear.Text), Convert.ToInt32(dropExpMon.Text), Convert.ToInt32(dropExpDay.Text)));
				_command.Parameters.AddWithValue("@Date", new DateTime(Convert.ToInt32(dropPostYear.Text), Convert.ToInt32(dropPostMon.Text), Convert.ToInt32(dropPostDay.Text)));
				_con.Open();
				_command.ExecuteNonQuery();
				Response.Redirect("adminnews.aspx", true);
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
			width: 140px;
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
						ID="reqTitle" runat="server" ErrorMessage="News Title is required." ControlToValidate="textTitle"
						Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textDescription">
				Description:</label></span> <span>
					<asp:TextBox runat="server" ID="textDescription" Width="500px" MaxLength="1000" TextMode="MultiLine"
						Rows="7" /><asp:RequiredFieldValidator ID="reqDesc" runat="server" ErrorMessage="Article Description is required."
							ControlToValidate="textDescription" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
	</div>
	<div>
		<span class="spanLbl">
			<label for="textMoreLink">
				Link for Article:</label></span> <span>
					<asp:TextBox runat="server" ID="textMoreLink" Width="500px" MaxLength="5000" Text="" /><asp:RegularExpressionValidator
						ID="regLink" runat="server" ErrorMessage="Link should be a valid Internet URL."
						ControlToValidate="textMoreLink" Display="None" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator></span>
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
					<%--<asp:TextBox runat="server" ID="textExpiry" Width="100px" MaxLength="20" /><asp:CompareValidator
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
