<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="utf-8" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	void Page_Init(object sender, EventArgs e)
	{
		if (!IsPostBack && !string.IsNullOrWhiteSpace(Request.QueryString["id"]))
		{
			int _id = 0;
			Int32.TryParse(Request.QueryString["id"], out _id);
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
							divPosted.InnerHtml = _read.GetDateTime(8).ToString("dddd, MMMM dd, yyyy");
							divLocation.InnerHtml = "<span>Location: </span>" + _read.GetString(3);
							divDesc.InnerHtml = _read.GetString(2);
							if (_read.IsDBNull(4) && _read.IsDBNull(5) && _read.IsDBNull(6))
							{
								divContact.Visible = false;
							}
							else
							{
								if (_read.IsDBNull(4) || _read.GetString(4).Trim() == "")
								{
									divPerson.Visible = false;
								}
								else
								{
									divPerson.InnerHtml = "<span>Name: </span>" + _read.GetString(4);
								}
								if (_read.IsDBNull(5) || _read.GetString(5).Trim() == "")
								{
									divPhone.Visible = false;
								}
								else
								{
									divPhone.InnerHtml = "<span>Phone: </span>" + _read.GetString(5);
								}
								if (_read.IsDBNull(6) || _read.GetString(6).Trim() == "")
								{
									divEmail.Visible = false;
								}
								else
								{
									divEmail.InnerHtml = "<span>Email: </span>" + _read.GetString(6);
								}
							}
							buttonRegister.Attributes["onclick"] = "javascript:document.location.href='job_apply.aspx?id=" + _id + "'";
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
<table width="984" border="0" cellspacing="0" cellpadding="0"><tr><td style="vertical-align:top"><div class="tdHead" style="width:244px; vertical-align:top"><h2><!-- InstanceBeginEditable name="EditRegion2" -->
									Careers<!-- InstanceEndEditable --></h2></div><div style="vertical-align:top; width:244px"><!-- InstanceBeginEditable name="Menu" -->
								<table width="240px" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td style="width: 22px">&nbsp;										</td>
										<td class="tdContent highlightMenu">
											<a href="careers.aspx">Careers</a> </td>
									</tr>
									<tr>
										<td style="width: 22px">&nbsp;										</td>
										<td class="tdContent">
											<a href="careers_new.aspx">Current Openings@Titan</a>										</td>
									</tr>
								</table>
								<!-- InstanceEndEditable --></div></td><td style="width:740px; vertical-align:top; padding-top:10px"><div style="margin-bottom:10px; width:100%; text-align:left"><asp:SiteMapPath ID="siteMap" runat="server"  NodeStyle-CssClass="nodestyle" CurrentNodeStyle-CssClass="currentnodestyle"></asp:SiteMapPath></div><!-- InstanceBeginEditable name="RIGHT IMAGE" -->
							<div style="padding-top: 18px">
											<span class="dTit">Job Details</span></div><div style="padding: 20px;">
							<h3 id="hTitle" runat="server" class="hTit">
							</h3>
							<div id="divPosted" runat="server" class="dDat">
							</div>
							<div id="divLocation" runat="server" class="dLoc">
							</div>
							<div id="divDesc" runat="server" class="dDesc">
							</div>
							<div id="divContact" runat="server">
								<h4 style="width: 90%; border-bottom: 1px solid #bbb;">Contact Details</h4>
							</div>
							<div id="divPerson" runat="server" class="dContact">
							</div>
							<div id="divPhone" runat="server" class="dContact">
							</div>
							<div id="divEmail" runat="server" class="dContact">
							</div>
							<input type="button" runat="server" id="buttonRegister" value="Apply for this Job" style="margin-top: 35px;" />
							</div><!-- InstanceEndEditable --></td>
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
