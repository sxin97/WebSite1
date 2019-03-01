﻿using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    string sortDirection = "ASC";
    string sortItem = "StudentName";
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBoxSearch.Attributes.Add("onKeyUp", "load()");
        //load_data();
        if (!this.IsPostBack)
        {
            load_data();
        }
    }
    
    // The return type can be changed to IEnumerable, however to support
    // paging and sorting, the following parameters must be added:
    //     int maximumRows
    //     int startRowIndex
    //     out int totalRowCount
    //     string sortByExpression
    public IQueryable GridView1_GetData()
    {
        DatabaseEntities _db = new DatabaseEntities();
        return _db.Students;
    }
    public void load_data()
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityDBConnectionString"].ConnectionString);
        conn.Open();
        string selectQuery = "SELECT * FROM [Student] WHERE ([StudentName] LIKE '%' + @StudentName + '%') ORDER BY " +"["+sortItem+"] "+ sortDirection ;
        SqlCommand cmd = new SqlCommand(selectQuery, conn);
        cmd.Parameters.AddWithValue("@StudentName", TextBoxSearch.Text);
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
        //SqlDataSource1.InsertParameters["StudentID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxID")).Text;

        //SqlDataSource1.InsertParameters["StudentName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxName")).Text;

        //SqlDataSource1.InsertParameters["StudentPass"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxPassword")).Text;

        //SqlDataSource1.InsertParameters["StudentPhone"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxPhone")).Text;

        //SqlDataSource1.InsertParameters["StudentEmail"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxEmail")).Text;

        //SqlDataSource1.InsertParameters["GroupCode"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownListGroupCode")).SelectedValue;
        //SqlDataSource1.Insert();

        string id = ((TextBox)GridView1.FooterRow.FindControl("TextBoxID")).Text;
        string name = ((TextBox)GridView1.FooterRow.FindControl("TextBoxName")).Text;
        string pass = ((TextBox)GridView1.FooterRow.FindControl("TextBoxPassword")).Text;
        string phone = ((TextBox)GridView1.FooterRow.FindControl("TextBoxPhone")).Text;
        string email = ((TextBox)GridView1.FooterRow.FindControl("TextBoxEmail")).Text;
        string groupcode = ((DropDownList)GridView1.FooterRow.FindControl("DropDownListGroupCode")).SelectedValue.ToString();

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityDBConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into Student values (@id, @name, @pass, @phone, @email, @group)";
        SqlCommand cmd = new SqlCommand(insertQuery, conn);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@phone", phone);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@group", groupcode);

        cmd.ExecuteNonQuery();
        conn.Close();

        //GridView1.DataSourceID = null;
        load_data();
        //load_data();
        
    }




    protected void TextBoxPaging_TextChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt32(TextBoxPaging.Text);
    }

    protected void TextBoxSearch_TextChanged(object sender, EventArgs e)
    {
        load_data();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityDBConnectionString"].ConnectionString);
        conn.Open();
        string deleteQuery = "delete from Student where StudentId =  @id";
        SqlCommand cmd = new SqlCommand(deleteQuery, conn);
        cmd.Parameters.AddWithValue("@id", ((Label)GridView1.Rows[e.RowIndex].FindControl("itemStudId")).Text);
        cmd.ExecuteNonQuery();
        conn.Close();

        GridView1.DataSourceID = null;
        load_data();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        //GridView1.DataSourceID = null;
        //load_data();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UniversityDBConnectionString"].ConnectionString);
        conn.Open();
        string updateQuery = "update Student set StudentName = @studname, StudentPass = @studpass, StudentPhone = @studphone, StudentEmail = @studemail, GroupCode = @group where StudentId =  @id";
        SqlCommand cmd = new SqlCommand(updateQuery, conn);
        cmd.Parameters.AddWithValue("@studname", ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text);
        cmd.Parameters.AddWithValue("@studpass", ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox")).Text);
        cmd.Parameters.AddWithValue("@studemail", ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text);
        cmd.Parameters.AddWithValue("@studphone", ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text);
        cmd.Parameters.AddWithValue("@group", ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1")).SelectedValue);
        cmd.Parameters.AddWithValue("@id", ((Label)GridView1.Rows[e.RowIndex].FindControl("LabelStudId")).Text);
        cmd.ExecuteNonQuery();
        conn.Close();

        GridView1.DataSourceID = null;
        load_data();

        GridView1.EditIndex = -1;
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        load_data();
    }

    


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        sortItem = DropDownList2.SelectedValue;
        

        load_data();
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedValue == "Ascending")
        {
            sortDirection = "ASC";
        }
        else
        {
            sortDirection = "DESC";
        }
        load_data();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        load_data();
    }
}