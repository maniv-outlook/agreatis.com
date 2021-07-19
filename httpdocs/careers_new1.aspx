<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	void Page_Init(object sender, EventArgs e)
	{
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("GetClientJobs", _con) { CommandType = CommandType.StoredProcedure })
			{
				_con.Open();
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
									_div.Cells.Add(_span);
								}
								using (HtmlTableCell _span = new HtmlTableCell())
								{
									_span.InnerHtml = _read.GetString(2);
									_div.Cells.Add(_span);
								}
								using (HtmlTableCell _span = new HtmlTableCell())
								{
									_span.InnerHtml = _read.GetString(3);
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
<table width="984" border="0" cellspacing="0" cellpadding="0"><tr><td style="vertical-align:top"><div class="tdHead" style="width:244px; vertical-align:top"><h2><!-- InstanceBeginEditable name="EditRegion2" -->Careers<!-- InstanceEndEditable --></h2></div><div style="vertical-align:top; width:244px"><!-- InstanceBeginEditable name="Menu" -->
  <table width="240px" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td style="width: 22px">&nbsp;</td>
      <td class="tdContent highlightMenu"><a href="careers.aspx">Careers</a> </td>
    </tr>
    <tr>
      <td style="width: 22px">&nbsp;</td>
      <td class="tdContent">Current Openings@Titan </td>
    </tr>
    <tr>
      <td style="width: 22px">&nbsp;</td>
      <td class="tdContent"><a href="resume_apply.aspx">Post Your Resume</a></td>
    </tr>
  </table>
<!-- InstanceEndEditable --></div></td><td style="width:740px; vertical-align:top; padding-top:10px"><div style="margin-bottom:10px; width:100%; text-align:left"><asp:SiteMapPath ID="siteMap" runat="server"  NodeStyle-CssClass="nodestyle" CurrentNodeStyle-CssClass="currentnodestyle"></asp:SiteMapPath></div><!-- InstanceBeginEditable name="RIGHT IMAGE" --><div style="padding-top: 18px">
											<span class="dTit">Current Openings @ Titan</span></div>
																	<table cellspacing="0" cellpadding="0" id="tJob" runat="server" style="margin-top: 15px">
								<tr>
									<th style="width: 27%">
										Job Code
									</th>
									<th style="width: 46%">
										Position
									</th>
									<th style="width: 27%">
										City/State
									</th>
								</tr>
							</table>

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
