<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register student.aspx.cs" Inherits="Register_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Student ID :
            <asp:TextBox ID="TextBoxStudID" runat="server"></asp:TextBox>
            <br />
            Student Name :
            <asp:TextBox ID="TextBoxStudName" runat="server"></asp:TextBox>
            <br />
            Student Password :
            <asp:TextBox ID="TextBoxStudPass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonAdd" runat="server" Text="Add" />
            <asp:Button ID="ButtonClear" runat="server" Text="Clear" />
        </div>
    </form>
</body>
</html>
