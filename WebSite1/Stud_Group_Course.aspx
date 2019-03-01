<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stud_Group_Course.aspx.cs" Inherits="Stud_Group_Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/bootstrap-grid.css" rel="stylesheet" />
    <link href="bootstrap/bootstrap-grid.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="GroupCode" HeaderText="GroupCode" SortExpression="GroupCode" />
                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>

            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityDBConnectionString %>" SelectCommand="SELECT Student.StudentID, Student.StudentName, Student.GroupCode, Course.CourseName FROM Course INNER JOIN [Group] ON Course.CourseCode = [Group].CourseCode INNER JOIN Student ON [Group].GroupCode = Student.GroupCode"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
