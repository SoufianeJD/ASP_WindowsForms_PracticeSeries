<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EXO2_P1.aspx.cs" Inherits="TP1_SoufianeJD.EXO2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles/csspaper.css" rel="stylesheet" type="text/css" />
    <title>Exercice 2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <h1>Exo2 Page 1  </h1> 
                <br /><br />
                
              
                
                <asp:Label ID="Lb1" runat="server" Text="Entrez votre commentaire et cliquez sur la photo"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/lake.png" PostBackUrl="~/EXO2_P2.aspx" ImageAlign="AbsMiddle" />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
              <br />

                <asp:Panel ID="pnl1" runat="server">
                    <asp:RadioButton ID="RadioButton1" runat="server" TextAlign="Right"  GroupName="SoufianeJD" Text="Quelconque" AutoPostBack="True"/>
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" TextAlign="Right"  GroupName="SoufianeJD" Text="Moyenne" AutoPostBack="True" />
                    <br />
                    <asp:RadioButton ID="RadioButton3" runat="server" TextAlign="Right"  GroupName="SoufianeJD" Text="Excellente" AutoPostBack="True"/>

                </asp:Panel>

        </div>
        </div>
    </form>
</body>
</html>