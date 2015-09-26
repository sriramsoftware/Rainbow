using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
public partial class employee_bookingstatus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr, dr1;
    public string msg;
    public int sum;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string nm;

        try
        {

            cmd = new SqlCommand("select theatre from moviedb where id='" + movid.Value + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            nm = dr["theatre"].ToString();
            cmd1 = new SqlCommand("select totseats from theatredb where thname='" + nm + "'", con);
            dr1 = cmd1.ExecuteReader();
            sum = Convert.ToInt32(dr1[0].ToString()) - Convert.ToInt32(Session["seatsbk"]);
            if (sum < 0)
            { msg = "Seats Are Full"; }

            cmd2 = new SqlCommand("update theatredb set totseats=" + sum + " where thname='" + dr[0].ToString() + "'", con);
            cmd2.ExecuteNonQuery();

            dr.Close();
            dr1.Close();
        }
        catch (Exception err)
        {
            MessageBox.Show("Following Error occured: " + err.Message);
       
        }
    }
}