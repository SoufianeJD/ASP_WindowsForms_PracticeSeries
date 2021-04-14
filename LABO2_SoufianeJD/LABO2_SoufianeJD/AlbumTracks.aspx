<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlbumTracks.aspx.cs" Inherits="LABO2_SoufianeJD.AlbumTracks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="1">Subtle Ways</asp:ListItem>
                <asp:ListItem Value="2">Khronos</asp:ListItem>
                <asp:ListItem Value="3">Say What You Want</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [AlbumNumber], [Album Name] AS Album_Name, [TrackNumber], [TrackName] FROM [AlbumTracks] WHERE ([AlbumNumber] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="AlbumNumber" PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
        </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="AlbumNumber,TrackNumber" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="AlbumNumber" HeaderText="AlbumNumber" ReadOnly="True" SortExpression="AlbumNumber" />
                    <asp:BoundField DataField="Album_Name" HeaderText="Album_Name" SortExpression="Album_Name" />
                    <asp:BoundField DataField="TrackNumber" HeaderText="TrackNumber" ReadOnly="True" SortExpression="TrackNumber" />
                    <asp:BoundField DataField="TrackName" HeaderText="TrackName" SortExpression="TrackName" />
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
