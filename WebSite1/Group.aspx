<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Group.aspx.cs" Inherits="Group" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/bootstrap-grid.css" rel="stylesheet" />
    <link href="bootstrap/bootstrap-grid.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="bootstrap/cover.css" rel="stylesheet" />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GroupCode" DataSourceID="SqlDataSource1" ShowFooter="True">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="LinkButtonInsert" runat="server" OnClick="LinkButtonInsert_Click">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GroupCode" SortExpression="GroupCode">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("GroupCode") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("GroupCode") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxGroupCode" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GroupIntake" SortExpression="GroupIntake">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("GroupIntake") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("GroupIntake", "{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxGroupIntake" runat="server"></asp:TextBox>
                            <%--<asp:Calendar ID="CalendarGroupIntake" runat="server"></asp:Calendar>--%>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CourseCode" SortExpression="CourseCode">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CourseCode") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("CourseCode") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="DropDownListCourseCode" runat="server" DataSourceID="SqlDataSource2" DataTextField="CourseCode" DataValueField="CourseCode"></asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityDBConnectionString %>" DeleteCommand="DELETE FROM [Group] WHERE [GroupCode] = @GroupCode" InsertCommand="INSERT INTO [Group] ([GroupCode], [GroupIntake], [CourseCode]) VALUES (@GroupCode, @GroupIntake, @CourseCode)" SelectCommand="SELECT * FROM [Group]" UpdateCommand="UPDATE [Group] SET [GroupIntake] = @GroupIntake, [CourseCode] = @CourseCode WHERE [GroupCode] = @GroupCode">
                <DeleteParameters>
                    <asp:Parameter Name="GroupCode" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="GroupCode" Type="String" />
                    <asp:Parameter DbType="Date" Name="GroupIntake" />
                    <asp:Parameter Name="CourseCode" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="GroupIntake" />
                    <asp:Parameter Name="CourseCode" Type="String" />
                    <asp:Parameter Name="GroupCode" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityDBConnectionString %>" SelectCommand="SELECT [CourseCode] FROM [Course]"></asp:SqlDataSource>
            <br />
        </div>
    <%--</form>
</body>
</html>--%>
    </asp:Content>
