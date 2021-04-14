<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="candidatupdate.aspx.cs" Inherits="Exam_Soufiane_Jaida.candidatupdate" %>

    
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="sty">
    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
    <asp:TextBox ID="Id" runat="server"></asp:TextBox>

      <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="email" runat="server"></asp:TextBox>

      <asp:Label ID="Label9" runat="server" Text="Login"></asp:Label>    
    <asp:TextBox ID="login" runat="server"></asp:TextBox>
     
      <asp:Label ID="Label2" runat="server" Text="Niveau"></asp:Label>
    <asp:TextBox ID="niveau" runat="server"></asp:TextBox>

      <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>    
    <asp:TextBox ID="password" runat="server"></asp:TextBox>
          </div>
    <asp:Button ID="Button3" runat="server" Text="Delete"  Width="160px" OnClick="Button3_Click" /> <asp:Button ID="Button4" runat="server" Text="Update" Width="160px" OnClick="Button4_Click" /> 
      <asp:Label ID="succes" runat="server" Text="" ForeColor="Green"></asp:Label>
         <asp:Label ID="failed" runat="server" Text="" ForeColor="Red"></asp:Label>

</asp:Content>
