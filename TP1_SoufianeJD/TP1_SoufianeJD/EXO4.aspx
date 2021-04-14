<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EXO4.aspx.cs" Inherits="TP1_SoufianeJD.EXO4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EXO 4</title>
    <link href="styles/csspaper.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="header">
                <h1>EXO4 - Formulaire étudiant (stationnement du collège)  </h1> 
        </div>



            <p>
                  &nbsp;&nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Veuillez entrer votre Nom :"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_nom" runat="server" ErrorMessage="Invalid Name" ControlToValidate="TextBox5" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$"></asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Veuillez entrer votre Prenom :"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_prenom" runat="server" ErrorMessage="Invalid name" ControlToValidate="TextBox4" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$"></asp:RegularExpressionValidator>
            </p>
            <p>
                  &nbsp;&nbsp;</p>
           
         &nbsp;&nbsp;<p>
                <asp:Label ID="Label6" runat="server" Text="Veuillez entrer votre E-mail Adresse :"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid E-mail Adresse" ControlToValidate="TextBox6" ValidationExpression="([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Veuillez entrer votre Code Postal :"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_codepostal" runat="server" ErrorMessage="Invalid Postal Code" ControlToValidate="TextBox2" ValidationExpression="^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$"></asp:RegularExpressionValidator>
            </p>
            <p>
               &nbsp;&nbsp;</p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Veuillez entrer votre Numéro de téléphone :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="REV_number" runat="server" ErrorMessage="Invalid phone number" ControlToValidate="TextBox1" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$"></asp:RegularExpressionValidator>
            </p>
            <p>
                &nbsp;&nbsp;</p>

            <h4>

           <asp:Button ID="btnsubmit" runat="server" CssClass="butColoré" Text="Submit" OnClick="btnsubmit_Click"/>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>

            </h4>

    </form>
</body>
</html>