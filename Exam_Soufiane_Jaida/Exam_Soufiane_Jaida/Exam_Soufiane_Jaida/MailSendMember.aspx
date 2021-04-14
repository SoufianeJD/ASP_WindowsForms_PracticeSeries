<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MailSendMember.aspx.cs" Inherits="Exam_Soufiane_Jaida.MailSendMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-image: url('http://www.allwhitebackground.com/images/5/Gold-Background-Images.jpg');">
     
            <table align ="center" width="60%" style="border-collapse:collapse; border:groove">
                <tr>
                        <td> To: </td>
                        <td> <asp:TextBox ID="to" runat="server" width="99%" Text ="CandidatMail@gmail.com"></asp:TextBox></td>
                </tr>
                <tr>
                        <td> From: </td>
                        <td> <asp:TextBox ID="from" runat="server" width="99%" Text ="s.f.j.dsapro@gmail.com"></asp:TextBox></td>
                </tr>
                 <tr>
                        <td> Nom </td>
                        <td> <asp:TextBox ID="nom" runat="server" width="99%"></asp:TextBox></td>
                </tr>
                 <tr>
                        <td> Prenom </td>
                        <td> <asp:TextBox ID="prenom" runat="server" width="99%"></asp:TextBox></td>
                </tr> 
                 <tr>
                        <td> Ville </td>
                        <td> <asp:TextBox ID="ville" runat="server" width="99%"></asp:TextBox></td>
                </tr>
                <tr>
                        <td> Message </td>
                        <td> <asp:TextBox ID="msg" runat="server" width="99%" Height="160px" TextMode="MultiLine" ></asp:TextBox ></td>
                </tr>
                <tr>
                        <td> </td>
                        <td><asp:Button ID="send" Onclick="send_Click" runat="server" Text="Send" /> </td>
                </tr>
                

            </table>
        </div> 
            
                        
                        <asp:Label ID="status" runat="server" Text=""></asp:Label> 
                
    </form>
</body>
</html>