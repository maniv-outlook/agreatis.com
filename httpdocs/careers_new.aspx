<%@ Page Language="C#" EnableViewState="false" EnableViewStateMac="false" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	void Page_Init(object sender, EventArgs e)
	{
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("GetClientJobs", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_con.Open();
				_command.Parameters.AddWithValue("@Client", true);
				using (SqlDataReader _read = _command.ExecuteReader())
				{
					if (_read.HasRows)
					{
						while (_read.Read())
						{
							using (HtmlTableRow _div = new HtmlTableRow())
							{
								using (HtmlTableCell _span = new HtmlTableCell())
								{
									using (HyperLink _link = new HyperLink())
									{
										_link.NavigateUrl = "job_details.aspx?id=" + _read.GetInt32(0);
										_link.Text = _read.GetString(1);
										_span.Controls.Add(_link);
									}
									_span.Style["Width"] = "25%";
									_div.Cells.Add(_span);
								}
								using (HtmlTableCell _span = new HtmlTableCell())
								{
									_span.InnerHtml = _read.GetString(2);
									_span.Style["Width"] = "40%";
									_div.Cells.Add(_span);
								}
								using (HtmlTableCell _span = new HtmlTableCell())
								{
									_span.InnerHtml = _read.GetString(4);
									_span.Style["Width"] = "15%";
									_div.Cells.Add(_span);
								}
								using (HtmlTableCell _span = new HtmlTableCell())
								{
									_span.InnerHtml = _read.GetString(3);
									_span.Style["Width"] = "20%";
									_div.Cells.Add(_span);
								}
								tJob.Rows.Add(_div);
							}
						}
					}
					else
					{
						using (HtmlTableRow _div = new HtmlTableRow())
						{
							using (HtmlTableCell _cell = new HtmlTableCell())
							{
								_cell.ColSpan = 3;
								_cell.Style["color"] = "#8f0100";
								_cell.Style["padding-top"] = "50px";
								_cell.Style["padding-left"] = "50px";
								_cell.InnerHtml = "<em><strong>There are no Jobs currently posted.</strong></em>";
								_div.Cells.Add(_cell);
							}
							tJob.Rows.Add(_div);
						}
					}
				}
			}
		}
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
	<title>AGREATIS Careers</title>
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
				<div style="padding-top: 18px">
					<span class="dTit">Current Positions @ AGREATIS&#8480;</span></div>
				<div>
					<span class="dTit" style="font-size: 12pt;">Current Open Hot Job Positions we are staffing
						for our major client companies</span></div>
				<table id="tJob" runat="server" cellpadding="0" cellspacing="0" style="margin-top: 15px">
					<tr>
						<th style="width: 25%">
							Job Code
						</th>
						<th style="width: 40%">
							Position
						</th>
						<th style="width: 15%">
							Type
						</th>
						<th style="width: 20%">
							City/State
						</th>
					</tr>
				</table>
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
