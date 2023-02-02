<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Form (Lesson 4)</title>
    <link rel="Stylesheet" href="main.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body id="bodyID" runat="server">
    <div class="container">
        <h1>Contact Form (Lesson 4)</h1>
        <p>We'd love to hear from you! Please complete the contact request form below.</p>
        <div class="message-center">
            <asp:Label ID="MessageCenter" runat="server" Text=""></asp:Label>
        </div>
        <form id="ContactForm" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="First_NameLbl" runat="server" class="form-label" Text="First Name :" for="FirstName"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="First_Name" placeholder="First Name" class="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Last_NameLbl" runat="server" class="form-label" Text="Last Name :" for="LastName"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Last_Name" placeholder="Last Name" class="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Email_AddressLbl" runat="server" class="form-label" Text="Email :" for="EmailAddress"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="Email_Address" placeholder="Email" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="MessageLbl" runat="server" class="form-label" Text="Message :" for="Message"></asp:Label></td>
                    <td>
                        <asp:TextBox TextMode="MultiLine" ID="Message" Rows="10" class="form-control" placeholder="Please enter your message here" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="ContactSubmitBtn" class="btn btn-primary" runat="server" Text=" Send Contact Request " />
                    </td>
                </tr>
            </table>
        </form>
        <div class="FormData">
            <asp:Label ID="FormData" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <footer>
        <p>For demo purposes only. No actual data collection is occuring in this exercise.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
