<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	protected void Page_Init(object sender, EventArgs e)
	{
		int _id;
		if (Request.QueryString["id"] == null || Request.QueryString["id"] == "")
		{
			return;
		}
		int.TryParse(Request.QueryString["id"], out _id);
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("GetResumes", _con) //, _tran)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_command.Parameters.AddWithValue("@Id", _id);
				_con.Open();
				using (SqlDataReader _read = _command.ExecuteReader())
				{
					while (_read.Read())
					{
						if (!_read.IsDBNull(0))
						{
							if (File.Exists(Server.MapPath("~/Resumes/" + _read.GetString(0))))
							{
								byte[] _content;
								using (BinaryReader _reader = new BinaryReader(File.Open(Server.MapPath("~/Resumes/" + _read.GetString(0)), FileMode.Open)))
								{
									_content = _reader.ReadBytes(Convert.ToInt32(_reader.BaseStream.Length));
								}
								Response.ContentType = "application/octet-stream";
								Response.AddHeader("Content-Disposition", string.Concat("attachment;filename=\"", _read.GetString(0), "\""));
								Response.BinaryWrite(_content);
								Response.End();
							}
							else
							{
								divResume.InnerHtml = "There is no Resume available for this Candidate";
							}
						}
						else if (!_read.IsDBNull(1))
						{
							divResume.InnerHtml = _read.GetString(1);
						}
						else
						{
							divResume.InnerHtml = "There is no Resume available for this Candidate";
						}
					}
				}
			}
		}
	}

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Resume</title>
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
	<div id="divResume" runat="server" style="width: 100%; margin: 15px">
	</div>
	</form>
</body>
</html>
