﻿#pragma checksum "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "9FCD5ACFD622744E3ACB8CBD3D959930B8E61680"
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
    
    #line 196 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
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
    public class services_aspx : global::System.Web.UI.Page, System.Web.SessionState.IRequiresSessionState, System.Web.IHttpHandler {
        
        
        #line 65 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
        protected global::ASP.LeftPanel lpanel;
        
        #line default
        #line hidden
        
        
        #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
        protected global::ASP.RightPanel rpanel;
        
        #line default
        #line hidden
        
        
        #line 89 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
        protected global::System.Web.UI.HtmlControls.HtmlForm form1;
        
        #line default
        #line hidden
        
        
        #line 196 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
        protected global::ASP.Copyright copy;
        
        #line default
        #line hidden
        
        private static bool @__initialized;
        
        private static object @__stringResource;
        
        private static object @__fileDependencies;
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public services_aspx() {
            string[] dependencies;
            ((global::System.Web.UI.Page)(this)).AppRelativeVirtualPath = "~/services.aspx";
            if ((global::ASP.services_aspx.@__initialized == false)) {
                global::ASP.services_aspx.@__stringResource = this.ReadStringResource();
                dependencies = new string[4];
                dependencies[0] = "~/services.aspx";
                dependencies[1] = "~/controls/leftpanel.ascx";
                dependencies[2] = "~/controls/rightpanel.ascx";
                dependencies[3] = "~/controls/Copyright.ascx";
                global::ASP.services_aspx.@__fileDependencies = this.GetWrappedFileDependencies(dependencies);
                global::ASP.services_aspx.@__initialized = true;
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
            
            #line 16 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 16 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.Content = "text/html; charset=iso-8859-1";
            
            #line default
            #line hidden
            
            #line 16 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("http-equiv", "Content-Type");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control4() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 17 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 17 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.Content = "http://www.agreatis.com/images/logo_og.jpg";
            
            #line default
            #line hidden
            
            #line 17 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("property", "og:image");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control5() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 18 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 18 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.Content = "image/png";
            
            #line default
            #line hidden
            
            #line 18 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("property", "og:image:type");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control6() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 19 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 19 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.Content = "720";
            
            #line default
            #line hidden
            
            #line 19 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("property", "og:image:width");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlMeta @__BuildControl__control7() {
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl;
            
            #line 20 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlMeta();
            
            #line default
            #line hidden
            
            #line 20 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.Content = "440";
            
            #line default
            #line hidden
            
            #line 20 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("property", "og:image:height");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlTitle @__BuildControl__control8() {
            global::System.Web.UI.HtmlControls.HtmlTitle @__ctrl;
            
            #line 22 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlTitle();
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 22 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("AGREATIS, Inc."));
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlLink @__BuildControl__control9() {
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl;
            
            #line 24 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlLink();
            
            #line default
            #line hidden
            
            #line 24 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.Href = "agreatis.css";
            
            #line default
            #line hidden
            
            #line 24 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("rel", "stylesheet");
            
            #line default
            #line hidden
            
            #line 24 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("type", "text/css");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlLink @__BuildControl__control10() {
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl;
            
            #line 33 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlLink();
            
            #line default
            #line hidden
            
            #line 33 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.Href = "Content/kendo/2012.3.1114/kendo.metro.min.css";
            
            #line default
            #line hidden
            
            #line 33 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("rel", "stylesheet");
            
            #line default
            #line hidden
            
            #line 33 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("type", "text/css");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlLink @__BuildControl__control11() {
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl;
            
            #line 34 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlLink();
            
            #line default
            #line hidden
            
            #line 34 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.Href = "Content/kendo/2012.3.1114/kendo.common.min.css";
            
            #line default
            #line hidden
            
            #line 34 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("rel", "stylesheet");
            
            #line default
            #line hidden
            
            #line 34 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("type", "text/css");
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlHead @__BuildControl__control2() {
            global::System.Web.UI.HtmlControls.HtmlHead @__ctrl;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlHead("head");
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            ((System.Web.UI.IAttributeAccessor)(@__ctrl)).SetAttribute("prefix", "og: http://ogp.me/ns#");
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<!-- \r\n\t****************\r\n\tDescription: AGREATIS, Inc.\r\n\tCalled By : http://ww" +
                        "w.agreatis.com\r\n\tCreated: DonBosco Paily 07/30/2013\r\n\tLast Modified: DonBosco Pa" +
                        "ily 07/30/2013\r\n\t****************\r\n\t-->\r\n\t"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl1;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl1 = this.@__BuildControl__control3();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl1);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl2;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl2 = this.@__BuildControl__control4();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl2);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl3;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl3 = this.@__BuildControl__control5();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl3);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl4;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl4 = this.@__BuildControl__control6();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl4);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlMeta @__ctrl5;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl5 = this.@__BuildControl__control7();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl5);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<!-- #BeginEditable \"doctitle\" -->\r\n\t"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlTitle @__ctrl6;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl6 = this.@__BuildControl__control8();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl6);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t<!-- #EndEditable -->\r\n\t"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl7;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl7 = this.@__BuildControl__control9();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl7);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(this.CreateResourceBasedLiteralControl(0, 439, true));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl8;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl8 = this.@__BuildControl__control10();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl8);
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlLink @__ctrl9;
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl9 = this.@__BuildControl__control11();
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl9);
            
            #line default
            #line hidden
            
            #line 7 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(this.CreateResourceBasedLiteralControl(439, 507, true));
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::ASP.LeftPanel @__BuildControllpanel() {
            global::ASP.LeftPanel @__ctrl;
            
            #line 65 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::ASP.LeftPanel();
            
            #line default
            #line hidden
            this.lpanel = @__ctrl;
            
            #line 65 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.InitializeAsUserControl(this.Page);
            
            #line default
            #line hidden
            
            #line 65 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.ID = "lpanel";
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::ASP.RightPanel @__BuildControlrpanel() {
            global::ASP.RightPanel @__ctrl;
            
            #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::ASP.RightPanel();
            
            #line default
            #line hidden
            this.rpanel = @__ctrl;
            
            #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.InitializeAsUserControl(this.Page);
            
            #line default
            #line hidden
            
            #line 68 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.ID = "rpanel";
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::System.Web.UI.HtmlControls.HtmlForm @__BuildControlform1() {
            global::System.Web.UI.HtmlControls.HtmlForm @__ctrl;
            
            #line 89 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::System.Web.UI.HtmlControls.HtmlForm();
            
            #line default
            #line hidden
            this.form1 = @__ctrl;
            
            #line 89 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.ID = "form1";
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 89 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(this.CreateResourceBasedLiteralControl(946, 7344, true));
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private global::ASP.Copyright @__BuildControlcopy() {
            global::ASP.Copyright @__ctrl;
            
            #line 196 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl = new global::ASP.Copyright();
            
            #line default
            #line hidden
            this.copy = @__ctrl;
            
            #line 196 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.InitializeAsUserControl(this.Page);
            
            #line default
            #line hidden
            
            #line 196 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.ID = "copy";
            
            #line default
            #line hidden
            return @__ctrl;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        private void @__BuildControlTree(services_aspx @__ctrl) {
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.EnableViewState = false;
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl.EnableViewStateMac = false;
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            this.InitializeCulture();
            
            #line default
            #line hidden
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.o" +
                        "rg/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/" +
                        "xhtml\">\r\n\r\n<!-- #BeginTemplate \"templates/agreatis.dwt\" -->\r\n\r\n"));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlHead @__ctrl1;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl1 = this.@__BuildControl__control2();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl1);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(this.CreateResourceBasedLiteralControl(8290, 764, true));
            
            #line default
            #line hidden
            global::ASP.LeftPanel @__ctrl2;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl2 = this.@__BuildControllpanel();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl2);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t\t\t\t\t</td>\r\n\t\t\t\t\t<td>\r\n\t\t\t\t\t\t"));
            
            #line default
            #line hidden
            global::ASP.RightPanel @__ctrl3;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl3 = this.@__BuildControlrpanel();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl3);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(this.CreateResourceBasedLiteralControl(9054, 772, true));
            
            #line default
            #line hidden
            global::System.Web.UI.HtmlControls.HtmlForm @__ctrl4;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl4 = this.@__BuildControlform1();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl4);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\t\t\t</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"td3\">\r\n\t\t\t\t"));
            
            #line default
            #line hidden
            global::ASP.Copyright @__ctrl5;
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__ctrl5 = this.@__BuildControlcopy();
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(@__ctrl5);
            
            #line default
            #line hidden
            
            #line 1 "C:\Inetpub\vhosts\agreatis.com\httpdocs\services.aspx"
            @__parser.AddParsedSubObject(this.CreateResourceBasedLiteralControl(9826, 730, true));
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        protected override void FrameworkInitialize() {
            base.FrameworkInitialize();
            this.SetStringResourcePointer(global::ASP.services_aspx.@__stringResource, 0);
            this.@__BuildControlTree(this);
            this.AddWrappedFileDependencies(global::ASP.services_aspx.@__fileDependencies);
            this.ValidateRequestMode = System.Web.UI.ValidateRequestMode.Disabled;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public override int GetTypeHashCode() {
            return -120296314;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public override void ProcessRequest(System.Web.HttpContext context) {
            base.ProcessRequest(context);
        }
    }
}
