
Partial Class _Default
    Inherits System.Web.UI.Page


    Private Sub ValidateForm()
        MessageCenter.Text = ""
        Dim Errors As String = ""
        Dim FormElementCounter As Integer = 0
        For Each tb As TextBox In ContactForm.Controls.OfType(Of TextBox)()
            Dim LblName As String = tb.ID + "Lbl"
            Dim tbLbl As Label = TryCast(Me.FindControl(LblName), Label)

            If tb.Text = "" Then
                Errors += "<li>Please enter your " + Regex.Replace(tb.ID, "_", " ").ToLower + ".</li>"
                tb.CssClass = "form-control is-invalid"
            Else
                tb.CssClass = "form-control is-valid"
            End If
        Next
        If Errors = "" Then
            MessageCenter.Text = "<div class=""alert alert-success"" role=""alert"">"
            MessageCenter.Text += "<h3>Thanks, " + First_Name.Text + "! Your request as been submitted!</h3>"
            MessageCenter.Text += "<p>A member of our team will be in touch with you within two (2) business days.</p>"
            MessageCenter.Text += "</div>"

            FormData.ForeColor = Drawing.Color.DarkGreen
            FormData.Text = "<div class=""alert alert-info"">"
            FormData.Text += "<h3>Summary of Form Data</h3>"
            FormData.Text += "<ul>"
            Dim FormDataCounter As Integer = 0
            For Each tb As TextBox In ContactForm.Controls.OfType(Of TextBox)()
                FormData.Text += "<li>#" & Str(FormDataCounter) & ") " + tb.ID + " :: " + tb.Text + "</li>"
                FormDataCounter += 1
            Next
            FormData.Text += "</ul>"
            FormData.Text += "<p>Form submitted at " + DateTime.Now.ToLongDateString() + " at " + DateTime.Now.ToLongTimeString() + "</p>"
            FormData.Text += "</div>"
            ContactForm.Visible = False
        Else
            MessageCenter.Text = "<div class=""alert alert-danger"" role=""alert"">"
            MessageCenter.Text += "<h4>Ooops!</h4><p> It looks like we have some things to fix up here:</p><ul>"
            MessageCenter.Text += "<ul>" + Errors + "</ul>"
            MessageCenter.Text += "</div>"
        End If
    End Sub

    Protected Sub ContactSubmitBtn_Click(sender As Object, e As System.EventArgs) Handles ContactSubmitBtn.Click
        ValidateForm()
    End Sub
End Class
