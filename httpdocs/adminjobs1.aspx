<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
	<asp:HyperLink runat="server" NavigateUrl="adminjob.aspx?id=0">Add new Job</asp:HyperLink>
	<div>
		<asp:GridView ID="gridJob" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
			DataSourceID="sqlJob" Width="100%" EmptyDataText="No Jobs" ShowHeaderWhenEmpty="True">
			<Columns>
				<asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="adminjob.aspx?id={0}"
					DataTextField="JobCode" HeaderText="JobCode" />
				<asp:BoundField DataField="ClientJobReqCode" HeaderText="Client Code"></asp:BoundField>
				<asp:BoundField DataField="JobTitle" HeaderText="Title"></asp:BoundField>
				<asp:BoundField DataField="Location" HeaderText="Location" />
				<asp:BoundField DataField="JobDescription" HeaderText="JobDescription" />
				<asp:BoundField DataField="PostedOn" DataFormatString="{0:d}" HeaderText="Posted On" />
				<asp:BoundField DataField="Expiry" DataFormatString="{0:d}" HeaderText="Expiry" />
				<asp:BoundField DataField="OFCCPRequired" HeaderText="OFCCP?" />
				<asp:TemplateField ShowHeader="False">
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
							Text="Delete" OnClientClick="return confirm('Are you certain you want to delete this Job?');"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="sqlJob" runat="server" ConnectionString="<%$AppSettings:ConnStr %>"
			DeleteCommand="DeleteJob" DeleteCommandType="StoredProcedure" ProviderName="System.Data.SqlClient"
			SelectCommand="GetAllJobs" SelectCommandType="StoredProcedure">
			<DeleteParameters>
				<asp:Parameter Name="Id" Type="Int32" />
			</DeleteParameters>
		</asp:SqlDataSource>
	</div>
	</form>
</body>
</html>
