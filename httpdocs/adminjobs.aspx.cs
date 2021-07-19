using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminJobs : Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        /*if (Request.Cookies["UserName"] == null || Request.Cookies["UserName"].ToString() == "")
        {
            Response.Redirect("~/adminlogin.aspx", true);
        }*/
    }

    protected void gridJob_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType != DataControlRowType.DataRow)
        {
            return;
        }
        ControlCollection _c = e.Row.Controls;
        DataRowView _dvw = e.Row.DataItem as DataRowView;
        if (Convert.ToInt32(_dvw["CountResumes"]) == 0)
        {
            ((HyperLink)_c[10].Controls[1]).NavigateUrl = "";
            ((HyperLink)_c[10].Controls[3]).NavigateUrl = "";
        }
        using (ImageButton _link = (ImageButton)_c[11].Controls[1])
        {
            if (e.Row.Cells[9].Text == "Active")
            {
                _link.ImageUrl = "~/images/inactive.png";
                _link.ToolTip = "Deactivate the Job Posting";
            }
            else
            {
                _link.ImageUrl = "~/images/active.png";
                _link.ToolTip = "Activate the Job Posting";
            }
        }
        //Request.Cookies["Admin"].Value = "true";
        /*if (Convert.ToBoolean(Request.Cookies["Admin"].Value) || (Convert.ToInt32(_dvw["UserId"]) == Convert.ToInt32(Request.Cookies["UserId"].Value)))
        {
            return;
        }*/
        /*using (HyperLink _link = (HyperLink)_c[0].Controls[0])
        {
            //_link.NavigateUrl = "javascript:void(0);";
            _link.Visible = false;
        }
        ((TableCell)_c[0]).Text = _dvw["JobCode"].ToString();*/
        /*using (LinkButton _link = (LinkButton)_c[11].Controls[1])
        {
            _link.Visible = false;
        }*/
        //Response.Write(((TableCell)c[7]).Controls[1].ToString());
    }
}