using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI;
using Telerik.Web.UI;

public partial class AdminJob : Page
{
    private int id;
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Request.Cookies["UserName"] == null || Request.Cookies["UserName"].ToString() == "")
        {
            Response.Redirect("~/adminlogin.aspx", true);
            return;
        }
        if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
        {
            Int32.TryParse(Request.QueryString["id"], out id);
        }
        DateTime _dt;
        if (!IsPostBack && id != 0)
        {
            int _userId = 0;
            using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
            {
                using (SqlCommand _command = new SqlCommand("GetJob", _con)
                {
                    CommandType = CommandType.StoredProcedure
                })
                {
                    _command.Parameters.AddWithValue("@Id", id);
                    _con.Open();
                    using (SqlDataReader _read = _command.ExecuteReader())
                    {
                        while (_read.Read())
                        {
                            textCode.Text = _read.GetString(0);
                            textTitle.Text = _read.GetString(1);
                            Editor1.Content = _read.GetString(2);
                            textLocation.Text = _read.GetString(16);
                            textPerson.Text = _read.GetString(4);
                            textPhone.Text = _read.GetString(5);
                            textEmail.Text = _read.GetString(6);
                            DateTime _dt1 = _read.GetDateTime(7);
                            dropExpMon.Text = _dt1.Month.ToString(CultureInfo.InvariantCulture);
                            dropExpYear.Text = _dt1.Year.ToString(CultureInfo.InvariantCulture);
                            dropExpDay.Text = _dt1.Day.ToString(CultureInfo.InvariantCulture);
                            _dt = _read.GetDateTime(8);
                            dropPostMon.Text = _dt.Month.ToString(CultureInfo.InvariantCulture);
                            dropPostYear.Text = _dt.Year.ToString(CultureInfo.InvariantCulture);
                            dropPostDay.Text = _dt.Day.ToString(CultureInfo.InvariantCulture);
                            textClientNo.Text = _read.IsDBNull(9) ? "" : _read.GetString(9);
                            checkOFCCP.Checked = _read.GetBoolean(10);
                            textShort.Text = _read.IsDBNull(11) ? "" : _read.GetString(11);
                            switch (_read.GetString(12))
                            {
                                case "F":
                                    radioFull.Checked = true;
                                    break;
                                case "C":
                                    radioContract.Checked = true;
                                    break;
                                default:
                                    radioHire.Checked = true;
                                    break;
                            }
                            dropState.Text = _read.IsDBNull(13) ? "PA" : _read.GetString(13);
                            checkStatus.Checked = _read.GetBoolean(14);
                            _userId = _read.GetInt32(15);
                            textZip.Text = _read.GetString(17);
                            textShortDesc.Text = _read.GetString(18);
                        }
                    }
                }
            }
            if (!Convert.ToBoolean(Request.Cookies["Admin"].Value) && (Convert.ToInt32(Request.Cookies["UserId"].Value) != _userId))
            {
                textCode.ReadOnly = true;
                Editor1.EditModes = EditModes.Preview;
                ScriptManager.RegisterStartupScript(this, GetType(), "disableBottomToolbar", "Sys.Application.add_load(function(){setTimeout(disableBottomToolbar,0);});", true);
                //Editor1.Enabled = false;
                textTitle.ReadOnly = true;
                textLocation.ReadOnly = true;
                textPerson.ReadOnly = true;
                textPhone.ReadOnly = true;
                textEmail.ReadOnly = true;
                dropExpMon.Enabled = false;
                dropExpDay.Enabled = false;
                dropExpYear.Enabled = false;
                dropPostMon.Enabled = false;
                dropPostDay.Enabled = false;
                dropPostYear.Enabled = false;
                textClientNo.ReadOnly = true;
                checkOFCCP.Enabled = false;
                textShort.ReadOnly = true;
                radioFull.Enabled = false;
                radioContract.Enabled = false;
                radioHire.Enabled = false;
                dropState.Enabled = false;
                checkStatus.Enabled = false;
                buttonRepost.Visible = false;
                buttonSubmit.Visible = false;
                textZip.ReadOnly = true;
                textShortDesc.ReadOnly = true;
            }
        }
        if (IsPostBack || id != 0)
        {
            return;
        }
        if (!IsPostBack && id == 0)
        {
            using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
            {
                using (SqlCommand _command = new SqlCommand("GetUserInfo", _con)
                {
                    CommandType = CommandType.StoredProcedure
                })
                {
                    _command.Parameters.AddWithValue("@Id", Request.Cookies["UserId"].Value);
                    _con.Open();
                    using (SqlDataReader _read = _command.ExecuteReader())
                    {
                        while (_read.Read())
                        {
                            textPerson.Text = _read.GetString(0);
                            textPhone.Text = _read.GetString(1);
                            textEmail.Text = _read.GetString(2);
                        }
                    }
                }
            }
        }
        _dt = DateTime.Today;
        dropPostMon.Text = _dt.Month.ToString(CultureInfo.InvariantCulture);
        dropPostYear.Text = _dt.Year.ToString(CultureInfo.InvariantCulture);
        dropPostDay.Text = _dt.Day.ToString(CultureInfo.InvariantCulture);
        _dt = DateTime.Today.AddMonths(6);
        dropExpMon.Text = _dt.Month.ToString(CultureInfo.InvariantCulture);
        dropExpYear.Text = _dt.Year.ToString(CultureInfo.InvariantCulture);
        dropExpDay.Text = _dt.Day.ToString(CultureInfo.InvariantCulture);
        radioFull.Checked = true;
        checkStatus.Checked = true;
        buttonRepost.Visible = false;
    }

    protected void buttonSubmit_Click(object sender, EventArgs e)
    {
        using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
        {
            using (SqlCommand _command = new SqlCommand("SaveJob", _con)
            {
                CommandType = CommandType.StoredProcedure
            })
            {
                _command.Parameters.AddWithValue("@Id", id == 0 ? (object)DBNull.Value : id);
                _command.Parameters.AddWithValue("@Code", textCode.Text);
                _command.Parameters.AddWithValue("@ClientReqNo", textClientNo.Text);
                _command.Parameters.AddWithValue("@Title", textTitle.Text);
                _command.Parameters.AddWithValue("@Description", Editor1.Content);
                _command.Parameters.AddWithValue("@Location", textLocation.Text);
                _command.Parameters.AddWithValue("@State", dropState.Text);
                _command.Parameters.AddWithValue("@Person", textPerson.Text);
                _command.Parameters.AddWithValue("@Phone", textPhone.Text);
                _command.Parameters.AddWithValue("@Email", textEmail.Text);
                _command.Parameters.AddWithValue("@OFCCP", checkOFCCP.Checked);
                _command.Parameters.AddWithValue("@Short", textShort.Text);
                _command.Parameters.AddWithValue("@Expiry", new DateTime(Convert.ToInt32(dropExpYear.Text), Convert.ToInt32(dropExpMon.Text), Convert.ToInt32(dropExpDay.Text)));
                _command.Parameters.AddWithValue("@PostDate", new DateTime(Convert.ToInt32(dropPostYear.Text), Convert.ToInt32(dropPostMon.Text), Convert.ToInt32(dropPostDay.Text)));
                _command.Parameters.AddWithValue("@UserId", Request.Cookies["UserId"].Value);
                _command.Parameters.AddWithValue("@Status", checkStatus.Checked);
                _command.Parameters.AddWithValue("@Zip", textZip.Text);
                _command.Parameters.AddWithValue("@ShortText", textShortDesc.Text);
                _command.Parameters.AddWithValue("@DescriptionText", Editor1.Text.Length > 1000 ? Editor1.Text.Substring(0, 1000) : Editor1.Text);
                string _jobType;
                if (radioContract.Checked)
                {
                    _jobType = "C";
                }
                else if (radioFull.Checked)
                {
                    _jobType = "F";
                }
                else
                {
                    _jobType = "H";
                }
                _command.Parameters.AddWithValue("@JobType", _jobType);
                _con.Open();
                id = Convert.ToInt32(_command.ExecuteScalar());
                //id = Convert.ToInt32(_command.Parameters["@Id"].Value);
            }
            if (textShort.Text == "")
            {
                const string key = "AIzaSyB45psfhJtp795g6o6NfYqyioLzcNyvtm8";
                string _url = "http://www.agreatis.com/job_details.aspx?id=" + id;
                string _post = "{\"longUrl\": \"" + _url + "\"}";
                HttpWebRequest _request = (HttpWebRequest)WebRequest.Create("https://www.googleapis.com/urlshortener/v1/url?key=" + key);
                string _shortUrl = "";
                try
                {
                    _request.ServicePoint.Expect100Continue = false;
                    _request.Method = "POST";
                    _request.ContentLength = _post.Length;
                    _request.ContentType = "application/json";
                    _request.Headers.Add("Cache-Control", "no-cache");

                    using (Stream _requestStream = _request.GetRequestStream())
                    {
                        byte[] _postBuffer = Encoding.ASCII.GetBytes(_post);
                        _requestStream.Write(_postBuffer, 0, _postBuffer.Length);
                    }

                    using (HttpWebResponse _response = (HttpWebResponse)_request.GetResponse())
                    {
                        using (Stream _responseStream = _response.GetResponseStream())
                        {
                            if (_responseStream != null)
                            {
                                using (StreamReader _responseReader = new StreamReader(_responseStream))
                                {
                                    string _json = _responseReader.ReadToEnd();
                                    _shortUrl = Regex.Match(_json, @"""id"": ?""(?<id>.+)""").Groups["id"].Value;
                                }
                            }
                        }
                    }
                }
                catch
                {
                }
                if (_shortUrl != "")
                {
                    using (SqlCommand _command = new SqlCommand("SetShortLink", _con)
                    {
                        CommandType = CommandType.StoredProcedure
                    })
                    {
                        if (_con.State != ConnectionState.Open)
                        {
                            _con.Open();
                        }
                        _command.Parameters.AddWithValue("@Id", id);
                        _command.Parameters.AddWithValue("@Short", _shortUrl);
                        _command.ExecuteNonQuery();
                    }
                }
            }
            Response.Redirect("adminjobs.aspx", true);
        }
    }

    protected void buttonRepost_Click(object sender, EventArgs e)
    {
        using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
        {
            using (SqlCommand _command = new SqlCommand("Repost", _con)
            {
                CommandType = CommandType.StoredProcedure
            })
            {
                _command.Parameters.AddWithValue("@Id", id == 0 ? (object)DBNull.Value : id);
                _con.Open();
                _command.ExecuteNonQuery();
                Response.Redirect("adminjobs.aspx", true);
            }
        }
    }

    protected string GetID()
    {
        return id.ToString(CultureInfo.InvariantCulture);
    }
}