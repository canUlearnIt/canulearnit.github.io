<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="300702887.aspx.cs" Inherits="_300702887._300702887" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 419px;
            height: 92px;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
    <link href="300702887.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="outerBox">
            <div id="header">
    
                <img alt="logo" class="auto-style1" src="images/banner.jpg" /><asp:Label ID="lbTime" runat="server" Text="Label"></asp:Label>
    
    </div>
            <div id="content">
    
                <asp:Label ID="lbAuthors" runat="server" Text="Authors:"></asp:Label>
                <br />
                <asp:GridView ID="gridVAuthors" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataForAuthors" PageSize="4" OnSelectedIndexChanged="gridVAuthors_SelectedIndexChanged1" style="margin-right: 6px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Author ID" SortExpression="author_id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("author_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbAuthorID" runat="server" Text='<%# Bind("author_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Llast Name" SortExpression="author_last_name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("author_last_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="authorLName" runat="server" Text='<%# Bind("author_last_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name" SortExpression="author_first_name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("author_first_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="authorFName" runat="server" Text='<%# Bind("author_first_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="author_address" HeaderText="Address" SortExpression="author_address" />
                        <asp:BoundField DataField="author_city" HeaderText="City" SortExpression="author_city" />
                        <asp:BoundField DataField="author_state" HeaderText="State" SortExpression="author_state" />
                        <asp:BoundField DataField="author_zip" HeaderText="Postal Code" SortExpression="author_zip" />
                        <asp:BoundField DataField="author_phone" HeaderText="Phone No" SortExpression="author_phone" />
                    </Columns>
                    <HeaderStyle BackColor="#60623A" ForeColor="White" />
                    <SelectedRowStyle BackColor="#FFFF99" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataForAuthors" runat="server" ConnectionString="<%$ ConnectionStrings:LTIConnectionString %>" DeleteCommand="DELETE FROM [lti_author] WHERE [author_id] = @author_id" InsertCommand="INSERT INTO [lti_author] ([author_id], [author_last_name], [author_first_name], [author_address], [author_city], [author_state], [author_zip], [author_phone]) VALUES (@author_id, @author_last_name, @author_first_name, @author_address, @author_city, @author_state, @author_zip, @author_phone)" SelectCommand="SELECT [author_id], [author_last_name], [author_first_name], [author_address], [author_city], [author_state], [author_zip], [author_phone] FROM [lti_author]" UpdateCommand="UPDATE [lti_author] SET [author_last_name] = @author_last_name, [author_first_name] = @author_first_name, [author_address] = @author_address, [author_city] = @author_city, [author_state] = @author_state, [author_zip] = @author_zip, [author_phone] = @author_phone WHERE [author_id] = @author_id">
                    <DeleteParameters>
                        <asp:Parameter Name="author_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="author_id" Type="Int32" />
                        <asp:Parameter Name="author_last_name" Type="String" />
                        <asp:Parameter Name="author_first_name" Type="String" />
                        <asp:Parameter Name="author_address" Type="String" />
                        <asp:Parameter Name="author_city" Type="String" />
                        <asp:Parameter Name="author_state" Type="String" />
                        <asp:Parameter Name="author_zip" Type="String" />
                        <asp:Parameter Name="author_phone" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="author_last_name" Type="String" />
                        <asp:Parameter Name="author_first_name" Type="String" />
                        <asp:Parameter Name="author_address" Type="String" />
                        <asp:Parameter Name="author_city" Type="String" />
                        <asp:Parameter Name="author_state" Type="String" />
                        <asp:Parameter Name="author_zip" Type="String" />
                        <asp:Parameter Name="author_phone" Type="String" />
                        <asp:Parameter Name="author_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <table class="auto-style2">
                    <tr><%--Liliya Artyukh, 300702887--%>
                        <td>
                <asp:Label ID="lbShowAuthor" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Details"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:GridView ID="gridAuthorsAndBooks" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="isbn" DataSourceID="SqlAuthorsAndBooks" OnSelectedIndexChanged="gridAuthorsAndBooks_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="isbn" HeaderText="ISBN" SortExpression="isbn" />
                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                        <asp:BoundField DataField="publish_date" HeaderText="Publish Date" SortExpression="publish_date" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                        <asp:TemplateField HeaderText="Picture" SortExpression="picture">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/"+Eval("picture") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle BackColor="#60623A" ForeColor="White" />
                    <SelectedRowStyle BackColor="#FFFFCC" />
                </asp:GridView>
                        </td>
                        <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="isbn" DataSourceID="SqlBookDetals" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="isbn" HeaderText="ISBN" ReadOnly="True" SortExpression="isbn" />
                        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                        <asp:BoundField DataField="publish_date" HeaderText="Publish Date" SortExpression="publish_date" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                        <asp:TemplateField HeaderText="Picture" SortExpression="picture">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("picture") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# "images/"+Eval("picture") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#60623A" ForeColor="White" />
                </asp:DetailsView>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:SqlDataSource ID="SqlAuthorsAndBooks" runat="server" ConnectionString="<%$ ConnectionStrings:LTIConnectionString %>" SelectCommand="SELECT [isbn], [title], [publish_date], [price], [picture], [author_id] FROM [viewAuthorsAndBooks] WHERE ([author_id] = @author_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gridVAuthors" Name="author_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlBookDetals" runat="server" ConnectionString="<%$ ConnectionStrings:LTIConnectionString %>" DeleteCommand="DELETE FROM [lti_book] WHERE [isbn] = @isbn" InsertCommand="INSERT INTO [lti_book] ([isbn], [title], [publish_date], [price], [picture]) VALUES (@isbn, @title, @publish_date, @price, @picture)" SelectCommand="SELECT [isbn], [title], [publish_date], [price], [picture] FROM [lti_book] WHERE ([isbn] = @isbn)" UpdateCommand="UPDATE [lti_book] SET [title] = @title, [publish_date] = @publish_date, [price] = @price, [picture] = @picture WHERE [isbn] = @isbn">
                    <DeleteParameters>
                        <asp:Parameter Name="isbn" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="isbn" Type="String" />
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="publish_date" Type="DateTime" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="picture" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gridAuthorsAndBooks" Name="isbn" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="publish_date" Type="DateTime" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="picture" Type="String" />
                        <asp:Parameter Name="isbn" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    
    </div>
            <div id="footer">
    
                <h6>&copy; LiliyaArtyukh, 300702887, Web Applications Development, Final Exam</h6>
    
    </div>
    
    </div>
    </form>
</body>
</html>
