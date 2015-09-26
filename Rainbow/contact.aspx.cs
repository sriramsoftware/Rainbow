using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (name.Value == "" || city.Value == "" || TextArea1.Value == "" || mail.Value == "")
        {
            MessageBox.Show("Please fill all the fields before clicking the submit button");
            name.Focus();
        }
        else if (System.Text.RegularExpressions.Regex.IsMatch(mail.Value, "^[-!#$%&'*+/0-9=?A-Z^_a-z{|}~](\\.?[-!#$%&'*+/0-9=?A-Z^_a-z{|}~])*@[a-zA-Z](-?[a-zA-Z0-9])*(\\.[a-zA-Z](-?[a-zA-Z0-9])*)+$"))
        {
                MessageBox.Show("Please enter a valid email-id.");
                mail.Focus();
        }
        else if(!System.Text.RegularExpressions.Regex.IsMatch(name.Value, "[^0-9]"))
        {
                MessageBox.Show("Please enter a name not numbers.");
                name.Focus();
        }
        else if(!System.Text.RegularExpressions.Regex.IsMatch(city.Value, "[^0-9]"))
        {
                MessageBox.Show("Please enter a city not numbers.");
                name.Focus();
        }
        else
        {
            try
            {
                SqlCommand cmd = new SqlCommand("insert into feedbackdb values(@name,@comment,@time)", con);
                cmd.Parameters.AddWithValue("@name", name.Value.Trim());
                cmd.Parameters.AddWithValue("@message", TextArea1.Value.Trim());
                cmd.Parameters.AddWithValue("@city", city.Value.Trim());
                cmd.Parameters.AddWithValue("@email", mail.Value.Trim());
                cmd.ExecuteNonQuery();
                Label1.Text = "Thank You For Leaving us a Message.. We Will get Back to you soon..";
            }
            catch (Exception err)
            {
                MessageBox.Show("Following Error Occured: "+err.Message);
            }
        }
      


    }
}