        ��  ��                  �      �����e                 
	<script src="scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
	<script src="scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var img = new Image();
		img.src = "images/left_pnl_img_2.jpg";
	</script>
	<script src="scripts/kendo/2012.3.1114/kendo.web.min.js" type="text/javascript"> </script>
	<script src="scripts/modernizr.js" type="text/javascript"> </script>
	
	<!-- #BeginEditable "head" -->
    <style type="text/css">











        .tdContent div span
        {
            font-weight: normal;
        }

        li.sshListItem
        {
            margin-right: 15px;
        }
    </style>
	<!-- #EndEditable -->
	<script type="text/javascript">
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-45286528-1', 'agreatis.com');
		ga('send', 'pageview');
	</script>

                    <table cellpadding="0" cellspacing="0" style="border: none; width: 100%">
                        <tr>
                            <td class="dTit" style="width: 55%; text-align: left; vertical-align: top; padding-top: 18px">Job Details
                            </td>
                            <td style="width: 43%; text-align: right; vertical-align: top; padding-right: 50px;">
                                
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
        function ShowWin(t) {
            window.open(t, 'blank', 'width=500,height=315');
        }
    </script>
    <script type="text/javascript">
        Telerik.Web.UI.RadSocialShare.SocialNetUrls = {
            "ShareOnTwitter": "http://twitter.com/intent/tweet?url=[u]&text=[t]",
            "GoogleBookmarks": "https://www.google.com/bookmarks/mark?op=add&bkmk=[u]&title=[t]&summary=[t]&source=[t]",
            //"LinkedIn": "http://www.linkedin.com/shareArticle?mini=true&url=[u]&title=[t]",
            "LinkedIn": "http://www.linkedin.com/shareArticle?mini=true&url=[u]&title=[t]&summary=[s]",
            "Delicious": "http://delicious.com/save?url=[u]&title=[t]",
            "Blogger": "http://www.blogger.com/blog_this.pyra?t=&u=[u]&n=[t]",
            "Digg": "http://digg.com/submit?url=[u]&title=[t]",
            "Reddit": "http://www.reddit.com/submit?url=[u]&title=[t]",
            "StumbleUpon": "http://www.stumbleupon.com/submit?url=[u]&title=[t]",
            "MySpace": "http://www.myspace.com/Modules/PostTo/Pages/?u=[u]&t=[t]",
            "Tumblr": "http://www.tumblr.com/share/link?url=[u]&name=[t]",
            "MailTo": "mailto:?body=[u]&subject=[t]",
            //"ShareOnFacebook": "http://www.facebook.com/sharer.php?u=[u]&t=[t]",
            "ShareOnFacebook": "http://www.facebook.com/sharer.php?s=100&p[url]=[u]&p[images][0]=http%3A%2F%2Fwww.agreatis.com%2Fimages%2Flogo_og.jpg&p[title]=[t]&p[summary]=[s]",
            "share": "//static.ak.fbcdn.net/connect.php/js/FB.Share",
            "linkedInPlatform": "//platform.linkedin.com/in.js?async=true",
            "facebookscript": "//connect.facebook.net/[locale]/all.js#xfbml=1",
            "googlescript": "//apis.google.com/js/plusone.js",
            "twitterscript": "//platform.twitter.com/widgets.js",
            "ga": ".google-analytics.com/ga.js",
            yammerscript: "https://assets.yammer.com/platform/yam.js",
            ShareOnYammer: "https://www.yammer.com/home/bookmarklet?bookmarklet_pop=1&u=[u]&t=[t]",
            PinIt: "http://pinterest.com/pin/create/button/?media=http%3A%2F%2Fwww.agreatis.com%2Fimages%2Flogo_og.png&url=[u]&description=[d]",
            pinterestscript: "http://assets.pinterest.com/js/pinit.js?r=" + Math.random(),
            ShareOnPinterest: "http://assets.pinterest.com/js/pinit.js",
            pinterestBookmarkletScript: "http://assets.pinterest.com/js/pinmarklet.js"
        };

        Telerik.Web.UI.RadSocialShare.prototype.configureGoogleButton = function (button) {
            var g = document.createElement("g:plusone")

            window[this.get_id() + 'plusoneHandler'] = Function.createDelegate(this, this._gPlusOne);
            g.setAttribute("callback", this.get_id() + 'plusoneHandler');

            var urlToShareArray = button[1].split("||");
            shareUrl = urlToShareArray[0];

            g.setAttribute("href", decodeURIComponent(shareUrl));
            g.setAttribute("size", button[3] !== undefined ? button[3].toLowerCase() : "standard");
            g.setAttribute("annotation", button[4] !== undefined ? button[4].toLowerCase() : "none");
            if (button[5] !== undefined) g.setAttribute("width", button[5]);
            button._element.parentNode.appendChild(g);
            button._element.style.display = "none";
        }

        Telerik.Web.UI.RadSocialShare.prototype._clickHandler = function (e) {
            $T = Telerik.Web.UI;
            var button = e.data.button;
            var cancelArgs = new $T.SocialDialogCancelEventArgs(button);
            this.raiseEvent('clicking', cancelArgs);
            var urlToShare = button[1];
            var titleToShare = encodeURIComponent(button[2]);
            var urlToOpen;
            if (button[0] == "LinkedIn" || button[0] == "ShareOnFacebook" || button[0] == "ShareOnTwitter") {
                var urlToShareArray = urlToShare.split("%7C%7C");
                var summaryToShare = urlToShareArray[1];
                urlToShare = urlToShareArray[0];
                if (button[0] == "ShareOnTwitter") {
                    urlToOpen = $T.RadSocialShare.SocialNetUrls[button[0]].replace('[u]', urlToShare).replace('[t]', summaryToShare);
                }
                else {
                    urlToOpen = $T.RadSocialShare.SocialNetUrls[button[0]].replace('[u]', urlToShare).replace('[t]', titleToShare).replace('[s]', summaryToShare);
                }
            }
            else {
                urlToOpen = $T.RadSocialShare.SocialNetUrls[button[0]].replace('[u]', urlToShare).replace('[t]', titleToShare);
            }

            var width = button[3];
            var height = button[4];
            var relativeBounds = window.screen ? window.screen : $telerik.getViewPortSize();
            var top = button[5] ? button[5] : (relativeBounds.height - height) / 2;
            var left = button[6] ? button[6] : (relativeBounds.width - width) / 2;

            if (cancelArgs.get_cancel()) {
                return;
            }
            var target = (button[0] == "MailTo") ? "_self" : "sharer";
            var buttonType = button[0];
            if (buttonType.toLowerCase().indexOf("pinterest") == -1) {
                var dialog = window.open(urlToOpen, target, 'resizable,scrollbars=1,toolbar=0,status=0,width=' + width + ',height=' + height + ',top=' + top + ',left=' + left);
            }
            else {
                var url = button[1];
                var title = button[2];
                var fromUrl = document.location.href;
                var urlForPinterest = $T.RadSocialShare.SocialNetUrls["PinIt"]
                        //.replace('[m]', url)
                        //.replace('[m]', '')
                        .replace('[d]', title ? encodeURIComponent(title) : document.location.href)
                        .replace('[u]', encodeURIComponent(fromUrl));
                //Pinterest needs a window wider than the default 470px to be shown properly
                var dialogWidth = width != 470 ? width : 580;
                var dialog = window.open(urlForPinterest, target, 'resizable,scrollbars=1,toolbar=0,status=0,width=' + dialogWidth + ',height=' + height + ',top=' + top + ',left=' + left);
            }
            //prevent double call when keyboard in combobox used
            $telerik.cancelRawEvent(e);
            var args = new $T.SocialDialogEventArgs(dialog, button);
            this.raiseEvent('clicked', args);
            //google analytics
            if (this.get_gaEnabled()) this._trackSocial(button[0].replace("ShareOn", ""), "share", button[1]);
            var popup = this.get_compactPopup();
            if (popup && popup.isVisible()) popup.close();
        }
    </script>
	<!-- #EndEditable -->
</body>

<!-- #EndTemplate -->

</html>

	<style type="text/css">
		body {
			margin: 15px;
		}
		td {
			vertical-align: top;
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

	<table border="0" cellpadding="2" cellspacing="2" width="100%">
		<tr>
			<td>
				<div style="text-align: center"><img src="images/logo_form.jpg" width="283" height="95"  alt=""/></div>
			</td>
		</tr>
	</table>
	<h1>
		Applicant Voluntary Self-Disclosure Submittal Form
	</h1>
	The employers we represent are subject to certain governmental recordkeeping and reporting requirements for the administration 
	of civil rights laws and regulations. In order to comply with these laws, we invite the applicant to voluntarily self-identify 
	their race/ethnicity, sex and veteran status.&nbsp;&nbsp; Submission of the self identification information is voluntary 
	and refusal to provide it will not subject you to any adverse treatment or influence in the hiring process. The information 
	obtained will be kept confidential and may only be used in accordance with the provisions of applicable laws, executive 
	orders, and regulations, including those that require the information to be summarized and reported to the federal government 
	for civil rights enforcement. When reported, data will not identify <br />
	<br />
	<table border="0" cellpadding="5" cellspacing="5" width="100%">
		<tr>
			<td colspan="1"><strong>Job Requisition ID:</strong></td>
			<td>
				
			</td>
		</tr>
		<tr>
			<td colspan="1" style="line-height: 100%"></td>
			<td style="line-height: 100%">Last</td>
			<td style="line-height: 100%">First</td>
			<td style="line-height: 100%">Initials</td>
		</tr>
		<tr>
			<td colspan="1" style="line-height: 100%"></td>
			<td style="line-height: 100%">&nbsp;</td>
			<td style="line-height: 100%">&nbsp;</td>
			<td style="line-height: 100%">&nbsp;</td>
		</tr>
		<tr>
			<td><strong>Position Applied For</strong></td>
			<td>
				
			</td>
		</tr>
	</table>
	<hr />
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td colspan="3">
				<h3>
					RACE/ETHNICITY</h3>
			</td>
		</tr>
		<tr>
			<td colspan="3"><strong>Please mark on box that describes the race/ethnicity category with which you primarily 
				indetify:</strong><br />
				<br />
			</td>
		</tr>
		<tr>
			<td style="width: 5%">
				
			</td>
			<td style="width: 30%"><strong>Hispanic or Latino</strong></td>
			<td style="width: 60%">A person of Mexican, Puerto Rican, Cuban, Central or South American or other Spanish 
				culture or origin, regardless of ethnicity.A person of Mexican, Puerto Rican, Cuban, Central or South American 
				or other Spanish culture or origin, regardless of ethnicity. A person of Mexican, Puerto Rican, Cuban, Central 
				or South American or other Spanish culture or origin, regardless of ethnicity.<br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				
			</td>
			<td><strong>Asian</strong></td>
			<td>A person having origins in any of the peoples of Hawaii, Indian Subcontinent, including, for example, Cambodia, 
				China, India, Japan, Korea, Malaysia, Pakistan, the Phillippine Islands, Thailand and Vietnam. <br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				
			</td>
			<td><strong>American Indian or Alaska Native</strong></td>
			<td>A person having origins in any of the original peoples of North and South America (including Central America) 
				and who maintain tribal affiliation or community attachment. <br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				
			</td>
			<td><strong>Special Disabled Veteran</strong></td>
			<td>(A) A veteran who is entitled to compensation (or who, but for receipt of military retired pay, would be 
				entitled to compensation) under laws administered by the Dept. of Veteran Affairs for a disability rated 
				at 10 or 20% in the case of a veteran who has been determined to have a serious employment disability OR
				<br />
				<br />
				(B) A person who was discharged or released from active duty because of a service-connected disability
				<br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				
			</td>
			<td><strong>Vietnam</strong></td>
			<td>A person who:<br />
				<br />
				(A) Served on active duty for a period of time more than 180 days, any part of which occurred between 8/10/64 
				and 5/07/75 and was discharged or released with other than a dishonorable discharge OR <br />
				<br />
				(B) Was discharged or released from active duty for a service connected disability if any part of such active 
				duty was performed between 8/10/64 and 5/07/75 OR <br />
				<br />
				(C) Served on active duty for more than 180 days and served in the Republic of Vietnam between 2/28/61 and 
				5/07/75. <br />
				<br />
			</td>
		</tr>
		<tr>
			<td>
				
			</td>
			<td><strong>Other Protected Veteran</strong></td>
			<td>A veteran in one of the following groups:<br />
				<br />
				(A) Veterans who served in a “war”;<br />
				<br />
				(B) Veterans whose service in a campaign or expedition for which a campaign badge has been authorized or 
				an expeditionary medal has been awarded. This includes a number of engagements.
				
				<br />
				<br />
			</td>
		</tr>
	</table>
	<div>
		<strong>Disclosure:</strong><br />
		For each applicant where the prospective employer needs us to provide documentation and data related to OFCCP, we 
		request these applicants to provide this data by filling form -OFCCP (Applicant Self- Disclosure Form) along with 
		their application for the job requisition they were solicited or applied for. The data collected for this purpose 
		will be kept confidential and may only be used in accordance of the permissible laws, executive orders and regulations, 
		including those require these information to be summarized and reported to the federal government for civil rights 
		enforcement. When reported data will not identify any specific individual.
	</div>
	<div style="margin-top: 20px; margin-bottom: 20px">
		
<script type="text/javascript">
	function checkRace(sender, args)
	{
		if ($('#checkHispanic').attr('checked') || $('#checkWhite').attr('checked') || $('#checkBlack').attr('checked') || $('#checkNative').attr('checked') || $('#checkAsian').attr('checked') || $('#checkAlaska').attr('checked') || $('#checkTwo').attr('checked') || $('#checkDecline').attr('checked'))
		{
			args.IsValid = true;
		}
		else
		{
			args.IsValid = false;
		}
	}
	function checkVet(sender, args)
	{
		if ($('#checkNoVet').attr('checked') || $('#checkSpecial').attr('checked') || $('#checkVietnam').attr('checked') || $('#checkOther').attr('checked'))
		{
			args.IsValid = true;
		}
		else
		{
			args.IsValid = false;
		}
	}
	function checkAgree(sender, args)
	{
		args.IsValid = $('#checkIAgree').attr('checked');
	}
	</script>

</body>

</html>

	<script src="scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
	<script src="scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var img = new Image();
		img.src = "images/left_pnl_img_2.jpg";
	</script>
	<script src="scripts/kendo/2012.3.1114/kendo.web.min.js" type="text/javascript"> </script>
	<script src="scripts/modernizr.js" type="text/javascript"> </script>
	
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

	<script src="scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script src="scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var img = new Image();
		img.src = "images/left_pnl_img_2.jpg";
	</script>
	<script src="scripts/kendo/2012.3.1114/kendo.web.min.js" type="text/javascript"> </script>
	<script src="scripts/modernizr.js" type="text/javascript"> </script>
	
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
	
                    
                    <input name="buttonReset" style="margin-left: 15px;" type="reset" value="Reset" />
                    <input name="buttonBack" onclick=" javascript: document.location.href = 'adminjobs.aspx'; " style="margin-left: 25px;" type="button" value="Back to Jobs Listing" />
                    
	<script src="scripts/jquery-1.4.4.min.js" type="text/javascript"></script>
	<script src="scripts/jquery.cycle.all.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var img = new Image();
		img.src = "images/left_pnl_img_2.jpg";
	</script>
	<script src="scripts/kendo/2012.3.1114/kendo.web.min.js" type="text/javascript"> </script>
	<script src="scripts/modernizr.js" type="text/javascript"> </script>
	
	<!-- #BeginEditable "head" -->
    <style type="text/css">











        .tdContent div span
        {
            font-weight: normal;
        }
    </style>
	<!-- #EndEditable -->
	<script type="text/javascript">
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', 'UA-45286528-1', 'agreatis.com');
		ga('send', 'pageview');
	</script>
<strong>Disclosure:</strong><br />
								For each applicant where the prospective employer needs us to provide documentation and 
								data related to OFCCP, we request these applicants to provide this data by filling form 
								-OFCCP (Applicant Self- Disclosure Form) along with their application for the job requisition 
								they were solicited or applied for. The data collected for this purpose will be kept confidential 
								and may only be used in accordance of the permissible laws, executive orders and regulations, 
								including those require these information to be summarized and reported to the federal government 
								for civil rights enforcement. When reported data will not identify any specific individual.
							
								<table cellpadding="0" cellspacing="0" style="margin-top: -0px; border: none; width: 100%">
									<tr>
										<td colspan="3">
											<h6 style="font-size: 10pt; font-style: italic">
												<span class="red">* </span>Race/Ethnicity &#8211; Please mark on box that 
												describes the race/ethnicity category with which you primarily indetify:</h6>
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top; padding-top: 35px;">
											
										</td>
										<td style="width: 30%; vertical-align: top; padding-top: 35px; text-align: left;">
											<strong>Hispanic or Latino</strong> </td>
										<td style="width: 60%; vertical-align: top; padding-top: 35px; text-align: left;">
											A person of Mexican, Puerto Rican, Cuban, Central or South American or other 
											Spanish culture or origin, regardless of ethnicity.A person of Mexican, Puerto 
											Rican, Cuban, Central or South American or other Spanish culture or origin, 
											regardless of ethnicity. A person of Mexican, Puerto Rican, Cuban, Central or 
											South American or other Spanish culture or origin, regardless of ethnicity.<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>White</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the original peoples of Europe, North Africa or the Middle East.<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Black or 
											African American</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the black ethnic groups of Africa.<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Native Hawaiian 
											or Other Pacific Islander</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the peoples of Hawaii, Guam, Samoa, or other Pacific Islands.<br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Asian</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the peoples of Hawaii, Indian Subcontinent, including, for example, 
											Cambodia, China, India, Japan, Korea, Malaysia, Pakistan, the Phillippine Islands, 
											Thailand and Vietnam. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>American 
											Indian or Alaska Native</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A person having origins 
											in any of the original peoples of North and South America (including Central 
											America) and who maintain tribal affiliation or community attachment. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Two or More 
											Races (Not Hispanic or Latino)</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">All persons who identify 
											with more than one of the five races listed above. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Unknown</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left;">&nbsp; <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Others</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left;">All persons who identify 
											with any race other than listed above. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Decline to 
											state</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">&nbsp;<br />
											<br />
										</td>
									</tr>
									<tr>
										<td colspan="3"><hr />
											<h6 style="font-size: 10pt; font-style: italic">
												<span class="red">* </span>VETERAN STATUS &#8211; please check all that 
												apply:</h6>
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top; padding-top: 35px;">
											
										</td>
										<td style="width: 30%; vertical-align: top; padding-top: 35px; text-align: left;">
											<strong>No Veteran Status<br />
											<br />
											</strong></td>
										<td style="width: 60%; vertical-align: top; padding-top: 35px;">&nbsp; </td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Special Disabled 
											Veteran</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left">(A) A veteran who 
											is entitled to compensation (or who, but for receipt of military retired pay, 
											would be entitled to compensation) under laws administered by the Dept. of Veteran 
											Affairs for a disability rated at 10 or 20% in the case of a veteran who has 
											been determined to have a serious employment disability OR <br />
											<br />
											(B) A person who was discharged or released from active duty because of a service-connected 
											disability <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Vietnam</strong>
										</td>
										<td style="width: 60%; vertical-align: top; text-align: left">A person who:<br />
											<br />
											(A) Served on active duty for a period of time more than 180 days, any part 
											of which occurred between 8/10/64 and 5/07/75 and was discharged or released 
											with other than a dishonorable discharge OR <br />
											<br />
											(B) Was discharged or released from active duty for a service connected disability 
											if any part of such active duty was performed between 8/10/64 and 5/07/75 OR
											<br />
											<br />
											(C) Served on active duty for more than 180 days and served in the Republic 
											of Vietnam between 2/28/61 and 5/07/75. <br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Other Protected 
											Veteran</strong> </td>
										<td style="width: 60%; vertical-align: top; text-align: left;">A veteran in one 
											of the following groups:<br />
											<br />
											(A) Veterans who served in a &#8220;war&#8221;;<br />
											<br />
											(B) Veterans whose service in a campaign or expedition for which a campaign 
											badge has been authorized or an expeditionary medal has been awarded. This includes 
											a number of engagements.
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Unknown</strong></td>
										<td style="width: 60%; vertical-align: top; text-align: left;"><br />
											<br />
										</td>
									</tr>
									<tr>
										<td style="width: 5%; vertical-align: top;">
											
										</td>
										<td style="width: 30%; vertical-align: top; text-align: left;"><strong>Declined 
											to State</strong></td>
										<td style="width: 60%; vertical-align: top; text-align: left;"><br />
											<br />
										</td>
									</tr>
								</table>
							
				</div>
				<script type="text/javascript">
					function checkResume(sender, args) {
						if (document.getElementById("textResume").value == "" && document.getElementById("fileUpload").value == "") {
							args.IsValid = false;
						}
						else {
							args.IsValid = true;
						}
					}
					function checkRace(sender, args) {
						if ($('#checkHispanic').attr('checked') || $('#checkWhite').attr('checked') || $('#checkBlack').attr('checked') || $('#checkNative').attr('checked') || $('#checkAsian').attr('checked') || $('#checkAlaska').attr('checked') || $('#checkTwo').attr('checked') || $('#checkDecline').attr('checked')) {
							args.IsValid = true;
						}
						else {
							args.IsValid = false;
						}
					}
					function checkVet(sender, args) {
						if ($('#checkNoVet').attr('checked') || $('#checkSpecial').attr('checked') || $('#checkVietnam').attr('checked') || $('#checkOther').attr('checked') || $('#chgeckUnknown').attr('checked') || $('#checkDeclined').attr('checked')) {
							args.IsValid = true;
						}
						else {
							args.IsValid = false;
						}
					}
					function checkAgree(sender, args) {
						args.IsValid = $('#checkIAgree').attr('checked');
					}
				</script>
					<!-- #EndEditable -->
				
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
