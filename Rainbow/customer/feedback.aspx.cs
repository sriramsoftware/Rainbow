using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
public partial class customer_feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string t = DateTime.Now.ToString();

        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            MessageBox.Show("Please fill in all the fields before clicking submit button.. Thank you!!!");
            TextBox1.Focus();
        }
        else
        {
            try
            {
                SqlCommand cmd = new SqlCommand("insert into feedbackdb values(@name,@comment,@time)", con);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@comment", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@time", t);
                cmd.ExecuteNonQuery();
                Response.Redirect("userhomepage.aspx");
            }
            catch (Exception ee)
            {
                MessageBox.Show("Please Correct The Errors:" + ee.Message);
            }
        }
    }
}