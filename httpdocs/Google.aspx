<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="DotNetOpenAuth.OAuth2" %>
<%@ Import Namespace="Google.Apis.Authentication.OAuth2" %>
<%@ Import Namespace="Google.Apis.Authentication.OAuth2.DotNetOpenAuth" %>
<%@ Import Namespace="Google.Apis.Authentication" %>
<%@ Import Namespace="Google.Apis.Samples.Helper" %>
<%@ Import Namespace="Google.Apis.Urlshortener.v1" %>
<%@ Import Namespace="Google.Apis.Urlshortener.v1.Data" %>
<%@ Import Namespace="Google.Apis.Util" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
	<title>Untitled 1</title>
<script runat="server">
private static readonly string Scope = UrlshortenerService.Scopes.Urlshortener.GetStringValue();
		private static IAuthorizationState GetAuthorization(NativeApplicationClient client)
        {
            // You should use a more secure way of storing the key here as
            // .NET applications can be disassembled using a reflection tool.
            const string STORAGE = "947756321230.apps.googleusercontent.com";
            const string KEY = "BfU8hAS3l9HhwwFLyPnRf8L8";

            // Check if there is a cached refresh token available.
            IAuthorizationState state = AuthorizationMgr.GetCachedRefreshToken(STORAGE, KEY);
            if (state != null)
            {
                try
                {
                    client.RefreshToken(state);
                    return state; // Yes - we are done.
                }
                catch (DotNetOpenAuth.Messaging.ProtocolException ex)
                {
                    CommandLine.WriteError("Using existing refresh token failed: " + ex.Message);
                }
            }

            // Retrieve the authorization from the user.
            state = AuthorizationMgr.RequestNativeAuthorization(client, Scope);
            AuthorizationMgr.SetCachedRefreshToken(STORAGE, KEY, state);
            return state;
        }
	void Page_Init(object sender, EventArgs e)
	{
			var provider = new NativeApplicationClient(GoogleAuthenticationServer.Description);
            /*FullClientCredentials credentials = PromptingClientCredentials.EnsureFullClientCredentials();*/
provider.ClientIdentifier = "947756321230.apps.googleusercontent.com";
            provider.ClientSecret = "BfU8hAS3l9HhwwFLyPnRf8L8";
            var auth = new OAuth2Authenticator<NativeApplicationClient>(provider, GetAuthorization);
		UrlshortenerService _service = new UrlshortenerService(auth);
		//_service.DeveloperKey = "AIzaSyB45psfhJtp795g6o6NfYqyioLzcNyvtm8";
		Url _toInsert = new Url { LongUrl = "http://www.the-pivotal.com/careers_new.aspx"};
        _toInsert = _service.Url.Insert(_toInsert).Fetch();
        //.Fetch();
    Response.Write(_toInsert);Response.End();
    string _resultURL = _toInsert.Id;
		Response.End();
	}
</script>
</head>

<body>

<form id="form1" runat="server">
</form>

</body>

</html>
