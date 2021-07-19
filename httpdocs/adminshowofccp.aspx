<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Globalization" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	protected void Page_Load(object sender, EventArgs e)
	{
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("ShowOFCCPJobs", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_command.Parameters.AddWithValue("@ShowAll", checkShowAll.Checked);
				_con.Open();
				using (SqlDataReader _read = _command.ExecuteReader())
				{
					dropJob.Items.Add(new ListItem("--Select--", "0"));
					if (_read.HasRows)
					{
						while (_read.Read())
						{
							dropJob.Items.Add(new ListItem(_read.GetString(1), _read.GetInt32(0).ToString(CultureInfo.InvariantCulture)));
						}
					}
				}
			}
		}
		if (Request.Form["dropJob"] == null || Request.Form["dropJob"] == "")
		{
			hidJob.Value = "0";
			return;
		}
		hidJob.Value = Request.Form["dropJob"];
		DataTable _dt = new DataTable();
		_dt.Columns.Add("Id", typeof(int));
		_dt.Columns.Add("Name", typeof(string));
		_dt.Columns.Add("Email", typeof(string));
		_dt.Columns.Add("Phone", typeof(string));
		_dt.Columns.Add("DateApplied", typeof(DateTime));
		_dt.Columns.Add("State", typeof(string));
		_dt.Columns.Add("Gender", typeof(string));
		_dt.Columns.Add("Race", typeof(string));
		_dt.Columns.Add("VeteranStatus", typeof(string));
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("ShowAllResponses", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_command.Parameters.AddWithValue("@JobId", Request.Form["dropJob"]);
				_con.Open();
				using (SqlDataReader _read = _command.ExecuteReader())
				{
					if (!_read.HasRows)
					{
						return;
					}
					while (_read.Read())
					{
						DataRow _dr = _dt.NewRow();
						_dr["Id"] = _read.GetInt32(8);
						_dr["Name"] = _read.GetString(0);
						_dr["Email"] = _read.GetString(1);
						_dr["Phone"] = _read.GetString(2);
						_dr["DateApplied"] = _read.IsDBNull(3) ? DateTime.Now : _read.GetDateTime(3);
						_dr["State"] = _read.IsDBNull(4) ? "" : _read.GetString(4);
						string _gender = "";
						if (!_read.IsDBNull(5))
						{
							switch (_read.GetByte(5))
							{
								case 1:
									_gender = "Male";
									break;
								case 2:
									_gender = "Female";
									break;
								case 3:
									_gender = "Other";
									break;
								default:
									_gender = "Declined";
									break;
							}
						}
						_dr["Gender"] = _gender;
						string _race = "";
						if (!_read.IsDBNull(6))
						{
							switch (_read.GetByte(6))
							{
								case 1:
									_race = "Hispanic";
									break;
								case 2:
									_race = "White";
									break;
								case 3:
									_race = "Black";
									break;
								case 4:
									_race = "Native";
									break;
								case 5:
									_race = "Asian";
									break;
								case 6:
									_race = "Alaskan";
									break;
								case 7:
									_race = "Two or More";
									break;
								case 9:
									_race = "Unknown";
									break;
								case 10:
									_race = "Others";
									break;
								default:
									_race = "Declined";
									break;
							}
						}
						_dr["Race"] = _race;
						if (_read.IsDBNull(7) || _read.GetString(7) == "")
						{
							_dr["VeteranStatus"] = "None";
						}
						else
						{
							string _veteran = "";
							string[] _vet = _read.GetString(7).Split(new[] { ',' });
							foreach (string _v in _vet)
							{
								switch (_v)
								{
									case "S":
										if (_veteran == "")
										{
											_veteran = "Special";
										}
										else
										{
											_veteran += "<br/>Special";
										}
										break;
									case "V":
										if (_veteran == "")
										{
											_veteran = "Vietnam";
										}
										else
										{
											_veteran += "<br/>Vietnam";
										}
										break;
									case "O":
										if (_veteran == "")
										{
											_veteran = "Others";
										}
										else
										{
											_veteran += "<br/>Others";
										}
										break;
									case "U":
										if (_veteran == "")
										{
											_veteran = "Unknown";
										}
										else
										{
											_veteran += "<br/>Unknown";
										}
										break;
									case "D":
										if (_veteran == "")
										{
											_veteran = "Declined";
										}
										else
										{
											_veteran += "<br/>Declined";
										}
										break;
								}
							}
							_dr["VeteranStatus"] = _veteran;
						}
						_dt.Rows.Add(_dr);
					}
					_read.NextResult();
					while (_read.Read())
					{
						hJobName.InnerHtml = "Job Title:" + _read.GetString(0);
					}
				}
			}
		}
		gridJob.DataSource = _dt;
		gridJob.DataBind();
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
	<title>OFCCP Report</title>
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
							<uc1:leftpanel ID="lpanel" runat="server" />
						</td>
						<td>
							<uc1:rightpanel ID="rpanel" runat="server" />
						</td>
					</tr>
				</table> --%>
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
				<uc1:menu ID="menu" runat="server" />
				<div>
					<span class="spanLbl">
						<label for="textEmail">
							Select Job:</label></span> <span>
								<asp:DropDownList ID="dropJob" runat="server" AutoPostBack="True">
								</asp:DropDownList>
								<asp:CheckBox runat="server" ID="checkShowAll" Checked="True" Text="Show All Jobs"
									AutoPostBack="True" />
								<a href="javascript:ShowSummary()" style="margin-left: 45px; color: blue;">Show Summary</a>
								<input type="hidden" runat="server" id="hidJob" />
							</span>
				</div>
				<h2 id="hJobName" style="color: red" runat="server"></h2>
				<div>
					<asp:GridView ID="gridJob" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
						EmptyDataText="No Responses" ShowHeaderWhenEmpty="True" Width="100%">
						<Columns>
							<asp:BoundField DataField="Name" HeaderText="Name"></asp:BoundField>
							<asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
							<asp:BoundField DataField="Phone" HeaderText="Phone" />
							<asp:BoundField DataField="DateApplied" DataFormatString="{0:d}" HeaderText="Date" />
							<asp:BoundField DataField="State" HeaderText="State" />
							<asp:BoundField DataField="Gender" HeaderText="Gender" />
							<asp:BoundField DataField="Race" HeaderText="Race" />
							<asp:BoundField DataField="VeteranStatus" HeaderText="Veteran" HtmlEncode="False" />
						</Columns>
					</asp:GridView>
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
	<script type="text/javascript">
		function ShowSummary()
		{
			document.location.href='adminofccpsummary.aspx?id=' + $('#hidJob').val();
		}
	</script>
	<!-- #EndEditable -->
</body>

<!-- #EndTemplate -->

</html>
