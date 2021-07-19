<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register Assembly="OAuth" Namespace="OAuth" TagPrefix="auth" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private OAuthClass _authClass = new OAuthClass();
	private int id = 0;
	protected void Page_Init(object sender, EventArgs e)
	{
		id = string.IsNullOrWhiteSpace(Request.QueryString["id"]) ? 0 : Convert.ToInt32(Request.QueryString["id"]);
		Response.Cookies["JobID"].Value = id.ToString();
		string _token = "", _verifier = "", _secret = "", _tokSecret = "";
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("GetTokenVerifier", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_command.Parameters.AddWithValue("@UserId", Request.Cookies["UserId"].Value);
				_command.Parameters.AddWithValue("@Twitter", false);
				_con.Open();
				using (SqlDataReader _read = _command.ExecuteReader())
				{
					if (_read.HasRows)
					{
						while (_read.Read())
						{
							_token = _read.GetString(0);
							_verifier = _read.GetString(1);
							_secret = _read.GetString(2);
							_tokSecret = _read.GetString(3);
						}
					}
				}
			}
		}
		if (_token == "" || _verifier == "" || _secret == "")
		{
			string _auth = _authClass.AuthorizationLinkGet(false);
			Response.Cookies["Secret"].Value = _authClass.TokenSecret;
			Response.Redirect(_auth, true);
			Response.End();
		}
		else
		{
			_authClass.Verifier = _verifier;
			_authClass.Token = _token;
			_authClass.TokenSecret = _secret;
			//_authClass.AccessTokenGet(_token, false);
			string xml = "<activity locale=\"en_US\"><content-type>linkedin-html</content-type><body>Poliwog started on April 15, 2011</body></activity>\n";
			string response = _authClass.APIWebRequest("POST", "http://api.linkedin.com/v1/people/~/person-activities", xml);
			if (response == "")
				Response.Write("Your new status updated");
		}
	}

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
	</div>
	</form>
</body>
</html>
