<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EXO1.aspx.cs" Inherits="TP1_SoufianeJD.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EXO1</title>
    <link href="styles/csspaper.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <h1>Les entrées des données </h1> 
        </div>
          
            <br />
            <br />
        </div>
        <div class="maindiv">
        <asp:Panel ID="Panel1" runat="server" Groupingtext="Veuillez choisir la balise désirée">
      

            <asp:RadioButton ID="radio1" runat="server" TextAlign="Right"  GroupName="grp1" Text="La balise qui permet d'afficher une image"/>
            <br />
            <asp:RadioButton ID="radio2" runat="server" TextAlign="Right"  GroupName="grp1" Text="La balise qui permet d'inserer une division"/>
            <br />
            <asp:RadioButton ID="radio3" runat="server" TextAlign="Right"  GroupName="grp1" Text="La balise qui permet de tracer une ligne"/>
            <br />
            <asp:RadioButton ID="radio4" runat="server" TextAlign="Right"  GroupName="grp1" Text="La balise qui permet de changer de ligne"/>
                <br />
                <br />
                
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server" GroupingText="Veuillez choisir la revue désirée">
             <asp:RadioButton ID="rad5" runat="server" TextAlign="Right"  GroupName="grp2" Text="MSDN Magazine"/>
               <br />
            <asp:RadioButton ID="rad6" runat="server" TextAlign="Right"  GroupName="grp2" Text="L'informaticien"/>
               <br />
            <asp:RadioButton ID="rad7" runat="server" TextAlign="Right"  GroupName="grp2" Text="Programmez"/>
               <br />
            <asp:RadioButton ID="rad8" runat="server" TextAlign="Right"  GroupName="grp2" Text="PC World"/>
               <br />
            <asp:CheckBox ID="cBox1" runat="server" TextAlign="Right"  GroupName="grp2" Text="Papier" />
            <asp:CheckBox ID="cBox2" runat="server" TextAlign="Right"  GroupName="grp2" Text="Electronique" />
        </asp:Panel>

              <asp:Button ID="Button1" runat="server" Text="Cliquez ici pour afficher le résultat" OnClick="Button1_Click" />
              <br />
            <asp:Label ID="lblRep2" runat="server"></asp:Label>
        <asp:Label ID="lblRep" runat="server" CssClass="txtColoré"></asp:Label>
            

              <br />
        
                <asp:Image ID="Image1" runat="server" />
            <br />

            <asp:Label ID="lblrep3" runat="server"></asp:Label>


                
            </div>

        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/EXO2_P1.aspx" runat="server">Exo 2</asp:HyperLink>
         
           
    </form>
</body>
</html>
