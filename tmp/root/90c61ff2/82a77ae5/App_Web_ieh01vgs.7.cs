﻿#pragma checksum "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "D5598285DCA098ED31D01BA7AE060C07421C6238"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ASP {
    
    #line 335 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.DynamicData;
    
    #line default
    #line hidden
    
    #line 325 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Collections;
    
    #line default
    #line hidden
    
    #line 331 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Text;
    
    #line default
    #line hidden
    
    #line 339 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.UI;
    
    #line default
    #line hidden
    
    #line 326 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Collections.Generic;
    
    #line default
    #line hidden
    
    #line 330 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Linq;
    
    #line default
    #line hidden
    
    #line 343 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Xml.Linq;
    
    #line default
    #line hidden
    
    #line 5 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
    using OAuth;
    
    #line default
    #line hidden
    
    #line 336 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.SessionState;
    
    #line default
    #line hidden
    
    #line 333 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web;
    
    #line default
    #line hidden
    
    #line 340 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.UI.WebControls;
    
    #line default
    #line hidden
    
    #line 334 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.Caching;
    
    #line default
    #line hidden
    
    #line 338 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.Profile;
    
    #line default
    #line hidden
    
    #line 328 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.ComponentModel.DataAnnotations;
    
    #line default
    #line hidden
    
    #line 327 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Collections.Specialized;
    
    #line default
    #line hidden
    
    #line 3 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
    using System.Data;
    
    #line default
    #line hidden
    
    #line 337 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.Security;
    
    #line default
    #line hidden
    
    #line 324 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System;
    
    #line default
    #line hidden
    
    #line 4 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
    using System.Data.SqlClient;
    
    #line default
    #line hidden
    
    #line 332 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Text.RegularExpressions;
    
    #line default
    #line hidden
    
    #line 329 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Configuration;
    
    #line default
    #line hidden
    
    #line 341 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.UI.WebControls.WebParts;
    
    #line default
    #line hidden
    
    #line 342 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.UI.HtmlControls;
    
    #line default
    #line hidden
    
    
    [System.Runtime.CompilerServices.CompilerGlobalScopeAttribute()]
    public class postlinkedin_aspx : global::System.Web.UI.Page, System.Web.SessionState.IRequiresSessionState, System.Web.IHttpHandler {
        
        
        #line 66 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
        protected global::System.Web.UI.HtmlControls.HtmlForm form1;
        
        #line default
        #line hidden
        
        private static bool @__initialized;
        
        private static object @__stringResource;
        
        private static object @__fileDependencies;
        
        
        #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
                       
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


        #line default
        #line hidden
        
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public postlinkedin_aspx() {
            string[] dependencies;
            ((global::System.Web.UI.Page)(this)).AppRelativeVirtualPath = "~/postlinkedin.aspx";
            if ((global::ASP.postlinkedin_aspx.@__initialized == false)) {
                global::ASP.postlinkedin_aspx.@__stringResource = this.ReadStringResource();
                dependencies = new string[1];
                dependencies[0] = "~/postlinkedin.aspx";
                global::ASP.postlinkedin_aspx.@__fileDependencies = this.GetWrappedFileDependencies(dependencies);
                global::ASP.postlinkedin_aspx.@__initialized = true;
            }
            this.Server.ScriptTimeout = 30000000;
        }
        
        protected System.Web.Profile.DefaultProfile Profile {
            get {
                return ((System.Web.Profile.DefaultProfile)(this.Context.Profile));
            }
        }
        
        protected System.Web.HttpApplication ApplicationInstance {
            get {
                return ((System.Web.HttpApplication)(this.Context.ApplicationInstance));
            }
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlTitle @__BuildControl__control3() {
            global::System.Web.UI.HtmlControls.HtmlTitle @__ctrl;
            
            #line 63 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlTitle();
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlHead @__BuildControl__control2() {
            global::System.Web.UI.HtmlControls.HtmlHead @__ctrl;
            
            #line 62 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlHead("head");
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlTitle @__ctrl1;
            
            #line 62 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__ctrl1 = this.@__BuildControl__control3();
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 62 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__parser.AddParsedSubObject(@__ctrl1);
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlForm @__BuildControlform1() {
            global::System.Web.UI.HtmlControls.HtmlForm @__ctrl;
            
            #line 66 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlForm();
            
            #line default
            #line hidden
            this.form1 = @__ctrl;
            
            #line 66 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__ctrl.ID = "form1";
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 66 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<div>\r\n\t</div>\r\n\t"));
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void @__BuildControlTree(postlinkedin_aspx @__ctrl) {
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            this.InitializeCulture();
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.o" +
                        "rg/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n"));
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlHead @__ctrl1;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__ctrl1 = this.@__BuildControl__control2();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__parser.AddParsedSubObject(@__ctrl1);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n<body>\r\n\t"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlForm @__ctrl2;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__ctrl2 = this.@__BuildControlform1();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__parser.AddParsedSubObject(@__ctrl2);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\postlinkedin.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n</body>\r\n</html>\r\n"));
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        protected override void FrameworkInitialize() {
            base.FrameworkInitialize();
            this.SetStringResourcePointer(global::ASP.postlinkedin_aspx.@__stringResource, 0);
            this.@__BuildControlTree(this);
            this.AddWrappedFileDependencies(global::ASP.postlinkedin_aspx.@__fileDependencies);
            this.ValidateRequestMode = System.Web.UI.ValidateRequestMode.Disabled;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public override int GetTypeHashCode() {
            return 1839891060;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public override void ProcessRequest(System.Web.HttpContext context) {
            base.ProcessRequest(context);
        }
    }
}