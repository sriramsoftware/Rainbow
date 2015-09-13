using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Windows.Forms;
public partial class Home : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    MySqlCommand getuser;
    MySqlDataReader drg;
    public string showuser;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        Label1.Text = "Visitor Number : " + Application["usercount"];
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string user, pass;
        showuser = TextBox1.Text;
        Session["id"] = showuser;
        if (TextBox1.Text == "")  // if username textbox  is empty
        {
            RequiredFieldValidator1.ErrorMessage = "Enter a Valid UserName";
        }

        MySqlCommand cmd = new MySqlCommand("select * from logindb where username='" + TextBox1.Text + "'", con);
        MySqlDataReader dr = cmd.ExecuteReader();


        if (!dr.Read()) //if user not registered
        {
            MessageBox.Show("Please Register YourSelf to be a Valid User", "User Error", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            Response.Redirect("./registeruser.aspx");
        }

        if (TextBox2.Text == "")  // if password textbox is empty
        {
            RequiredFieldValidator2.ErrorMessage = "Enter Password Please";
        }

        user = dr["username"].ToString();  // retrieve username
        pass = dr["password"].ToString();  // retrieve password

        if (pass != TextBox2.Text)  // password not equal
        {
            MessageBox.Show("Invalid Password!", "Password Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            TextBox2.Text = "";
            TextBox2.Focus();
        }
        if (user.Trim().StartsWith("c") && pass == TextBox2.Text.Trim()) //if user is Customer
        {
            getuser = new MySqlCommand("select custname from custdb where custid='" + TextBox1.Text + "'", con);
            drg = getuser.ExecuteReader();
            drg.Read();
            Response.Redirect("./customer/userhomepage.aspx?user=" + drg["custname"].ToString());
        }
        else if (user == "emp" && pass == TextBox2.Text.Trim())  //if user is employee
        {
            Response.Redirect("./employee/emphomepage.aspx");
        }
        else if (user == "admin" && pass == TextBox2.Text.Trim())  //if user is admin
        {
            Response.Redirect("./admin/adminhomepage.aspx");
        }

        dr.Close();

    }


}