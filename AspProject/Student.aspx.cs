using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProject
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GridViewRecord();
            }

        }
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Asus\\source\\repos\\AspProject\\AspProject\\App_Data\\Database2.mdf;Integrated Security=True");

        protected void CreateBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("INSERT INTO [Student] (Name, RegNo) values('" + StdName.Text + "','" + int.Parse(StdReg.Text) + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            //register a Javascript code block to be executed on client - side. In this case
            //it register a script that displays an alert message with the text "Successfully Inserted".
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            GridViewRecord();
        }
        protected void GridViewRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM [Student]", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            DisplayDbData.DataSource = dt;
            DisplayDbData.DataBind();
        }
        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("UPDATE [Student] set Name = '"+StdName.Text + "' where RegNo = '"+ int.Parse(StdReg.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            //register a Javascript code block to be executed on client - side. In this case
            //it register a script that displays an alert message with the text "Successfully Inserted".
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            GridViewRecord();
        }
        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("DELETE [Student] where RegNo = '" + int.Parse(StdReg.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            //register a Javascript code block to be executed on client - side. In this case
            //it register a script that displays an alert message with the text "Successfully Inserted".
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            GridViewRecord();
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM [Student] where RegNo = '" + int.Parse(StdReg.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            DisplayDbData.DataSource = dt;
            DisplayDbData.DataBind();
        }

        protected void GetBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("SELECT * FROM [Student] where RegNo = '" + int.Parse(StdReg.Text) + "'", con);
            SqlDataReader dr = comm.ExecuteReader();
            while(dr.Read())
            {
                StdName.Text = dr.GetValue(1).ToString();
            }
        }

    }
}