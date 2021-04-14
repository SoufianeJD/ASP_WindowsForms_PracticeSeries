<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artists.aspx.cs" Inherits="LABO2_SoufianeJD.Artists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="1">Daniel</asp:ListItem>
                <asp:ListItem Value="2">Davis</asp:ListItem>
                <asp:ListItem Value="3">Kevin</asp:ListItem>
                <asp:ListItem Value="4">Reginald</asp:ListItem>
                <asp:ListItem Value="5">Thaddeus</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [IDNumber], [SignonlID], [Password], [FullName], [Bio], [PictureName], [Instruments], [FavFood], [HomeTown], [NickName], [EmailID] FROM [Artists] WHERE ([IDNumber] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="IDNumber" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="IDNumber" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="228px" Width="1247px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" InsertVisible="False" ReadOnly="True" SortExpression="IDNumber" />
                    <asp:BoundField DataField="SignonlID" HeaderText="SignonlID" SortExpression="SignonlID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="Bio" HeaderText="Bio" SortExpression="Bio" />
                    <asp:BoundField DataField="PictureName" HeaderText="PictureName" SortExpression="PictureName" />
                    <asp:BoundField DataField="Instruments" HeaderText="Instruments" SortExpression="Instruments" />
                    <asp:BoundField DataField="FavFood" HeaderText="FavFood" SortExpression="FavFood" />
                    <asp:BoundField DataField="HomeTown" HeaderText="HomeTown" SortExpression="HomeTown" />
                    <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
    </form>
</body>
</html>
