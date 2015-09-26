using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Windows.Forms;
public partial class _Default : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    MySqlCommand cmd, cmd1, cmd2;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         if (custname.Value == "")
        { MessageBox.Show("Please Enter a Valid Name", "Name Error"); custname.Focus(); }
        else if (password.Value == "")
        { MessageBox.Show("Please Enter a Password", "Password Error"); password.Focus(); }
        else if (address.Value == "")
        { MessageBox.Show("Please Enter an Address", "Address Error"); address.Focus(); }
        else if (phoneno.Value == ""||phoneno.Value.Length!=10)
        { MessageBox.Show("Please Enter Valid Phone Number", "Phone Number Error"); phoneno.Focus(); }
         else if (dob.Value == "")
         { MessageBox.Show("Enter a Valid Format of Date Of Birth", "Date Of Birth Error"); dob.Focus(); }
         else
         {
             try
             {
                 cmd2 = new MySqlCommand("select count(*) from custdb", con);
                 MySqlDataReader dr = cmd2.ExecuteReader();
                 dr.Read();

                 int cnt = Convert.ToInt32(dr[0].ToString()) + 1;
                 // MessageBox.Show(cnt.ToString());

                 cmd = new MySqlCommand("insert into custdb values(@id,@name,@dob,@pass,@addr,@num,@mail)", con);
                 cmd.Parameters.AddWithValue("@id", "c" + cnt);
                 cmd.Parameters.AddWithValue("@name", custname.Value);
                 cmd.Parameters.AddWithValue("@dob", dob.Value);
                 cmd.Parameters.AddWithValue("@pass", password.Value);
                 cmd.Parameters.AddWithValue("@addr", address.Value);
                 cmd.Parameters.AddWithValue("@num", phoneno.Value);
                 cmd.Parameters.AddWithValue("@mail", mailid.Text);
                 cmd.ExecuteNonQuery();

                 cmd1 = new MySqlCommand("insert into logindb values(@id,@pass)", con);
                 cmd1.Parameters.AddWithValue("@id", "c" + cnt);
                 cmd1.Parameters.AddWithValue("@pass", password.Value);
                 cmd1.ExecuteNonQuery();
                 MessageBox.Show("Registration is Successfull.. Your Customer Id is: c" + cnt, "Register Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
             }//End of Try
             catch (Exception err)
             {
                 MessageBox.Show("Following error occured: " + err.Message);
             }//End of Catch
             finally
             {
                 Response.Redirect("../Home.aspx");
                 con.Close();
             }//End of Finally
         }//If-Else is finished 
    }
    protected void mailid_TextChanged(object sender, EventArgs e)
    {
       
    }
}