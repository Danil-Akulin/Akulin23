<%@ Page Title="Tooded" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Akulin.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="pood" HeaderText="pood" SortExpression="pood" />
        </Columns>
    </asp:GridView>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="pood" HeaderText="pood" SortExpression="pood" />
                <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AkulinConnectionString1 %>" DeleteCommand="DELETE FROM [pood] WHERE [id] = @id" InsertCommand="INSERT INTO [pood] ([pood]) VALUES (@pood)" ProviderName="<%$ ConnectionStrings:AkulinConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [pood] FROM [pood]" UpdateCommand="UPDATE [pood] SET [pood] = @pood WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pood" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pood" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</asp:Content>
