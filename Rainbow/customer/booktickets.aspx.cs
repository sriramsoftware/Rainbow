using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
public partial class customer_booktickets : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd, cmd2;
    SqlDataReader dr;
    public string mname, date, theater, seats, time, bkid;
    public int cost, refnum;
    int tot;
    public string[] seatnum = new string[100];
    public string row;
    
      
    Random r = new Random();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
       
        //to add days by default to dropdown listbox1
for (int i = 1; i <= 31; i++)
        { DropDownList3.Items.Add(i.ToString()); }
                
    }

    protected void book_Click(object sender, EventArgs e)
    {
        Random rnd = new Random();
        string tname="";

        if (DropDownList2.SelectedIndex == -1)
        {
            MessageBox.Show("Please select a movie name.");
            DropDownList2.Focus();
        }
        else if (TextBox1.Text == "")
        {
            MessageBox.Show("Please enter the number of seats.");
            TextBox1.Focus();
        }
        else if(System.Text.RegularExpressions.Regex.IsMatch(TextBox1.Text, "[^0-9]") ||  TextBox1.Text=="")
        {
            MessageBox.Show("Please enter only numbers.");
            TextBox1.Focus();
        }
        else
        {
            try
            {

                mname = DropDownList2.SelectedItem.Value;
                date = DropDownList3.SelectedItem + "/" + DropDownList4.SelectedItem + "/" + DropDownList5.SelectedItem;
                theater = DropDownList1.SelectedItem.Value;
                tname = theater;
                seats = TextBox1.Text;
                row = r.Next(1, 8).ToString();
                for (int i = 1; i <= Convert.ToInt32(seats); i++)
                {
                    seatnum[i] = rnd.Next(1, 20).ToString();
                }

                Session["seatsbk"] = seats;
                time = time1.Value;
                cost = Convert.ToInt32(seats) * 120;
                refnum = r.Next(1, 5000);
                bkid = "B" + r.Next(1, 5000).ToString();
                cmd2 = new SqlCommand("insert into bookticketdb values(@book,@name,@date,@time,@seat,@tot,@ref)", con);
                cmd2.Parameters.AddWithValue("@book", bkid);
                cmd2.Parameters.AddWithValue("@name", mname);
                cmd2.Parameters.AddWithValue("@date", date);
                cmd2.Parameters.AddWithValue("@time", time);
                cmd2.Parameters.AddWithValue("@seat", seats);
                cmd2.Parameters.AddWithValue("@tot", cost);
                cmd2.Parameters.AddWithValue("@ref", refnum);
                cmd2.ExecuteNonQuery();


            }
            catch (SqlException sqlerr)
            {
                MessageBox.Show("Duplicate Booking ID provided. Please book again. Sorry for the inconvienience" + "\nError Message: " + sqlerr.Message);
            }
            catch (Exception ee)
            {
                MessageBox.Show("Please Correct The Error :" + ee.Message);
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = DropDownList1.SelectedItem.ToString();

        cmd = new SqlCommand("select name from moviedb where theatre='" + s + "'", con);
        dr = cmd.ExecuteReader();
        try
        {
            while (dr.Read())
            {
                DropDownList2.Items.Add(dr["name"].ToString());
            }
        }
        catch (Exception ef)
        {
            MessageBox.Show("No Movie Alloted for this Theatre");
        }
        dr.Close();
    }
      
        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {   
    }
        protected void DropDownList4_Init(object sender, EventArgs e)
        {
            for (int i = 1; i < 13; i++)
            {
                DropDownList4.Items.Add(i.ToString());
            }
        }
        protected void DropDownList3_Init(object sender, EventArgs e)
        {
            for (int day = 1; day <= tot; day++)
            {
                DropDownList3.Items.Add(day.ToString());
            }

        }
}