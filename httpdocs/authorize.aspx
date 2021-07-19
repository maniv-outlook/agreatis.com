<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Register Assembly="OAuth" Namespace="OAuth" TagPrefix="auth" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private OAuthClass _authClass = new OAuthClass();
	protected void Page_Init(object sender, EventArgs e)
	{
		int _verifier = 0;
		string _queryVerifier = string.IsNullOrWhiteSpace(Request.QueryString["oauth_verifier"]) ? "" : Request.QueryString["oauth_verifier"];
		string _token = string.IsNullOrWhiteSpace(Request.QueryString["oauth_token"]) ? "" : Request.QueryString["oauth_token"];
		bool _linkedIn = Int32.TryParse(_queryVerifier, out _verifier);
		_authClass.Token = _token;
		_authClass.TokenSecret = Request.Cookies["Secret"].Value;
		_authClass.Verifier = _verifier.ToString();
		_authClass.AccessTokenGet(_token, !_linkedIn);
		string _accessToken = _authClass.Token;
		string _accessSecret = _authClass.TokenSecret;
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("SaveAccessToken", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				_command.Parameters.AddWithValue("@UserId", Request.Cookies["UserId"].Value);
				_command.Parameters.AddWithValue("@Twitter", _linkedIn);
				_command.Parameters.AddWithValue("@Token", _token);
				_command.Parameters.AddWithValue("@Verifier", _verifier);
				_command.Parameters.AddWithValue("@AccessToken", _accessToken);
				_command.Parameters.AddWithValue("@AccessSecret", _accessSecret);
				_command.Parameters.AddWithValue("@Secret", Request.Cookies["Secret"].Value);
				_con.Open();
				_command.ExecuteNonQuery();
				int _id = 0;
				if (Response.Cookies["JobID"].Value != null)
				{
					_id = Convert.ToInt32(Response.Cookies["JobID"].Value);
				}
				if (_linkedIn)
				{
					Response.Redirect("postlinkedin.aspx?id=" + _id, true);
				}
				else
				{
					Response.Redirect("postlinkedin.aspx?id=" + _id, true);
				}
			}
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
