<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Exam_Soufiane_Jaida.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <div class="center">
       
             <div class="Africa">
              
                
                 <div class="text">
                   
                      <b class="text1">  </b>
                 </div>
             
                
           </div>
           
          
           <div class="form-style-10">
<h1>Cher Candidat <span> Bienvenue Sur la page du LOGIN </span></h1>

    <div class="section">
    <div class="inner-wrap">
        login <asp:TextBox ID="log" runat="server"></asp:TextBox>
        Mot de passe
         <asp:TextBox ID="mot" runat="server"></asp:TextBox>  
        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Green"></asp:Label>
        <asp:Label ID="failed" runat="server" Text="" ForeColor="Red"></asp:Label>
    </div>


    <div class="button-section">
        <asp:Button ID="Button1" runat="server" Text="Se connecter" OnClick="Button1_Click1" />  
     
       
    </div>

</div>
           </div>
     </asp:Content>      