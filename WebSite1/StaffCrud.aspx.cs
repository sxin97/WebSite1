using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffCrud : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            load_data();
        }
    }

    public void load_data()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityDBConnectionString"].ConnectionString);
        conn.Open();
        string selectQuery = "SELECT * FROM [Staff] ORDER BY [StaffId]";
        SqlCommand cmd = new SqlCommand(selectQuery, conn);
        //cmd.Parameters.AddWithValue("@StudentName", TextBoxSearch.Text);
        //cmd.ExecuteNonQuery();

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSourceID = null;
        GridView1.DataSource = dt;
        GridView1.DataBind();

        conn.Close();
    }

    protected void LinkButtonInsert_Click(object sender, EventArgs e)
    {
        ((FileUpload)GridView1.FooterRow.FindControl("FileUpload2")).SaveAs(Server.MapPath("~/Images/" + ((FileUpload)GridView1.FooterRow.FindControl("FileUpload2")).FileName));
        //SqlDataSource1.InsertParameters["StaffId"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxStaffid")).Text;
        //SqlDataSource1.InsertParameters["StaffName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxStaffname")).Text;
        //SqlDataSource1.InsertParameters["StaffPhone"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxStaffphone")).Text;
        //SqlDataSource1.InsertParameters["StaffEmail"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxStaffemail")).Text;
        //SqlDataSource1.InsertParameters["StaffProfile"].DefaultValue = "~/Images/" + ((FileUpload)GridView1.FooterRow.FindControl("FileUpload2")).FileName;
        //SqlDataSource1.Insert();
        string profile = "~/Images/" + ((FileUpload)GridView1.FooterRow.FindControl("FileUpload2")).FileName;
        string id = ((TextBox)GridView1.FooterRow.FindControl("TextBoxStaffid")).Text;
        string name = ((TextBox)GridView1.FooterRow.FindControl("TextBoxStaffname")).Text;
        string phone = ((TextBox)GridView1.FooterRow.FindControl("TextBoxStaffphone")).Text;
        string email = ((TextBox)GridView1.FooterRow.FindControl("TextBoxStaffemail")).Text;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityDBConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into Staff values (@id, @profile, @name, @phone, @email)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@profile", profile);
        cmd.Parameters.AddWithValue("@phone", phone);
        cmd.Parameters.AddWithValue("@email", email);

        cmd.ExecuteNonQuery();
        conn.Close();

        load_data();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        //GridView1.DataSourceID = null;
        //load_data();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        ((FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1")).SaveAs(Server.MapPath("~/Images/" + ((FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1")).FileName));

        string filename = "~/Images/" + ((FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1")).FileName;
        string name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        string phone = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
        string email = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
        string id = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label1")).Text;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityDBConnectionString"].ConnectionString);
        conn.Open();
        string updateQuery = "update Staff set StaffProfile = @profile, StaffName = @name, StaffPhone = @phone, StaffEmail = @email where StaffId = @staffid";
        SqlCommand cmd = new SqlCommand(updateQuery, conn);
        cmd.Parameters.AddWithValue("@profile", filename);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@phone", phone);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@staffid", id);

        //string test = filename;
        cmd.ExecuteNonQuery();
        conn.Close();

        load_data();

        GridView1.EditIndex = -1;
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityDBConnectionString"].ConnectionString);
        conn.Open();
        string deleteQuery = "delete from Staff where StaffId = @staffid";
        SqlCommand cmd = new SqlCommand(deleteQuery, conn);
        cmd.Parameters.AddWithValue("@staffid", ((Label)GridView1.Rows[e.RowIndex].FindControl("Label1")).Text);
         

        cmd.ExecuteNonQuery();
        conn.Close();

        load_data();
    }
}