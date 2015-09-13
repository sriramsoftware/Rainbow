using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
//using MySql.Data.MySqlClient;

public partial class admin_upcomingmovies : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string img = imgpath.Value;

        if (!img.Contains(".jpg") || !img.Contains(".png") || !img.Contains(".bmp") || !img.Contains(".gif") || img == "")
        {
            MessageBox.Show("Please provide image name with extension.");
            imgpath.Focus();
        }
        else
        {

        try
        {
            cmd = new SqlCommand("insert into moviedb(id,name,genre,cast,director,theatre,imgpath) values(@name,@id,@cat,@cast,@dir,@tname,@path)", con);
            cmd.Parameters.AddWithValue("@name", movname.Value);
            cmd.Parameters.AddWithValue("@id", movid.Value);
            cmd.Parameters.AddWithValue("@cat", cate.Value);
            cmd.Parameters.AddWithValue("@cast", cast.Value);
            cmd.Parameters.AddWithValue("@dir", direct.Value);
            cmd.Parameters.AddWithValue("@tname", thname.Value);
            cmd.Parameters.AddWithValue("@path", img);
            cmd.ExecuteNonQuery();
            MessageBox.Show("Movie Addedd Successfully", "Success");
        }
              catch (SqlException sqlerr)
            {
                MessageBox.Show("Duplicate Movie ID provided. Please provide another id for the movie." + "\nError Message: " + sqlerr.Message);
            }
        catch (Exception err)
        {
            MessageBox.Show("Following Error occured:" + err.Message);
        }
          }
    }
}