
Partial Class App_Log_Error_404_Default
  Inherits System.Web.UI.Page

  Dim Conn As MySqlConnection = New MySqlConnection(ConfigurationManager.ConnectionStrings("siteConn").ConnectionString)

  Dim newURL As String

  Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
    If Request.QueryString("Parent") = "0" Then
			Response.Redirect("/")
    End If

		Dim sSQL As String = "SELECT * FROM bo_redirects WHERE oldURL = '" & Request.QueryString("aspxerrorpath") & "'"
    Dim objDR As MySqlDataReader
    Dim Cmd As New MySqlCommand(sSQL, Conn)
    Conn.Open()
    objDR = Cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection)

    While objDR.Read()
      newURL = objDR("newURL")
		End While
		Conn.Close()
    Response.Status = "301 Moved Permanently"
    Response.AddHeader("Location", newURL)

		Context.Items("Currentplace") = "App_Log"

		Page.Title = "404 Not Found"

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
