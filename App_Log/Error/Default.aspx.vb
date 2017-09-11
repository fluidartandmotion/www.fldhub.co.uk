
Partial Class App_Log_Error_Default
  Inherits System.Web.UI.Page

	Dim Conn As MySqlConnection = New MySqlConnection(ConfigurationManager.ConnectionStrings("siteConn").ConnectionString)

	Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
		Page.Title = "HTTP Error"

		Dim coSQL As String = "SELECT id, companyName From bo_site_contact_details WHERE id = '1'"
		Dim coDbRead As MySqlDataReader
		Dim coCmd As New MySqlCommand(coSQL, Conn)
		Conn.Open()
		coDbRead = coCmd.ExecuteReader(CommandBehavior.CloseConnection)
		While coDbRead.Read()
			litCompany.Text = coDbRead("companyName").ToString
		End While
		Conn.Close()
		Conn.Dispose()
	End Sub

End Class
