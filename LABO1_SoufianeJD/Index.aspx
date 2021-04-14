<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="lab1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="reportdate" HeaderText="reportdate" SortExpression="reportdate" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="hightemp" HeaderText="hightemp" SortExpression="hightemp" />
                <asp:BoundField DataField="lowtemp" HeaderText="lowtemp" SortExpression="lowtemp" />
                <asp:BoundField DataField="rainfall" HeaderText="rainfall" SortExpression="rainfall" />
                <asp:BoundField DataField="snowfall" HeaderText="snowfall" SortExpression="snowfall" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Table] " 
            InsertCommand="INSERT INTO [Table]  VALUES (@id, @reportdate, @location,@hightemp,@lowtemp,@rainfall,@snowfall,@description)">
            
            <InsertParameters>

<asp:Parameter Type="String" Name="id"></asp:Parameter>

<asp:Parameter Type="DateTime" Name="reportdate"></asp:Parameter>

<asp:Parameter Type="String" Name="location"></asp:Parameter>
<asp:Parameter Type="String" Name="hightemp"></asp:Parameter>
<asp:Parameter Type="String" Name="lowtemp"></asp:Parameter>
<asp:Parameter Type="String" Name="rainfall"></asp:Parameter>
<asp:Parameter Type="String" Name="snowfall"></asp:Parameter>
<asp:Parameter Type="String" Name="description"></asp:Parameter>

</InsertParameters>
        </asp:SqlDataSource>
       
        <br />
        Insert a new Row :<br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateInsertButton="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#B0E0E6" Font-Bold="True" />
            <EditRowStyle BackColor="#B0E0E6"/>
            <FieldHeaderStyle BackColor="#B0E0E6" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="reportdate" HeaderText="reportdate" SortExpression="reportdate" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="hightemp" HeaderText="hightemp" SortExpression="hightemp" />
                <asp:BoundField DataField="lowtemp" HeaderText="lowtemp" SortExpression="lowtemp" />
                <asp:BoundField DataField="rainfall" HeaderText="rainfall" SortExpression="rainfall" />
                <asp:BoundField DataField="snowfall" HeaderText="snowfall" SortExpression="snowfall" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            </Fields>
            <FooterStyle BackColor="#B0E0E6" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#B0E0E6" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#B0E0E6" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#B0E0E6"/>
        </asp:DetailsView>
        <br />
       
    </form>
</body>
</html>
