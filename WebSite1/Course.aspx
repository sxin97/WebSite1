<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Course.aspx.cs" Inherits="Course" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="bootstrap/cover.css" rel="stylesheet" />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseCode" DataSourceID="SqlDataSource1" ShowFooter="True">
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
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CourseCode" SortExpression="CourseCode">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CourseCode") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CourseCode") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxCourseCode" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CourseName" SortExpression="CourseName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CourseName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxCourseName" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FacultyId" SortExpression="DepartmentId">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FacultyId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("FacultyId") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="DropDownListFacultyId" runat="server" DataSourceID="SqlDataSource2" DataTextField="FacultyId" DataValueField="FacultyId"></asp:DropDownList>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityDBConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [CourseCode] = @CourseCode" InsertCommand="INSERT INTO [Course] ([CourseCode], [CourseName], [FacultyId]) VALUES (@CourseCode, @CourseName, @FacultyId)" SelectCommand="SELECT * FROM [Course]" UpdateCommand="UPDATE [Course] SET [CourseName] = @CourseName, [FacultyId] = @FacultyId WHERE [CourseCode] = @CourseCode">
                <DeleteParameters>
                    <asp:Parameter Name="CourseCode" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CourseCode" Type="String" />
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="FacultyId" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="FacultyId" Type="String" />
                    <asp:Parameter Name="CourseCode" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityDBConnectionString %>" SelectCommand="SELECT [FacultyId] FROM [Faculty]"></asp:SqlDataSource>
        </div>
    <%--</form>
</body>
</html>--%>
    </asp:Content>
