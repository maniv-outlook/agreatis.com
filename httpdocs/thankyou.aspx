<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %><html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<title>Thank You!</title>
    <link href="pivotal.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body{
margin:15px;
}
td{
vertical-align:top;
}
</style>
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
<table cellpadding="0" cellspacing="0" class="maintbl">
	<tr>
		<td class="td1">
			<img src="images/transpy.gif" alt="Transparent" name="imgTranspy1" usemap="#Map" id="imgTranspy1" />
<map id="Map" name="Map">
				<area alt="Why Pivotal?" coords="578,75,704,113" href="why_agreatis.aspx" shape="rect" />
				<area alt="Staffing Redefined" coords="379,75,552,113" href="stf_redfnd.aspx" shape="rect" />
				<area alt="Home" coords="296,75,357,113" href="index.aspx" shape="rect" />
				<area alt="Home" coords="1,25,285,116" href="index.aspx" shape="rect" />
			</map>
		</td>
  </tr>
	
	<tr>
		<td class="td2">
			<img id="imgTranspy2" alt="Transparent" src="images/transpy.gif" usemap="#Map2" />
	  <map id="Map2" name="Map2">
				<area alt="Pivotal Servicesa" coords="39,2,208,45" href="services.aspx" shape="rect" />
				<area alt="Pivotal Solutions" coords="225,4,392,47" href="solutions.aspx" shape="rect" />
				<area alt="Career Connections" coords="416,4,595,47" href="career_conn.aspx" shape="rect" />
				<area alt="Work@Pivotal" coords="621,4,742,47" href="workat.aspx" shape="rect" />
				<area alt="Contact Us" coords="771,4,879,47" href="contactus.aspx" shape="rect" />
			</map>
		</td>
  </tr>
	<tr>
		<td class="tdContent" valign="top">
	<div style="line-height:300%"><h1>
		Thank you for submitting the information. The recruiter assigned to the 
		Job Requisition will contact you to discuss about  your candidature for 
		the potential job opening.</h1>
	</div>
	<div  style="width:100%; text-align:center">
		<a href="careers_new.aspx">Back to Careers page!</a>
	</div>
</td>
	</tr>
	<tr>
		<td class="td3">
			<uc1:copy id="copy" runat="server" />
		</td>
	</tr>
</table>
<script type="text/javascript">
	$(window).load(function() 
	{
		$('#test').hide('fast');
		//$('#slider').hide('fast');
		setTimeout(function(){
			$('#imgLeft2').attr('src',img.src);
			$('#test').fadeIn(5000);
		}, 1000); 
		$('#leftpanel').cycle({
			fx:'fade', 
			autostop:1, 
			delay:500, 
			timeout:5000
		})
		setTimeout(function(){
			//$('#slider').fadeIn('slow');
		    $('#slider').cycle({
		    	fx:'fade', 
		    	timeout:8000, 
		    	continuous:0, 
		    	speed:6000, 
		    	sync:1,
		    	delay:3000
		    });
		}, 2000);
	})
</script>


</body>
</html>