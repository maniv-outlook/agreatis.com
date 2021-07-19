<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
	private DateTime dateStart, dateEnd;
	protected void Page_Load(object sender, EventArgs e)
	{
		int _id = 0;
		if (Request.QueryString["id"] != null && Request.QueryString["id"] != "")
		{
			int.TryParse(Request.QueryString["id"], out _id);
		}
		using (SqlConnection _con = new SqlConnection(ConfigurationManager.AppSettings["ConnStr"]))
		{
			using (SqlCommand _command = new SqlCommand("GetOFCCPSumary", _con)
			{
				CommandType = CommandType.StoredProcedure
			})
			{
				bool _showDate = false;
				if (Request.QueryString["start"] == null || Request.QueryString["start"] == "")
				{
					dateStart = new DateTime(2000, 1, 1);
				}
				else
				{
					DateTime.TryParse(Request.QueryString["start"], out dateStart);
					_showDate = true;
				}
				if (Request.QueryString["end"] == null || Request.QueryString["end"] == "")
				{
					dateEnd = new DateTime(2020, 12, 31);
				}
				else
				{
					DateTime.TryParse(Request.QueryString["end"], out dateEnd);
					dateEnd = dateEnd.AddDays(1);
					_showDate = true;
				}
				_command.Parameters.AddWithValue("@JobId", _id == 0 ? DBNull.Value : (object)_id);
				_command.Parameters.AddWithValue("@DateStart", dateStart);
				_command.Parameters.AddWithValue("@DateEnd", dateEnd);
				_con.Open();
				using (DataSet _ds = new DataSet())
				{
					using (SqlDataAdapter _da = new SqlDataAdapter(_command))
					{
						_da.Fill(_ds);
					}
					hJobTitle.InnerHtml = _ds.Tables[3].Rows.Count > 0 ? "Job Title: " + _ds.Tables[3].Rows[0][0] : "No Job found matching this ID.";
					if (_showDate)
					{
						hDate.InnerHtml = "Date Range between " + dateStart.ToShortDateString() + " and " + dateEnd.AddDays(-1).ToShortDateString();
					}
					else
					{
						hDate.InnerHtml = "All Dates";
					}
					using (DataView _dvw = _ds.Tables[0].DefaultView)
					{
						double _totalRecords = 0;
						foreach (DataRowView _dataRowView in _dvw)
						{
							_totalRecords += Convert.ToInt32(_dataRowView[0]);
						}
						if (Math.Abs(_totalRecords - 0) < double.Epsilon)
						{
							_totalRecords = 1;
						}
						_dvw.Sort = "Gender ASC, Race ASC";
						//MALE
						int _row = _dvw.Find(new object[] { 1, 1 }); // Male Hispanic
						int _rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleHispanic.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleHispanic.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 2 }); // Male White
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleWhite.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleWhite.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 3 }); // Male Black
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleBlack.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleBlack.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 4 }); // Male Native
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleNative.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleNative.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 5 }); // Male Asian
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleAsian.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleAsian.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 6 }); // Male Alaskan
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleAlaskan.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleAlaskan.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 7 }); // Male Two
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleTwo.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleTwo.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 8 }); // Male Declined
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleDeclined.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleDeclined.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 9 }); // Male Unknown
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleUnknown.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleUnknown.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 10 }); // Male Other
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countMaleOthers.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleOthers.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						//FEMALE
						_row = _dvw.Find(new object[] { 2, 1 }); // Female Hispanic
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleHispanic.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleHispanic.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 2, 2 }); // Female White
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleWhite.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleWhite.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 2, 3 }); // Female Black
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleBlack.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleBlack.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 2, 4 }); // Female Native
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleNative.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleNative.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 2, 5 }); // Female Asian
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleAsian.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleAsian.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 2, 6 }); // Female Alaskan
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleAlaskan.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleAlaskan.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 2, 7 }); // Female Two
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleTwo.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleTwo.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 2, 8 }); // Female Declined
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleDeclined.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleDeclined.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 9 }); // Female Unknown
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleUnknown.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleUnknown.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 10 }); // Female Other
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countFemaleOthers.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleOthers.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						//OTHERS
						_row = _dvw.Find(new object[] { 3, 1 }); // Others Hispanic
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersHispanic.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersHispanic.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 3, 2 }); // Others White
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersWhite.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersWhite.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 3, 3 }); // Others Black
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersBlack.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersBlack.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 3, 4 }); // Others Native
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersNative.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersNative.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 3, 5 }); // Others Asian
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersAsian.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersAsian.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 3, 6 }); // Others Alaskan
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersAlaskan.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersAlaskan.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 3, 7 }); // Others Two
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersTwo.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersTwo.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 3, 8 }); // Others Declined
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersDeclined.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersDeclined.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 9 }); // Others Unknown
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersUnknown.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersUnknown.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 10 }); // Others Other
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countOthersOthers.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersOthers.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						//DECLINED
						_row = _dvw.Find(new object[] { 4, 1 }); // Decline Hispanic
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineHispanic.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedHispanic.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 4, 2 }); // Decline White
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineWhite.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedWhite.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 4, 3 }); // Decline Black
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineBlack.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedBlack.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 4, 4 }); // Decline Native
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineNative.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedNative.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 4, 5 }); // Decline Asian
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineAsian.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedAsian.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 4, 6 }); // Decline Alaskan
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineAlaskan.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedAlaskan.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 4, 7 }); // Decline Two
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineTwo.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedTwo.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 4, 8 }); // Decline Declined
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineDeclined.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedDeclined.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 9 }); // Decline Unknown
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineUnknown.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedUnknown.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_row = _dvw.Find(new object[] { 1, 10 }); // Decline Other
						_rec = _row == -1 ? 0 : Convert.ToInt32(_dvw[_row][0]);
						countDeclineOthers.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedOthers.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						//SUM MINORITY
						_rec = Convert.ToInt32(countMaleBlack.InnerHtml)
							   + Convert.ToInt32(countMaleAsian.InnerHtml)
							   + Convert.ToInt32(countMaleNative.InnerHtml)
							   + Convert.ToInt32(countMaleAlaskan.InnerHtml)
							   + Convert.ToInt32(countMaleHispanic.InnerHtml);
						countMaleTotalMinority.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleTotalMinority.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_rec = Convert.ToInt32(countFemaleBlack.InnerHtml)
							   + Convert.ToInt32(countFemaleAsian.InnerHtml)
							   + Convert.ToInt32(countFemaleNative.InnerHtml)
							   + Convert.ToInt32(countFemaleAlaskan.InnerHtml)
							   + Convert.ToInt32(countFemaleHispanic.InnerHtml);
						countFemaleTotalMinority.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleTotalMinority.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_rec = Convert.ToInt32(countOthersBlack.InnerHtml)
							   + Convert.ToInt32(countOthersAsian.InnerHtml)
							   + Convert.ToInt32(countOthersNative.InnerHtml)
							   + Convert.ToInt32(countOthersAlaskan.InnerHtml)
							   + Convert.ToInt32(countOthersHispanic.InnerHtml);
						countOthersTotalMinority.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersTotalMinority.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_rec = Convert.ToInt32(countDeclineBlack.InnerHtml)
							   + Convert.ToInt32(countDeclineAsian.InnerHtml)
							   + Convert.ToInt32(countDeclineNative.InnerHtml)
							   + Convert.ToInt32(countDeclineAlaskan.InnerHtml)
							   + Convert.ToInt32(countDeclineHispanic.InnerHtml);
						countDeclineTotalMinority.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedTotalMinority.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						//SUM TOTAL APPLICANTS	
						_rec = Convert.ToInt32(countMaleWhite.InnerHtml)
							   + Convert.ToInt32(countMaleDeclined.InnerHtml)
							   + Convert.ToInt32(countMaleUnknown.InnerHtml)
							   + Convert.ToInt32(countMaleTotalMinority.InnerHtml);
						countMaleTotalApplicants.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentMaleTotalApplicants.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_rec = Convert.ToInt32(countFemaleWhite.InnerHtml)
							   + Convert.ToInt32(countFemaleDeclined.InnerHtml)
							   + Convert.ToInt32(countFemaleUnknown.InnerHtml)
							   + Convert.ToInt32(countFemaleTotalMinority.InnerHtml);
						countFemaleTotalApplicants.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentFemaleTotalApplicants.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_rec = Convert.ToInt32(countOthersWhite.InnerHtml)
							   + Convert.ToInt32(countOthersDeclined.InnerHtml)
							   + Convert.ToInt32(countOthersUnknown.InnerHtml)
							   + Convert.ToInt32(countOthersTotalMinority.InnerHtml);
						countOthersTotalApplicants.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentOthersTotalApplicants.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
						_rec = Convert.ToInt32(countDeclineWhite.InnerHtml)
							   + Convert.ToInt32(countDeclineDeclined.InnerHtml)
							   + Convert.ToInt32(countDeclineUnknown.InnerHtml)
							   + Convert.ToInt32(countDeclineTotalMinority.InnerHtml);
						countDeclineTotalApplicants.InnerHtml = _rec.ToString(CultureInfo.InvariantCulture);
						percentDeclinedTotalApplicants.InnerHtml = Math.Round(_rec / _totalRecords * 100, 2).ToString(CultureInfo.InvariantCulture);
					}
					using (DataTable _dvw = _ds.Tables[1])
					{
						double _rec = _dvw.Rows.Count;
						if (Math.Abs(_rec - 0) < double.Epsilon)
						{
							_rec = 1;
						}
						// Males
						EnumerableRowCollection<DataRow> _dataRows = from _view in _dvw.AsEnumerable()
																	 where _view.Field<byte>("Gender") == 1
																	 select _view;
						int _count = _dataRows.Count();
						countVetTotalMale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetTotalMale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("V")
									&& _view.Field<byte>("Gender") == 1
									select _view;
						_count = _dataRows.Count();
						countVetVietnamMale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetVietnamMale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("S")
									&& _view.Field<byte>("Gender") == 1
									select _view;
						_count = _dataRows.Count();
						countVetSpecialMale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetSpecialMale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("O")
									&& _view.Field<byte>("Gender") == 1
									select _view;
						_count = _dataRows.Count();
						countVetOthersMale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetOthersMale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus") == ""
									&& _view.Field<byte>("Gender") == 1
									select _view;
						_count = _dataRows.Count();
						countVetNoneMale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetNoneMale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("U")
									&& _view.Field<byte>("Gender") == 1
									select _view;
						_count = _dataRows.Count();
						countVetUnknownMale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetUnknownMale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("D")
									&& _view.Field<byte>("Gender") == 1
									select _view;
						_count = _dataRows.Count();
						countVetDeclinedMale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetDeclinedMale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						//Females
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<byte>("Gender") == 2
									select _view;
						_count = _dataRows.Count();
						countVetTotalFemale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetTotalFemale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("V")
									&& _view.Field<byte>("Gender") == 2
									select _view;
						_count = _dataRows.Count();
						countVetVietnamFemale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetVietnamFemale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("S")
									&& _view.Field<byte>("Gender") == 2
									select _view;
						_count = _dataRows.Count();
						countVetSpecialFemale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetSpecialFemale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("O")
									&& _view.Field<byte>("Gender") == 2
									select _view;
						_count = _dataRows.Count();
						countVetOthersFemale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetOthersFemale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus") == ""
									&& _view.Field<byte>("Gender") == 2
									select _view;
						_count = _dataRows.Count();
						countVetNoneFemale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetNoneFemale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("U")
									&& _view.Field<byte>("Gender") == 2
									select _view;
						_count = _dataRows.Count();
						countVetUnknownFemale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetUnknownFemale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("D")
									&& _view.Field<byte>("Gender") == 2
									select _view;
						_count = _dataRows.Count();
						countVetDeclinedFemale.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetDeclinedFemale.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						//Others
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<byte>("Gender") == 3
									select _view;
						_count = _dataRows.Count();
						countVetTotalOthers.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetTotalOthers.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("V")
									&& _view.Field<byte>("Gender") == 3
									select _view;
						_count = _dataRows.Count();
						countVetVietnamOthers.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetVietnameOthers.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("S")
									&& _view.Field<byte>("Gender") == 3
									select _view;
						_count = _dataRows.Count();
						countVetSpecialOthers.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetSpecialOthers.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("O")
									&& _view.Field<byte>("Gender") == 3
									select _view;
						_count = _dataRows.Count();
						countVetOthersOthers.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetOthersOthers.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus") == ""
									&& _view.Field<byte>("Gender") == 3
									select _view;
						_count = _dataRows.Count();
						countVetNoneOthers.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetNoneOthers.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("U")
									&& _view.Field<byte>("Gender") == 3
									select _view;
						_count = _dataRows.Count();
						countVetUnknownOthers.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetUnknownOthers.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("D")
									&& _view.Field<byte>("Gender") == 3
									select _view;
						_count = _dataRows.Count();
						countVetDeclinedOthers.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetDeclinedOthers.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						//Declined
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<byte>("Gender") == 4
									select _view;
						_count = _dataRows.Count();
						countVetTotalDeclined.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetTotalDeclined.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("V")
									&& _view.Field<byte>("Gender") == 4
									select _view;
						_count = _dataRows.Count();
						countVetVietnamDeclined.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetVietnamDeclined.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("S")
									&& _view.Field<byte>("Gender") == 4
									select _view;
						_count = _dataRows.Count();
						countVetSpecialDeclined.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetSpecialDeclined.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("O")
									&& _view.Field<byte>("Gender") == 4
									select _view;
						_count = _dataRows.Count();
						countVetOthersDeclined.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetOthersDeclined.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus") == ""
									&& _view.Field<byte>("Gender") == 4
									select _view;
						_count = _dataRows.Count();
						countVetNoneDeclined.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetNoneDeclined.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("U")
									&& _view.Field<byte>("Gender") == 4
									select _view;
						_count = _dataRows.Count();
						countVetUnknownDeclined.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetUnknownDeclined.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
						_dataRows = from _view in _dvw.AsEnumerable()
									where _view.Field<string>("VeteranStatus").Contains("D")
									&& _view.Field<byte>("Gender") == 4
									select _view;
						_count = _dataRows.Count();
						countVetDeclinedDeclined.InnerHtml = _count.ToString(CultureInfo.InvariantCulture);
						percentVetDeclinedDeclined.InnerHtml = Math.Round(_count / _rec * 100, 2).ToString(CultureInfo.InvariantCulture);
					}
				}
			}
		}
		ClientScript.RegisterClientScriptBlock(typeof(string), Guid.NewGuid().ToString(), "window.print();", true);
	}


</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>OFCCP Summary</title>
	<link href="pivotal.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		.auto-style1
		{
			text-align: center;
			border: 1px solid #C7C7C7;
			height: 35px;
			width: 9%;
		}
		.auto-style2
		{
			text-align: right;
			border: 1px solid #C7C7C7;
			padding-right: 5px;
			height: 35px;
			width: 28%;
		}
		.auto-style4
		{
			border: 1px solid #C7C7C7;
			text-align: center;
			font-weight: bold;
			height: 35px;
			width: 9%;
			background-color: #F3F3F3;
		}
		.auto-style5
		{
			text-align: right;
			border: 1px solid #C7C7C7;
			padding-right: 5px;
			height: 35px;
			width: 28%;
			background-color: #F3F3F3;
			font-weight: bold;
		}
	</style>
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
	<div id="divTable" runat="server" style="margin: 15px;">
		<h2 id="hJobTitle" runat="server" style="margin-bottom: 15px; color: red;">
		</h2>
		<h3 id="hDate" runat="server" style="margin-bottom: 15px; color: red;">
		</h3>
		<h2>
			Summary by Race</h2>
		<table style="width: 100%; border-collapse: collapse" cellpadding="0" cellspacing="0">
			<tr>
				<td class="auto-style2">
				</td>
				<td class="auto-style1" colspan="2">
					<strong>Male</strong>
				</td>
				<td class="auto-style1" colspan="2">
					<strong>Female</strong>
				</td>
				<td class="auto-style1" colspan="2">
					<strong>Others</strong>
				</td>
				<td class="auto-style1" colspan="2">
					<strong>Declined to Identify</strong>
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
				</td>
				<td class="auto-style1">
					<strong>Count</strong>
				</td>
				<td class="auto-style1">
					<strong>% All</strong>
				</td>
				<td class="auto-style1">
					<strong>Count</strong>
				</td>
				<td class="auto-style1">
					<strong>% All</strong>
				</td>
				<td class="auto-style1">
					<strong>Count</strong>
				</td>
				<td class="auto-style1">
					<strong>% All</strong>
				</td>
				<td class="auto-style1">
					<strong>Count</strong>
				</td>
				<td class="auto-style1">
					<strong>%All</strong>
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					White
				</td>
				<td class="auto-style1" id="countMaleWhite" runat="server">
				</td>
				<td class="auto-style1" id="percentMaleWhite" runat="server">
				</td>
				<td class="auto-style1" id="countFemaleWhite" runat="server">
				</td>
				<td class="auto-style1" id="percentFemaleWhite" runat="server">
				</td>
				<td class="auto-style1" id="countOthersWhite" runat="server">
				</td>
				<td class="auto-style1" id="percentOthersWhite" runat="server">
				</td>
				<td class="auto-style1" id="countDeclineWhite" runat="server">
				</td>
				<td class="auto-style1" id="percentDeclinedWhite" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Black/African American
				</td>
				<td class="auto-style1" id="countMaleBlack" runat="server">
				</td>
				<td class="auto-style1" id="percentMaleBlack" runat="server">
				</td>
				<td class="auto-style1" id="countFemaleBlack" runat="server">
				</td>
				<td class="auto-style1" id="percentFemaleBlack" runat="server">
				</td>
				<td class="auto-style1" id="countOthersBlack" runat="server">
				</td>
				<td class="auto-style1" id="percentOthersBlack" runat="server">
				</td>
				<td class="auto-style1" id="countDeclineBlack" runat="server">
				</td>
				<td class="auto-style1" id="percentDeclinedBlack" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Asian/Pacific Islander
				</td>
				<td class="auto-style1" id="countMaleAsian" runat="server">
				</td>
				<td class="auto-style1" id="percentMaleAsian" runat="server">
				</td>
				<td class="auto-style1" id="countFemaleAsian" runat="server">
				</td>
				<td class="auto-style1" id="percentFemaleAsian" runat="server">
				</td>
				<td class="auto-style1" id="countOthersAsian" runat="server">
				</td>
				<td class="auto-style1" id="percentOthersAsian" runat="server">
				</td>
				<td class="auto-style1" id="countDeclineAsian" runat="server">
				</td>
				<td class="auto-style1" id="percentDeclinedAsian" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					American Indian (Native)
				</td>
				<td class="auto-style1" id="countMaleNative" runat="server">
				</td>
				<td class="auto-style1" id="percentMaleNative" runat="server">
				</td>
				<td class="auto-style1" id="countFemaleNative" runat="server">
				</td>
				<td class="auto-style1" id="percentFemaleNative" runat="server">
				</td>
				<td class="auto-style1" id="countOthersNative" runat="server">
				</td>
				<td class="auto-style1" id="percentOthersNative" runat="server">
				</td>
				<td class="auto-style1" id="countDeclineNative" runat="server">
				</td>
				<td class="auto-style1" id="percentDeclinedNative" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Alaskan Native
				</td>
				<td class="auto-style1" id="countMaleAlaskan" runat="server">
				</td>
				<td class="auto-style1" id="percentMaleAlaskan" runat="server">
				</td>
				<td class="auto-style1" id="countFemaleAlaskan" runat="server">
				</td>
				<td class="auto-style1" id="percentFemaleAlaskan" runat="server">
				</td>
				<td class="auto-style1" id="countOthersAlaskan" runat="server">
				</td>
				<td class="auto-style1" id="percentOthersAlaskan" runat="server">
				</td>
				<td class="auto-style1" id="countDeclineAlaskan" runat="server">
				</td>
				<td class="auto-style1" id="percentDeclinedAlaskan" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Hispanic
				</td>
				<td class="auto-style1" id="countMaleHispanic" runat="server">
				</td>
				<td class="auto-style1" id="percentMaleHispanic" runat="server">
				</td>
				<td class="auto-style1" id="countFemaleHispanic" runat="server">
				</td>
				<td class="auto-style1" id="percentFemaleHispanic" runat="server">
				</td>
				<td class="auto-style1" id="countOthersHispanic" runat="server">
				</td>
				<td class="auto-style1" id="percentOthersHispanic" runat="server">
				</td>
				<td class="auto-style1" id="countDeclineHispanic" runat="server">
				</td>
				<td class="auto-style1" id="percentDeclinedHispanic" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Two or More Races
				</td>
				<td class="auto-style1" id="countMaleTwo" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="percentMaleTwo" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="countFemaleTwo" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="percentFemaleTwo" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="countOthersTwo" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="percentOthersTwo" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="countDeclineTwo" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="percentDeclinedTwo" runat="server">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Declined to Identify
				</td>
				<td class="auto-style1" id="countMaleDeclined" runat="server">
				</td>
				<td class="auto-style1" id="percentMaleDeclined" runat="server">
				</td>
				<td class="auto-style1" id="countFemaleDeclined" runat="server">
				</td>
				<td class="auto-style1" id="percentFemaleDeclined" runat="server">
				</td>
				<td class="auto-style1" id="countOthersDeclined" runat="server">
				</td>
				<td class="auto-style1" id="percentOthersDeclined" runat="server">
				</td>
				<td class="auto-style1" id="countDeclineDeclined" runat="server">
				</td>
				<td class="auto-style1" id="percentDeclinedDeclined" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Others
				</td>
				<td class="auto-style1" id="countMaleOthers" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="percentMaleOthers" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="countFemaleOthers" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="percentFemaleOthers" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="countOthersOthers" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="percentOthersOthers" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="countDeclineOthers" runat="server">
					&nbsp;
				</td>
				<td class="auto-style1" id="percentDeclinedOthers" runat="server">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Unknown
				</td>
				<td class="auto-style1" id="countMaleUnknown" runat="server">
				</td>
				<td class="auto-style1" id="percentMaleUnknown" runat="server">
				</td>
				<td class="auto-style1" id="countFemaleUnknown" runat="server">
				</td>
				<td class="auto-style1" id="percentFemaleUnknown" runat="server">
				</td>
				<td class="auto-style1" id="countOthersUnknown" runat="server">
				</td>
				<td class="auto-style1" id="percentOthersUnknown" runat="server">
				</td>
				<td class="auto-style1" id="countDeclineUnknown" runat="server">
				</td>
				<td class="auto-style1" id="percentDeclinedUnknown" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style5">
					Total Minority
				</td>
				<td class="auto-style4" id="countMaleTotalMinority" runat="server">
				</td>
				<td class="auto-style4" id="percentMaleTotalMinority" runat="server">
				</td>
				<td class="auto-style4" id="countFemaleTotalMinority" runat="server">
				</td>
				<td class="auto-style4" id="percentFemaleTotalMinority" runat="server">
				</td>
				<td class="auto-style4" id="countOthersTotalMinority" runat="server">
				</td>
				<td class="auto-style4" id="percentOthersTotalMinority" runat="server">
				</td>
				<td class="auto-style4" id="countDeclineTotalMinority" runat="server">
				</td>
				<td class="auto-style4" id="percentDeclinedTotalMinority" runat="server">
				</td>
			</tr>
			<tr>
				<td class="auto-style5">
					Total Applicants
				</td>
				<td class="auto-style4" id="countMaleTotalApplicants" runat="server">
				</td>
				<td class="auto-style4" id="percentMaleTotalApplicants" runat="server">
				</td>
				<td class="auto-style4" id="countFemaleTotalApplicants" runat="server">
				</td>
				<td class="auto-style4" id="percentFemaleTotalApplicants" runat="server">
				</td>
				<td class="auto-style4" id="countOthersTotalApplicants" runat="server">
				</td>
				<td class="auto-style4" id="percentOthersTotalApplicants" runat="server">
				</td>
				<td class="auto-style4" id="countDeclineTotalApplicants" runat="server">
				</td>
				<td class="auto-style4" id="percentDeclinedTotalApplicants" runat="server">
				</td>
			</tr>
		</table>
		<hr />
		<h2>
			Summary by Veteran Status</h2>
		<table style="width: 100%; margin-top: 10px; border-collapse: collapse" cellpadding="0"
			cellspacing="0">
			<tr>
				<td class="auto-style2">
					&nbsp;
				</td>
				<td class="auto-style1" colspan="2">
					<strong>Male</strong>
				</td>
				<td colspan="2" class="auto-style1">
					<strong>Female</strong>
				</td>
				<td colspan="2" class="auto-style1">
					<strong>Others</strong>
				</td>
				<td colspan="2" class="auto-style1">
					<strong>Declined to Identify</strong>
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					&nbsp;
				</td>
				<td class="auto-style1">
					<strong>&nbsp; Count</strong>
				</td>
				<td class="auto-style1">
					<strong>% All</strong>
				</td>
				<td class="auto-style1">
					<strong>Count</strong>
				</td>
				<td class="auto-style1">
					<strong>% All</strong>
				</td>
				<td class="auto-style1">
					<strong>Count</strong>
				</td>
				<td class="auto-style1">
					<strong>% All</strong>
				</td>
				<td class="auto-style1">
					<strong>Count</strong>
				</td>
				<td class="auto-style1">
					<strong>% All</strong>
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Vietnam
				</td>
				<td class="auto-style1" runat="server" id="countVetVietnamMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetVietnamMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetVietnamFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetVietnamFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetVietnamOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetVietnameOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetVietnamDeclined">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetVietnamDeclined">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Special
				</td>
				<td class="auto-style1" runat="server" id="countVetSpecialMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetSpecialMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetSpecialFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetSpecialFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetSpecialOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetSpecialOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetSpecialDeclined">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetSpecialDeclined">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					&nbsp; Others
				</td>
				<td class="auto-style1" runat="server" id="countVetOthersMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetOthersMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetOthersFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetOthersFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetOthersOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetOthersOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetOthersDeclined">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetOthersDeclined">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Unknown
				</td>
				<td class="auto-style1" runat="server" id="countVetUnknownMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetUnknownMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetUnknownFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetUnknownFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetUnknownOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetUnknownOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetUnknownDeclined">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetUnknownDeclined">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					&nbsp; No Veteran Status
				</td>
				<td class="auto-style1" runat="server" id="countVetNoneMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetNoneMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetNoneFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetNoneFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetNoneOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetNoneOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetNoneDeclined">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetNoneDeclined">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td class="auto-style2">
					Declined to State
				</td>
				<td class="auto-style1" runat="server" id="countVetDeclinedMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetDeclinedMale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetDeclinedFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetDeclinedFemale">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetDeclinedOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetDeclinedOthers">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="countVetDeclinedDeclined">
					&nbsp;
				</td>
				<td class="auto-style1" runat="server" id="percentVetDeclinedDeclined">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td class="auto-style5">
					Total Applicants
				</td>
				<td class="auto-style4" runat="server" id="countVetTotalMale">
					&nbsp;
				</td>
				<td class="auto-style4" runat="server" id="percentVetTotalMale">
					&nbsp;
				</td>
				<td class="auto-style4" runat="server" id="countVetTotalFemale">
					&nbsp;
				</td>
				<td class="auto-style4" runat="server" id="percentVetTotalFemale">
					&nbsp;
				</td>
				<td class="auto-style4" runat="server" id="countVetTotalOthers">
					&nbsp;
				</td>
				<td class="auto-style4" runat="server" id="percentVetTotalOthers">
					&nbsp;
				</td>
				<td class="auto-style4" runat="server" id="countVetTotalDeclined">
					&nbsp;
				</td>
				<td class="auto-style4" runat="server" id="percentVetTotalDeclined">
					&nbsp;
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>
