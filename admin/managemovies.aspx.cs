using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;
//using MySql.Data.MySqlClient;

public partial class admin_managemovies : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string img = TextBox1.Text.Trim();
        string name = movname.Text;
       
        if (System.Text.RegularExpressions.Regex.IsMatch(duration.Value, "[^0-9]") ||  duration.Value=="")
        {
            MessageBox.Show("Please enter only numbers.");
            //duration.Value.Remove(duration.Value.Length - 1);
            duration.Focus();
        }
        else if (!img.Contains(".jpg") || !img.Contains(".png") || !img.Contains(".bmp") || !img.Contains(".gif") || img == "")
        {
            MessageBox.Show("Please provide image name with extension.");
            TextBox1.Focus();
        }
        else
        {
            try
            {

                cmd = new SqlCommand("insert into moviedb values(@id,@name,@gen,@cast,@dir,@dur,@time,@tname,@hid,@path)", con);
                cmd.Parameters.AddWithValue("@id", movid.Value);
                cmd.Parameters.AddWithValue("@name", movname.Text);
                cmd.Parameters.AddWithValue("@gen", categeory.Value);
                cmd.Parameters.AddWithValue("@cast", cast.Value);
                cmd.Parameters.AddWithValue("@dir", dir.Value);
                cmd.Parameters.AddWithValue("@dur", duration.Value);
                cmd.Parameters.AddWithValue("@time", DropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tname", thname.Value);
                cmd.Parameters.AddWithValue("@hid", hallid.Value);
                if (img != "")
                { cmd.Parameters.AddWithValue("@path", img); }
                else { cmd.Parameters.AddWithValue("@path", null); }

                cmd.ExecuteNonQuery();

                MessageBox.Show("Movie Added Successfully", "Success");
                Button2_Click(sender, e);

                string filename = Server.MapPath("../addmovies.xml");
                XmlDocument doc = new XmlDocument();
                doc.Load(filename);
                XmlNode node = doc.CreateNode(XmlNodeType.Element, "Ad", null);

                XmlNode nodeUrl = doc.CreateElement("ImageUrl");
                XmlNode nodeUrl1 = doc.CreateElement("AlternateText");

                nodeUrl.InnerText = "../images/" + img;
                nodeUrl1.InnerText = img;
                //nodeUrl1.InnerText = name.Trim();

               //This code will add the ImageUrl and Alternate Text to the addmovies xml file.
                node.AppendChild(nodeUrl1);
                node.AppendChild(nodeUrl);

                //This line will add the child nodes ImageURl and Alternate text to the xml root node Ad
                doc.DocumentElement.AppendChild(node);

                //This piece of code will save the nodes in the xml document addmovies.
                doc.Save(filename);
            }
            catch (SqlException sqlerr)
            {
                MessageBox.Show("Duplicate Movie ID provided. Please provide another id for the movie." + "\nError Message: " + sqlerr.Message);
            }
            catch (Exception ee)
            {
                MessageBox.Show("Please Fill in all the Details required..\nError Message: " + ee.Message);
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        movid.Value = "";
        movname.Text  = "";
        duration.Value = "";
        cast.Value = "";
        DropDownList1.SelectedIndex = 0;
        dir.Value = "";
        TextBox1.Text = "";
        hallid.SelectedIndex = 0;
        thname.SelectedIndex = 0;
        categeory.SelectedIndex = 0;
    }
}