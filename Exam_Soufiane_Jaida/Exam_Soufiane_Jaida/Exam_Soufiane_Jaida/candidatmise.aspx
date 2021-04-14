<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="candidatmise.aspx.cs" Inherits="Exam_Soufiane_Jaida.candidatmise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="sty">

    <asp:Label ID="Label11" runat="server" Text="ID"></asp:Label>
    <asp:TextBox ID="Id" runat="server"></asp:TextBox>


    <asp:Label ID="Label1" runat="server" Text="Nom"></asp:Label>
    <asp:TextBox ID="nom" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Prenom"></asp:Label>
    <asp:TextBox ID="prenom" runat="server"></asp:TextBox>

    <asp:Label ID="Label3" runat="server" Text="Date de naissance"></asp:Label>
    <asp:TextBox ID="date" runat="server"></asp:TextBox>

    <asp:Label ID="Label4" runat="server" Text="Sexe"></asp:Label>
    <asp:TextBox ID="sexe" runat="server"></asp:TextBox>

    <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="email" runat="server"></asp:TextBox>

    <asp:Label ID="Label5" runat="server" Text="Date de rception de CV"></asp:Label>
    <asp:TextBox ID="datee" runat="server"></asp:TextBox>

    <asp:Label ID="Label6" runat="server" Text="Niveau"></asp:Label>
    <asp:TextBox ID="niveau" runat="server"></asp:TextBox>

    <asp:Label ID="Label8" runat="server" Text="Commentaire"></asp:Label>
    <asp:TextBox ID="comment" runat="server"></asp:TextBox>

    <asp:Label ID="Label9" runat="server" Text="Login"></asp:Label>
    <asp:TextBox ID="login" runat="server"></asp:TextBox>

    <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="password" runat="server"></asp:TextBox>

   <asp:Label ID="alert1" runat="server" Text="Upload Photo of yourself"></asp:Label>
   <asp:FileUpload ID="FileUpload1" runat="server" />
   <asp:Label ID="fileee" runat="server" ></asp:Label>

    <asp:Label ID="alert2" runat="server" Text="Upload Photo of yourself"></asp:Label>
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <asp:Label ID="img" runat="server" ></asp:Label>

    <asp:Label ID="secteurr" runat="server" Text="Select secteurs..."></asp:Label>
    <asp:DropDownList ID="secteur" runat="server">
        <asp:ListItem Value="Web development"></asp:ListItem>
        <asp:ListItem Value="Database management"></asp:ListItem>
        <asp:ListItem Value="Robotic"></asp:ListItem>
    </asp:DropDownList>
 

         </div>

     <asp:Label ID="succes" runat="server" Text="" ForeColor="Green"></asp:Label>
         <asp:Label ID="failed" runat="server" Text="" ForeColor="Red"></asp:Label>

    <br/>
     <asp:Label ID="success" runat="server" Text="" ForeColor="Green"></asp:Label>
         <asp:Label ID="failedd" runat="server" Text="" ForeColor="Red"></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" /></asp:Content>