<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailUs.aspx.cs" Inherits="TP4_SoufianeJD.MailUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align ="center" width="60%" style="border-collapse:collapse; border:groove">
                <tr>
                        <td> To: </td>
                        <td> <asp:TextBox ID="to" runat="server" width="99%" Text ="s.f.j.dsapro@gmail.com"></asp:TextBox></td>
                </tr>
                <tr>
                        <td> From: </td>
                        <td> <asp:TextBox ID="from" runat="server" width="99%" ></asp:TextBox></td>
                </tr>
                <tr>
                        <td> Subject: </td>
                        <td> <asp:TextBox ID="subject" runat="server" width="99%"></asp:TextBox></td>
                </tr>
                <tr>
                        <td> Body: </td>
                        <td> <asp:TextBox ID="body" runat="server" width="99%" Height="160px" TextMode="MultiLine" ></asp:TextBox ></td>
                </tr>
                <tr>
                        <td> </td>
                        <td><asp:Button ID="send" Onclick="send_Click" runat="server" Text="Send" /> </td>
                </tr>
                <tr>
                        <td> </td>
                        <td><asp:Label ID="status" runat="server" Text=""></asp:Label> </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>