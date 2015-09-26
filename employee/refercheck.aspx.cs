using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

public partial class employee_refercheck : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    public string mov, seat, date, time, bid;
    public int cost;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (refnum.Value == "")
        {
            MessageBox.Show("Please enter a reference number..");
            refnum.Focus();
        }
        else
        {
            try
            {
                cmd = new SqlCommand("select * from bookticketdb where refnum=" + refnum.Value, con);
                dr = cmd.ExecuteReader();
                dr.Read();
                mov = dr["movname"].ToString();
                seat = dr["seats"].ToString();
                date = dr["movdate"].ToString();
                time = dr["movtime"].ToString();
                bid = dr["bookid"].ToString();
                cost = Convert.ToInt32(dr["cost"].ToString());
                dr.Close();
            }
            catch (Exception err)
            {
                MessageBox.Show("Followng Error occured :" + err.Message);

            }
        }
    }
}