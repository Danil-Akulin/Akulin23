<%@ Page Title="Tooded" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Akulin._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Akulin Pood</h1>
        <p class="lead"></p>
        <p class="lead"></p>
        <p class="lead"></p>
        <p class="lead">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                    <asp:BoundField DataField="kogus" HeaderText="kogus" SortExpression="kogus" />
                    <asp:BoundField DataField="toodeTyyp" HeaderText="toodeTyyp" SortExpression="toodeTyyp" />
                    <asp:BoundField DataField="pood" HeaderText="pood" SortExpression="pood" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AkulinConnectionString1 %>" DeleteCommand="DELETE FROM [toode] WHERE [id] = @id" InsertCommand="INSERT INTO [toode] ([nimetus], [kogus], [toodeTyyp], [pood]) VALUES (@nimetus, @kogus, @toodeTyyp, @pood)" SelectCommand="SELECT * FROM [toode]" UpdateCommand="UPDATE [toode] SET [nimetus] = @nimetus, [kogus] = @kogus, [toodeTyyp] = @toodeTyyp, [pood] = @pood WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kogus" Type="Int32" />
                    <asp:Parameter Name="toodeTyyp" Type="Int32" />
                    <asp:Parameter Name="pood" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kogus" Type="Int32" />
                    <asp:Parameter Name="toodeTyyp" Type="Int32" />
                    <asp:Parameter Name="pood" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p class="lead"></p>
        <p class="lead">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                    <asp:BoundField DataField="kogus" HeaderText="kogus" SortExpression="kogus" />
                    <asp:TemplateField HeaderText="toodeTyyp" SortExpression="toodeTyyp">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("toodeTyyp") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="toodeTyyp" DataValueField="id">
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="pood" SortExpression="pood">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("pood") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="pood" DataValueField="id">
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("pood") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="Akulin_1" runat="server" ConnectionString="<%$ ConnectionStrings:AkulinConnectionString1 %>" DeleteCommand="DELETE FROM [loodeTyyp] WHERE [id] = @id" InsertCommand="INSERT INTO [loodeTyyp] ([toodeTyyp], [kirjeldus]) VALUES (@toodeTyyp, @kirjeldus)" SelectCommand="SELECT * FROM [loodeTyyp]" UpdateCommand="UPDATE [loodeTyyp] SET [toodeTyyp] = @toodeTyyp, [kirjeldus] = @kirjeldus WHERE [id] = @id">
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
        <p class="lead">&nbsp;</p>
        <p class="lead">&nbsp;</p>
        <p class="lead"></p>
        <p class="lead"></p>
    </div>

    <!---  delault - Tooded  ---->
    <!---  about - Toode tüüp  ---->
    <!---  contact - Lisa toode  ---->
    <!---  contact - Oma tabel  ---->


</asp:Content>
