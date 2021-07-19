using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminShowSubmissions : Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Request.Cookies["UserName"] == null || Request.Cookies["UserName"].ToString() == "")
        {
            Response.Redirect("~/adminlogin.aspx", true);
        }
        DataTable _dt = new DataTable();
        _dt.Columns.Add("Id", typeof(int));
        _dt.Columns.Add("Name", typeof(string));
        _dt.Columns.Add("Email", typeof(string));
        _dt.Columns.Add("Phone", typeof(string));
        _dt.Columns.Add("DateApplied", typeof(DateTime));
        _dt.Columns.Add("State", typeof(string));
        _dt.Columns.Add("Gender", typeof(string));
        _dt.Columns.Add("Race", typeof(string));
        _dt.Columns.Add("VeteranStatus", typeof(string));
        using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
        {
            using (SqlCommand _command = new SqlCommand("ShowAllResponses", _con)
            {
                CommandType = CommandType.StoredProcedure
            })
            {
                _command.Parameters.AddWithValue("@JobId", Request.QueryString["id"]);
                _con.Open();
                using (SqlDataReader _read = _command.ExecuteReader())
                {
                    if (!_read.HasRows)
                    {
                        return;
                    }
                    while (_read.Read())
                    {
                        DataRow _dr = _dt.NewRow();
                        _dr["Id"] = _read.GetInt32(8);
                        _dr["Name"] = _read.GetString(0);
                        _dr["Email"] = _read.GetString(1);
                        _dr["Phone"] = _read.GetString(2);
                        _dr["DateApplied"] = _read.IsDBNull(3) ? DateTime.Now : _read.GetDateTime(3);
                        _dr["State"] = _read.IsDBNull(4) ? "" : _read.GetString(4);
                        string _gender = "";
                        if (!_read.IsDBNull(5))
                        {
                            switch (_read.GetByte(5))
                            {
                                case 1:
                                    _gender = "Male";
                                    break;
                                case 2:
                                    _gender = "Female";
                                    break;
                                case 3:
                                    _gender = "Other";
                                    break;
                                default:
                                    _gender = "Declined";
                                    break;
                            }
                        }
                        _dr["Gender"] = _gender;
                        string _race = "";
                        if (!_read.IsDBNull(6))
                        {
                            switch (_read.GetByte(6))
                            {
                                case 1:
                                    _race = "Hispanic";
                                    break;
                                case 2:
                                    _race = "White";
                                    break;
                                case 3:
                                    _race = "Black";
                                    break;
                                case 4:
                                    _race = "Native";
                                    break;
                                case 5:
                                    _race = "Asian";
                                    break;
                                case 6:
                                    _race = "Alaskan";
                                    break;
                                case 7:
                                    _race = "Two or More";
                                    break;
                                case 9:
                                    _race = "Unknown";
                                    break;
                                case 10:
                                    _race = "Others";
                                    break;
                                default:
                                    _race = "Declined";
                                    break;
                            }
                        }
                        _dr["Race"] = _race;
                        if (_read.IsDBNull(7) || _read.GetString(7) == "")
                        {
                            _dr["VeteranStatus"] = "None";
                        }
                        else
                        {
                            string _veteran = "";
                            string[] _vet = _read.GetString(7).Split(new[] { ',' });
                            foreach (string _v in _vet)
                            {
                                switch (_v)
                                {
                                    case "S":
                                        if (_veteran == "")
                                        {
                                            _veteran = "Special";
                                        }
                                        else
                                        {
                                            _veteran += "<br/>Special";
                                        }
                                        break;
                                    case "V":
                                        if (_veteran == "")
                                        {
                                            _veteran = "Vietnam";
                                        }
                                        else
                                        {
                                            _veteran += "<br/>Vietnam";
                                        }
                                        break;
                                    case "O":
                                        if (_veteran == "")
                                        {
                                            _veteran = "Others";
                                        }
                                        else
                                        {
                                            _veteran += "<br/>Others";
                                        }
                                        break;
                                    case "U":
                                        if (_veteran == "")
                                        {
                                            _veteran = "Unknown";
                                        }
                                        else
                                        {
                                            _veteran += "<br/>Unknown";
                                        }
                                        break;
                                    case "D":
                                        if (_veteran == "")
                                        {
                                            _veteran = "Declined";
                                        }
                                        else
                                        {
                                            _veteran += "<br/>Declined";
                                        }
                                        break;
                                }
                            }
                            _dr["VeteranStatus"] = _veteran;
                        }
                        _dt.Rows.Add(_dr);
                    }
                    _read.NextResult();
                    while (_read.Read())
                    {
                        hJobName.InnerHtml = "SUBMISSIONS for Job Title:" + _read.GetString(0);
                    }
                }
            }
        }
        gridResume.DataSource = _dt;
        gridResume.DataBind();
    }

    protected void gridResume_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType != DataControlRowType.DataRow)
            return;
        ControlCollection _c = e.Row.Controls;
        DataRowView _dvw = e.Row.DataItem as DataRowView;
        using (HyperLink _link = (HyperLink)_c[8].Controls[1])
        {
            _link.NavigateUrl = "adminresumedownload.aspx?id=" + _dvw["Id"];
        }
    }
}