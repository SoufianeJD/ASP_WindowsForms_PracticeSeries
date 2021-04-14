<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EXO3.aspx.cs" Inherits="TP1_SoufianeJD.EXO3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles/csspaper.css" rel="stylesheet" type="text/css" />
    <title> Exercice 3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
                <h1>Exercice 3 </h1> </div>
                <br /><br />
        <div class="entete">
        
        <asp:Label ID="lblInvValidator" runat="server" server="" Text="Les controles de validation<asp:HiddenField runat="></asp:Label>
    </div>
        <div class="principale">






            <asp:Label ID="lblInvRequire" runat="server" AssociatedControlID="txtRequired" CssClass="txtColoré" Text="Le RequireFieldValidator (une valeur est requise) :"></asp:Label>
            &nbsp;&nbsp;

            





            <asp:TextBox ID="TxtRequired" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="Rv1" runat="server" ControlToValidate="txtRequired" Display="Dynamic" ErrorMessage="Caractère requis" SetFocusOnError="True" CssClass ="required">Requis</asp:RequiredFieldValidator>

<br /> <br />
            <asp:Label ID="lblInvCompareValidator" runat="server" CssClass="txtColoré" Text="Le CompareValidator (Vérification du type) Entrez le prix :"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtPrix" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cmpData" runat="server" ControlToValidate="txtPrix" Operator="DataTypeCheck" Type="Currency" CssClass="required" Display="Dynamic" ErrorMessage="Entrez une valeur monétaire">Entrez une valeur monétaire</asp:CompareValidator>
            <asp:CompareValidator ID="Rv2" runat="server" Cssclass="required" ControlToValidate="txtPrix" ErrorMessage="Caractère requis">Requis</asp:CompareValidator>
            <br /> <br />
            <asp:Label ID="lblInvCompa" runat="server" CssClass="txtColoré" Text="Le CompareValidator (Comparaison avec une date) : Entrez la date de votre redez-vous (aaaa-mm-jj) :"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cpv2" runat="server" ControlToValidate="txtDate" Operator="GreaterThan" CssClass="required" Display="Dynamic" ErrorMessage="La date doit etre dans le future"> La date doit etre dans l'avenir</asp:CompareValidator>
            <br /> <br />
            <asp:Label ID="lblInvCompa0" runat="server" CssClass="txtColoré" Text="Le CompareValidator ( Comparaison avec un controle) :"></asp:Label>
<br /> &nbsp;&nbsp;
            <asp:Label ID="lblValMontant" runat="server" CssClass="txtColoré" Text="Voici le montant minimal :" AssociatedControlID="txtNbMin" ></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtNbMin" runat="server" ReadOnly="true" width="30px">15</asp:TextBox>
            &nbsp;&nbsp;
            <asp:Label ID="lblInvEntreMontant" runat="server" Text="Entrez un montant supérieur au minimum" CssClass="txtColoré" AssociatedControlID="txtNb"></asp:Label>
             &nbsp;&nbsp;
            <asp:TextBox ID="txtNb" runat="server" Width="30px"></asp:TextBox>
            <asp:CompareValidator ID="cmp3" runat="server" ControlToCompare="txtNbMin" ControlToValidate="txtNb" ErrorMessage="CompareValidator" Operator="GreaterThan" Type="Integer" CssClass="required" Display="Dynamic"> Valeur trop petite</asp:CompareValidator>
            <br /> <br />
            <asp:Label ID="lblInvRangeValidator" runat="server" CssClass="txtColoré" Text="Le RangeValidator Comparaison avec une plage de valeurs : Entrez un nombre entre 0 et 21 incl. :"></asp:Label>
            <asp:RangeValidator ID="rval1" runat="server" ControlToValidate="txtRange" CssClass="required" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="21" MinimumValue="0" Type="Integer">Valeur hors-limite</asp:RangeValidator>

            <asp:TextBox ID="txtRange" runat="server" Width="30px"></asp:TextBox>
            <asp:Label ID="lblMessage" runat="server" CssClass="txtColoré" Text="Label"></asp:Label>
             <br /> <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="true" ShowSummary="false" />
 <br /> <br />
            <asp:Button ID="butOnClique" runat="server" CssClass="butColoré" Text="On clique" OnClick="butOnClique_Click"/>
            </div>
            </form>
</body>
</html>
