<%@ Page Title="Toode tüüp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Akulin.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="toodeTyyp" HeaderText="toodeTyyp" SortExpression="toodeTyyp" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AkulinConnectionString1 %>" DeleteCommand="DELETE FROM [loodeTyyp] WHERE [id] = @id" InsertCommand="INSERT INTO [loodeTyyp] ([toodeTyyp], [kirjeldus]) VALUES (@toodeTyyp, @kirjeldus)" ProviderName="<%$ ConnectionStrings:AkulinConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [toodeTyyp], [kirjeldus] FROM [loodeTyyp]" UpdateCommand="UPDATE [loodeTyyp] SET [toodeTyyp] = @toodeTyyp, [kirjeldus] = @kirjeldus WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="toodeTyyp" Type="String" />
                <asp:Parameter Name="kirjeldus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="toodeTyyp" Type="String" />
                <asp:Parameter Name="kirjeldus" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="toodeTyyp" HeaderText="toodeTyyp" SortExpression="toodeTyyp" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>
