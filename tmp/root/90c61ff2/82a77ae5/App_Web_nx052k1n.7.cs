#pragma checksum "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "C560B88485CB13533FE8BE10FBFA7F9A8F214B94"
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
    
    #line 330 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Linq;
    
    #line default
    #line hidden
    
    #line 337 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.Security;
    
    #line default
    #line hidden
    
    #line 328 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.ComponentModel.DataAnnotations;
    
    #line default
    #line hidden
    
    #line 326 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Collections.Generic;
    
    #line default
    #line hidden
    
    #line 332 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Text.RegularExpressions;
    
    #line default
    #line hidden
    
    #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
    using ASP;
    
    #line default
    #line hidden
    
    #line 340 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.UI.WebControls;
    
    #line default
    #line hidden
    
    #line 343 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Xml.Linq;
    
    #line default
    #line hidden
    
    #line 339 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.UI;
    
    #line default
    #line hidden
    
    #line 342 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.UI.HtmlControls;
    
    #line default
    #line hidden
    
    #line 333 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web;
    
    #line default
    #line hidden
    
    #line 329 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Configuration;
    
    #line default
    #line hidden
    
    #line 324 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System;
    
    #line default
    #line hidden
    
    #line 331 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Text;
    
    #line default
    #line hidden
    
    #line 338 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.Profile;
    
    #line default
    #line hidden
    
    #line 334 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.Caching;
    
    #line default
    #line hidden
    
    #line 325 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Collections;
    
    #line default
    #line hidden
    
    #line 341 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.UI.WebControls.WebParts;
    
    #line default
    #line hidden
    
    #line 327 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Collections.Specialized;
    
    #line default
    #line hidden
    
    #line 336 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.SessionState;
    
    #line default
    #line hidden
    
    #line 335 "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Config\web.config"
    using System.Web.DynamicData;
    
    #line default
    #line hidden
    
    
    [System.Runtime.CompilerServices.CompilerGlobalScopeAttribute()]
    public class admin_test_aspx : global::System.Web.UI.Page, System.Web.SessionState.IRequiresSessionState, System.Web.IHttpHandler {
        
        
        #line 61 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
        protected global::System.Web.UI.HtmlControls.HtmlForm form1;
        
        #line default
        #line hidden
        
        
        #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
        protected global::ASP.Copyright copy;
        
        #line default
        #line hidden
        
        private static bool @__initialized;
        
        private static object @__stringResource;
        
        private static object @__fileDependencies;
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public admin_test_aspx() {
            string[] dependencies;
            ((global::System.Web.UI.Page)(this)).AppRelativeVirtualPath = "~/admin_test.aspx";
            if ((global::ASP.admin_test_aspx.@__initialized == false)) {
                global::ASP.admin_test_aspx.@__stringResource = this.ReadStringResource();
                dependencies = new string[2];
                dependencies[0] = "~/admin_test.aspx";
                dependencies[1] = "~/controls/Copyright.ascx";
                global::ASP.admin_test_aspx.@__fileDependencies = this.GetWrappedFileDependencies(dependencies);
                global::ASP.admin_test_aspx.@__initialized = true;
            }
            this.Server.ScriptTimeout = 30000000;
        }
        
        protected System.Web.Profile.DefaultProfile Profile {
            get {
                return ((System.Web.Profile.DefaultProfile)(this.Context.Profile));
            }
        }
        
        protected override bool SupportAutoEvents {
            get {
                return false;
            }
        }
        
        protected System.Web.HttpApplication ApplicationInstance {
            get {
                return ((System.Web.HttpApplication)(this.Context.ApplicationInstance));
            }
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control3() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 16 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 16 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.Content = "text/html; charset=iso-8859-1";
            
            #line default
            #line hidden
            
            #line 16 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("http-equiv", "Content-Type");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlTitle @__BuildControl__control4() {
            global::System.Web.UI.HtmlControls.HtmlTitle @__ctrl;
            
            #line 18 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlTitle();
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 18 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("AGREATIS&#8480;, Inc. - "));
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlLink @__BuildControl__control5() {
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl;
            
            #line 20 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlLink();
            
            #line default
            #line hidden
            
            #line 20 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.Href = "agreatis.css";
            
            #line default
            #line hidden
            
            #line 20 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("rel", "stylesheet");
            
            #line default
            #line hidden
            
            #line 20 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("type", "text/css");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlLink @__BuildControl__control6() {
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl;
            
            #line 29 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlLink();
            
            #line default
            #line hidden
            
            #line 29 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.Href = "Content/kendo/2012.3.1114/kendo.metro.min.css";
            
            #line default
            #line hidden
            
            #line 29 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("rel", "stylesheet");
            
            #line default
            #line hidden
            
            #line 29 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("type", "text/css");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlLink @__BuildControl__control7() {
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl;
            
            #line 30 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlLink();
            
            #line default
            #line hidden
            
            #line 30 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.Href = "Content/kendo/2012.3.1114/kendo.common.min.css";
            
            #line default
            #line hidden
            
            #line 30 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("rel", "stylesheet");
            
            #line default
            #line hidden
            
            #line 30 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("type", "text/css");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control8() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 49 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 49 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.Content = "http://www.agreatis.com/images/logo_og.jpg";
            
            #line default
            #line hidden
            
            #line 49 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("property", "og:image");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control9() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 50 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 50 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.Content = "image/png";
            
            #line default
            #line hidden
            
            #line 50 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("property", "og:image:type");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control10() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 51 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 51 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.Content = "720";
            
            #line default
            #line hidden
            
            #line 51 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("property", "og:image:width");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control11() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 52 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 52 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.Content = "440";
            
            #line default
            #line hidden
            
            #line 52 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("property", "og:image:height");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlHead @__BuildControl__control2() {
            global::System.Web.UI.HtmlControls.HtmlHead @__ctrl;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlHead("head");
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("prefix", "og: http://ogp.me/ns#");
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<!-- \r\n\t****************\r\n\tDescription: AGREATIS, Inc.\r\n\tCalled By : http://ww" +
                        "w.agreatis.com\r\n\tCreated: DonBosco Paily 07/30/2013\r\n\tLast Modified: DonBosco Pa" +
                        "ily 07/30/2013\r\n\t****************\r\n\t-->\r\n\t"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl1;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl1 = this.@__BuildControl__control3();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl1);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<!-- #BeginEditable \"doctitle\" -->\r\n\t"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlTitle @__ctrl2;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl2 = this.@__BuildControl__control4();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl2);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<!-- #EndEditable -->\r\n\t"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl3;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl3 = this.@__BuildControl__control5();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl3);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(this.CreateResourceBasedLiteralControl(14645, 439, true));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl4;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl4 = this.@__BuildControl__control6();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl4);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl5;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl5 = this.@__BuildControl__control7();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl5);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(this.CreateResourceBasedLiteralControl(15084, 271, true));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl6;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl6 = this.@__BuildControl__control8();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl6);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl7;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl7 = this.@__BuildControl__control9();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl7);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl8;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl8 = this.@__BuildControl__control10();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl8);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl9;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl9 = this.@__BuildControl__control11();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl9);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<!-- #BeginEditable \"head\" -->\r\n\t<!-- #EndEditable -->\r\n"));
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlForm @__BuildControlform1() {
            global::System.Web.UI.HtmlControls.HtmlForm @__ctrl;
            
            #line 61 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlForm();
            
            #line default
            #line hidden
            this.form1 = @__ctrl;
            
            #line 61 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.ID = "form1";
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 61 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t\t<div style=\"width: 96%; margin: 10px; padding: 5px; margin-bottom: 40px;\">\r\n\t" +
                        "\t\t<!-- #BeginEditable \"Content\" -->\r\n\t\t\t<!-- #EndEditable -->\r\n\t\t</div>\r\n\t"));
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::ASP.Copyright @__BuildControlcopy() {
            global::ASP.Copyright @__ctrl;
            
            #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl = new global::ASP.Copyright();
            
            #line default
            #line hidden
            this.copy = @__ctrl;
            
            #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.InitializeAsUserControl(this.Page);
            
            #line default
            #line hidden
            
            #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.ID = "copy";
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void @__BuildControlTree(admin_test_aspx @__ctrl) {
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.EnableViewState = false;
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl.EnableViewStateMac = false;
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            this.InitializeCulture();
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.o" +
                        "rg/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/" +
                        "xhtml\">\r\n\r\n<!-- #BeginTemplate \"templates/agreatis_admin.dwt\" -->\r\n\r\n"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlHead @__ctrl1;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl1 = this.@__BuildControl__control2();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl1);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n<body>\r\n\t<div style=\"text-align: center\">\r\n\t\t<a href=\"index.aspx\"><img alt=\"Hea" +
                        "der\" src=\"images/Hdrs_imgAdmin.jpg\" style=\"border: none\" /></a>\r\n\t</div>\r\n\t<!-- " +
                        "#BeginEditable \"jqueryImg\" -->\r\n\t<!-- #EndEditable -->"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlForm @__ctrl2;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl2 = this.@__BuildControlform1();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl2);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<div class=\"td3 copyAdmin\">\r\n\t\t"));
            
            #line default
            #line hidden
            global::ASP.Copyright @__ctrl3;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__ctrl3 = this.@__BuildControlcopy();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(@__ctrl3);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\admin_test.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t</div>\r\n\t<!-- #BeginEditable \"Script\" -->\r\n\t<!-- #EndEditable -->\r\n</body>\r\n\r\n" +
                        "<!-- #EndTemplate -->\r\n\r\n</html>\r\n"));
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        protected override void FrameworkInitialize() {
            base.FrameworkInitialize();
            this.SetStringResourcePointer(global::ASP.admin_test_aspx.@__stringResource, 0);
            this.@__BuildControlTree(this);
            this.AddWrappedFileDependencies(global::ASP.admin_test_aspx.@__fileDependencies);
            this.ValidateRequestMode = System.Web.UI.ValidateRequestMode.Disabled;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public override int GetTypeHashCode() {
            return 411031162;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public override void ProcessRequest(System.Web.HttpContext context) {
            base.ProcessRequest(context);
        }
    }
}
