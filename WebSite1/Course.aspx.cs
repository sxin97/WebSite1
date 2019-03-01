using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["CourseCode"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxCourseCode")).Text;

        SqlDataSource1.InsertParameters["CourseName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxCourseName")).Text;

        SqlDataSource1.InsertParameters["FacultyId"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownListFacultyId")).SelectedValue;

        SqlDataSource1.Insert();
    }
}