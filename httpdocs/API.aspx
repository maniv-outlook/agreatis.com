<%@ Page Language="C#" %>

<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="DotNetOpenAuth.OAuth2" %>
<%@ Import Namespace="Google.Apis.Authentication" %>
<%@ Import Namespace="Google.Apis.Authentication.OAuth2" %>
<%@ Import Namespace="Google.Apis.Authentication.OAuth2.DotNetOpenAuth" %>
<%@ Import Namespace="Google.Apis.Samples.Helper" %>
<%@ Import Namespace="Google.Apis.Urlshortener.v1" %>
<%@ Import Namespace="Google.Apis.Urlshortener.v1.Data" %>
<%@ Import Namespace="Google.Apis.Util" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private const string Key = "AIzaSyB45psfhJtp795g6o6NfYqyioLzcNyvtm8";
	private static readonly string Scope = UrlshortenerService.Scopes.Urlshortener.GetStringValue() + "/v1";
	protected void Page_Load(object sender, EventArgs e)
	{
		/*const string url = "http://www.the-pivotal.com/job_details.aspx?id=2";
			const string post = "{\"longUrl\": \"" + url + "\"}";
		HttpWebRequest _request = (HttpWebRequest)WebRequest.Create("https://www.googleapis.com/urlshortener/v1/url?key=" + Key);
			try
			{
				_request.ServicePoint.Expect100Continue = false;
				_request.Method = "POST";
				_request.ContentLength = post.Length;
				_request.ContentType = "application/json";
				_request.Headers.Add("Cache-Control", "no-cache");

				using (Stream _requestStream = _request.GetRequestStream())
				{
					byte[] _postBuffer = Encoding.ASCII.GetBytes(post);
					_requestStream.Write(_postBuffer, 0, _postBuffer.Length);
				}

				using (HttpWebResponse _response = (HttpWebResponse)_request.GetResponse())
				{
					string _shortUrl;
					using (Stream _responseStream = _response.GetResponseStream())
					{
						using (StreamReader _responseReader = new StreamReader(_responseStream))
						{
							string _json = _responseReader.ReadToEnd();
							_shortUrl = Regex.Match(_json, @"""id"": ?""(?<id>.+)""").Groups["id"].Value;
						}
					}
					Response.Write(_shortUrl);
				}
			}
			catch (Exception ex)
			{
				// if Google's URL Shortner is down...
				Response.Write(ex.Message);
			}*/
		var provider = new NativeApplicationClient(GoogleAuthenticationServer.Description);
		provider.ClientIdentifier = "947756321230.apps.googleusercontent.com";
		provider.ClientSecret = "BfU8hAS3l9HhwwFLyPnRf8L8";
		var auth = new OAuth2Authenticator<NativeApplicationClient>(provider, GetAuthorization);

		// Create the service.
		var service = new UrlshortenerService(auth);
		int i = 0;
		string nextPageToken = null;
		do
		{
			// Create and execute the request.
			var request = service.Url.List();
			request.StartToken = nextPageToken;
			UrlHistory result = request.Fetch();

			// List all items on this page.
			if (result.Items != null)
			{
				foreach (Url item in result.Items)
				{
					Response.Write(item.LongUrl);
				}
			}

			// Continue with the next page
			nextPageToken = result.NextPageToken;
		} while (!string.IsNullOrEmpty(nextPageToken));
	}
	private static IAuthorizationState GetAuthorization(NativeApplicationClient client)
	{
		// You should use a more secure way of storing the key here as
		// .NET applications can be disassembled using a reflection tool.
		const string STORAGE = "947756321230-26saajh17i2dvvso4mjic2503u451ohr.apps.googleusercontent.com";
		const string KEY = "i9eJN3ZiwMI7n8MK29qhnJrZ";

		// Check if there is a cached refresh token available.
		IAuthorizationState state = null; //AuthorizationMgr.GetCachedRefreshToken(STORAGE, KEY);
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
		//AuthorizationMgr.SetCachedRefreshToken(STORAGE, KEY, state);
		return state;
	}
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
	<div>
	</div>
	</form>
</body>
</html>
