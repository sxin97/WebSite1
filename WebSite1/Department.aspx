<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Department.aspx.cs" Inherits="Department" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FacultyId" DataSourceID="SqlDataSource1" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="FacultyId" HeaderText="FacultyId" ReadOnly="True" SortExpression="FacultyId" />
                    <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" SortExpression="FacultyName" />
                    <asp:BoundField DataField="StaffId" HeaderText="StaffId" SortExpression="StaffId" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityDBConnectionString %>" DeleteCommand="DELETE FROM [Faculty] WHERE [FacultyId] = @FacultyId" InsertCommand="INSERT INTO [Faculty] ([FacultyId], [FacultyName], [StaffId]) VALUES (@FacultyId, @FacultyName, @StaffId)" SelectCommand="SELECT * FROM [Faculty]" UpdateCommand="UPDATE [Faculty] SET [FacultyName] = @FacultyName, [StaffId] = @StaffId WHERE [FacultyId] = @FacultyId">
                <DeleteParameters>
                    <asp:Parameter Name="FacultyId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FacultyId" Type="String" />
                    <asp:Parameter Name="FacultyName" Type="String" />
                    <asp:Parameter Name="StaffId" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FacultyName" Type="String" />
                    <asp:Parameter Name="StaffId" Type="String" />
                    <asp:Parameter Name="FacultyId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    <%--</form>
</body>
</html>--%>
    </asp:Content>