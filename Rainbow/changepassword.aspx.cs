using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd;
   SqlDataReader dr;
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ss = Session["id"].ToString();


        SqlCommand cmd2, cmd3;
        cmd = new SqlCommand("select password from logindb where username='" + Session["id"].ToString() + "'", con);
        dr = cmd.ExecuteReader();
        dr.Read();

        try
        {
            if (TextBox1.Text != dr["password"].ToString())
            {
                msg = "Enter Correct Password Please";
            }
            else
            {
                if (TextBox2.Text != TextBox3.Text)
                {
                    CompareValidator1.ErrorMessage = "Password Does Not Match";
                }
            }
            dr.Close();
            cmd2 = new SqlCommand("update custdb set custpass='" + TextBox3.Text + "' where id='" + Session["id"] + "'", con);
            cmd2.ExecuteNonQuery();
            cmd3 = new SqlCommand("update logindb set password='" + TextBox3.Text + "' where username='" + Session["id"] + "'", con);
            cmd3.ExecuteNonQuery();

            if (ss == "admin")
            { Response.Redirect("admin/adminhomepage.aspx"); }
            else if (ss == "emp")
            { Response.Redirect("employee/emphomepage.aspx"); }
            else
            { Response.Redirect("customer/userhomepage.aspx"); }
        }
        catch (Exception ee)
        {
            MessageBox.Show(ee.Message);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string name = Session["id"].ToString();
        if (name == "admin")
        { Response.Redirect("admin/adminhomepage.aspx"); }
        else if (name == "emp")
        { Response.Redirect("employee/emphomepage.aspx"); }
        else
        { Response.Redirect("customer/userhomepage.aspx"); }
    }
}