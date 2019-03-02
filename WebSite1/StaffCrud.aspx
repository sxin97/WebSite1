<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" EnableViewState="false" CodeFile="StaffCrud.aspx.cs" Inherits="StaffCrud" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <title>

    </title>
    <%--<link href="bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/bootstrap-grid.css" rel="stylesheet" />
    <link href="bootstrap/bootstrap-grid.min.css" rel="stylesheet" />--%>
    <link href="bootstrap/cover.css" rel="stylesheet" />
<%--</head>
<body>
    <form id="form1" runat="server">--%>
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="StaffId" ShowFooter="True"  OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="StaffProfile">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("StaffProfile") %>' Height="100px" Width="100px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                            
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
              
                    <asp:TemplateField HeaderText="StaffId" SortExpression="StaffId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("StaffId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("StaffId") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxStaffid" BackColor="#efefef" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StaffName" SortExpression="StaffName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#efefef" Text='<%# Bind("StaffName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("StaffName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxStaffname" BackColor="#efefef" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StaffPhone" SortExpression="StaffPhone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" BackColor="#efefef" runat="server" Text='<%# Bind("StaffPhone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("StaffPhone") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxStaffphone" BackColor="#efefef" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StaffEmail" SortExpression="StaffEmail">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" BackColor="#efefef" Text='<%# Bind("StaffEmail") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("StaffEmail") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxStaffEmail" BackColor="#efefef" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" CausesValidation="True" CommandName="Update" Text="Update" OnClick="LinkButton1_Click"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" CausesValidation="False" CommandName="Delete" Text="Delete" OnClick="LinkButton2_Click"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="LinkButtonInsert" runat="server" ForeColor="Blue" OnClick="LinkButtonInsert_Click" ValidationGroup="insertGroup">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    
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
            <br />


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityDBConnectionString %>" DeleteCommand="DELETE FROM [Staff] WHERE [StaffId] = @StaffId" InsertCommand="INSERT INTO [Staff] ([StaffId], [StaffProfile], [StaffName], [StaffPhone], [StaffEmail]) VALUES (@StaffId, @StaffProfile, @StaffName, @StaffPhone, @StaffEmail)" SelectCommand="SELECT * FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [StaffProfile] = @StaffProfile, [StaffName] = @StaffName, [StaffPhone] = @StaffPhone, [StaffEmail] = @StaffEmail WHERE [StaffId] = @StaffId">
                <DeleteParameters>
                    <asp:Parameter Name="StaffId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StaffId" Type="String" />
                    <asp:Parameter Name="StaffProfile" Type="String" />
                    <asp:Parameter Name="StaffName" Type="String" />
                    <asp:Parameter Name="StaffPhone" Type="String" />
                    <asp:Parameter Name="StaffEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <%--<asp:ControlParameter ControlID="FileUpload1" DefaultValue="" Name="StudentProfile" PropertyName="FileName" Type="String"/>--%>

                    <asp:Parameter Name="StaffProfile" Type="String" />
                    <asp:Parameter Name="StaffName" Type="String" />
                    <asp:Parameter Name="StaffPhone" Type="String" />
                    <asp:Parameter Name="StaffEmail" Type="String" />
                    <asp:Parameter Name="StaffId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    <%--</form>
</body>
</html>--%>
    </asp:Content>
