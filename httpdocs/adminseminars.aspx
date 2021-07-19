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
	<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="adminseminar.aspx?id=0">Add new Seminar / Webinar</asp:HyperLink>
	<div>
		<asp:GridView ID="gridSeminar" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
			DataSourceID="sqlSeminar" Width="100%">
			<Columns>
				<asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="adminseminar.aspx?id={0}"
					DataTextField="Title" HeaderText="Title" />
				<asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}">
				</asp:BoundField>
				<asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
				<asp:BoundField DataField="Presenter" HeaderText="Presenter" SortExpression="Presenter" />
				<asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
				<asp:BoundField DataField="ContactEmail" HeaderText="ContactEmail" SortExpression="ContactEmail" />
				<asp:BoundField DataField="Expiry" HeaderText="Expiry" SortExpression="Expiry" />
				<asp:CheckBoxField DataField="Webinar" HeaderText="Webinar?" SortExpression="Webinar" />
				<asp:TemplateField ShowHeader="False">
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
							Text="Delete" OnClientClick="return confirm('Are you certain you want to delete this Seminar?');"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="sqlSeminar" runat="server" ConnectionString="<%$AppSettings:ConnStr %>"
			DeleteCommand="DeleteSeminar" DeleteCommandType="StoredProcedure" ProviderName="System.Data.SqlClient"
			SelectCommand="GetAllSeminars" SelectCommandType="StoredProcedure">
			<DeleteParameters>
				<asp:Parameter Name="Id" Type="Int32" />
			</DeleteParameters>
		</asp:SqlDataSource>
	</div>
	</form>
</body>
</html>
