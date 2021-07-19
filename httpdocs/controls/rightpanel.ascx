<%@ Control Language="C#" ClassName="RightPanel" %>
<script runat="server" type="text/c#">
	protected override void OnInit(EventArgs e)
	{
		string _pageName = Request.Url.ToString();
		const string _pgName = "~/images/right_{0}_img_{1}.jpg";
		byte _total = 8;
		if (_pageName.Contains("index.aspx") || _pageName.Contains("careers_new.aspx") || _pageName.Contains("adminjob") || _pageName.Contains("job_apply.aspx") || _pageName.Contains("job_details.aspx") || _pageName.Contains("about_agreatis.aspx"))
		{
			for (int i=1;i<_total;i++)
			{
				((Image)FindControl("image" + i)).ImageUrl = string.Format(_pgName, "home", i);
			}
		}
		else if (_pageName.Contains("stf_redfnd.aspx"))
		{
			byte _count = 4;
			for (int i=1;i<_count;i++)
			{
				((Image)FindControl("image" + i)).ImageUrl = string.Format(_pgName, "staffredef", i);
			}
			for (int i=_count;i<_total;i++)
			{
				((Image)FindControl("image" + i)).Visible = false;
			}
		}
		else if (_pageName.Contains("why_agreatis.aspx"))
		{
			byte _count = 5;
			for (int i=1;i<_count;i++)
			{
				((Image)FindControl("image" + i)).ImageUrl = string.Format(_pgName, "why", i);
			}
			for (int i=_count;i<_total;i++)
			{
				((Image)FindControl("image" + i)).Visible = false;
			}
		}
		else if (_pageName.Contains("services.aspx"))
		{
			byte _count = 4;
			for (int i=1;i<_count;i++)
			{
				((Image)FindControl("image" + i)).ImageUrl = string.Format(_pgName, "serv", i);
			}
			for (int i=_count;i<_total;i++)
			{
				((Image)FindControl("image" + i)).Visible = false;
			}
		}
		else if (_pageName.Contains("solutions.aspx"))
		{
			byte _count = 6;
			for (int i=1;i<_count;i++)
			{
				((Image)FindControl("image" + i)).ImageUrl = string.Format(_pgName, "sol", i);
			}
			for (int i=_count;i<_total;i++)
			{
				((Image)FindControl("image" + i)).Visible = false;
			}
		}
		else if (_pageName.Contains("career_conn.aspx") || _pageName.Contains("apply.aspx") || _pageName.Contains("register.aspx"))
		{
			byte _count = 3;
			for (int i=1;i<_count;i++)
			{
				((Image)FindControl("image" + i)).ImageUrl = string.Format(_pgName, "career", i);
			}
			for (int i=_count;i<_total;i++)
			{
				((Image)FindControl("image" + i)).Visible = false;
			}
		}
		else if (_pageName.Contains("workat.aspx"))
		{
			byte _count = 3;
			for (int i=1;i<_count;i++)
			{
				((Image)FindControl("image" + i)).ImageUrl = string.Format(_pgName, "work", i);
			}
			for (int i=_count;i<_total;i++)
			{
				((Image)FindControl("image" + i)).Visible = false;
			}
		}
		else if (_pageName.Contains("contactus.aspx") || _pageName.Contains("contactsuccess.aspx"))
		{
			byte _count = 3;
			for (int i=1;i<_count;i++)
			{
				((Image)FindControl("image" + i)).ImageUrl = string.Format(_pgName, "contact", i);
			}
			for (int i=_count;i<_total;i++)
			{
				((Image)FindControl("image" + i)).Visible = false;
			}
		}
	}
</script>
<div id="slider">
	<asp:Image id="image1" runat="server" AlternateText="Image 1" Style="display: none;"></asp:Image>
	<asp:Image id="image2" runat="server" AlternateText="Image 2" Style="display: none;"></asp:Image>
	<asp:Image id="image3" runat="server" AlternateText="Image 3" Style="display: none;"></asp:Image>
	<asp:Image id="image4" runat="server" AlternateText="Image 4" Style="display: none;"></asp:Image>
	<asp:Image id="image5" runat="server" AlternateText="Image 5" Style="display: none;"></asp:Image>
	<asp:Image id="image6" runat="server" AlternateText="Image 6" Style="display: none;"></asp:Image>
	<asp:Image id="image7" runat="server" AlternateText="Image 7" Style="display: none;"></asp:Image>
</div>
