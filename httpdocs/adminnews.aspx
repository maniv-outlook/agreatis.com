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
	<asp:HyperLink runat="server" NavigateUrl="adminsinglenews.aspx?id=0">Add new News Item</asp:HyperLink>
	<div>
		<asp:GridView ID="gridNews" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
			DataSourceID="sqlNews" Width="100%">
			<Columns>
				<asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="adminsinglenews.aspx?id={0}"
					DataTextField="Title" HeaderText="Title">
					<ItemStyle Width="25%" />
				</asp:HyperLinkField>
				<asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description">
					<ItemStyle Width="30%" />
				</asp:BoundField>
				<asp:BoundField DataField="MoreLink" HeaderText="More Link" SortExpression="MoreLink">
					<ItemStyle Width="20%" />
				</asp:BoundField>
				<asp:BoundField DataField="ActiveTill" DataFormatString="{0:d}" HeaderText="Expiry"
					SortExpression="ActiveTill">
					<ItemStyle Width="15%" />
				</asp:BoundField>
				<asp:TemplateField ShowHeader="False">
					<ItemTemplate>
						<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
							Text="Delete" OnClientClick="return confirm('Are you certain you want to delete this news Item?');"></asp:LinkButton>
					</ItemTemplate>
					<ItemStyle Width="10%" />
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="sqlNews" runat="server" ConnectionString="<%$AppSettings:ConnStr %>"
			DeleteCommand="DeleteNews" DeleteCommandType="StoredProcedure" ProviderName="System.Data.SqlClient"
			SelectCommand="GetAllNews" SelectCommandType="StoredProcedure">
			<DeleteParameters>
				<asp:Parameter Name="Id" Type="Int32" />
			</DeleteParameters>
		</asp:SqlDataSource>
	</div>
	</form>
</body>
</html>
