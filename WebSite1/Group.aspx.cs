using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Group : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButtonInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["GroupCode"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxGroupCode")).Text;

        string date = ((TextBox)GridView1.FooterRow.FindControl("TextBoxGroupIntake")).Text;

        SqlDataSource1.InsertParameters["GroupIntake"].DefaultValue = date;


        //string txtDateIntake = ((TextBox)GridView1.FooterRow.FindControl("TextBoxGroupIntake")).Text;
        //DateTime d;
        //DateTime.TryParse(txtDateIntake,"dd-MM-yyyy", System.Globalization.CultureInfo.InvariantCulture, System.Globalization.DateTimeStyles.None, out d);



        SqlDataSource1.InsertParameters["CourseCode"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownListCourseCode")).SelectedValue;

        SqlDataSource1.Insert();
    }
}