using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class customer_seats : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    int count_seat=0,i;
    Button[] seat;
    Label rowname;
    int sum = 65;
        protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Height = 250;
        Panel1.Width = 520;
        Panel1.BorderColor = Color.AliceBlue;
        Panel1.BorderStyle = BorderStyle.Solid;
        Panel1.BorderWidth = 2;
        Panel1.ScrollBars = ScrollBars.Vertical;
        con.Open();
        string name = Request.QueryString["tot12"];
        cmd = new SqlCommand("select totseats from theatredb where thname='"+name+"'",con);
        dr = cmd.ExecuteReader();
        dr.Read();
       // count_seat =Convert.ToInt32( dr[0].ToString());
        dr.Close();
           seat=new Button[100];
            
        for (int i = 0; i < (100/15); i++)
        {
            rowname = new Label();
         rowname.Text=Convert.ToChar(sum).ToString();
         rowname.Height = 40;
         rowname.Width = 40;
         Panel1.Controls.Add(rowname);
         
            
            for (int j = 0; j < 15; j++)
                {
                
                    seat[j] = new Button();
                    seat[j].Text = (j + 1).ToString();
                    seat[j].Height = 30;
                    seat[j].Width = 30;
                    seat[j].ForeColor = Color.White;
                    seat[j].BackColor = Color.Black;
                    seat[j].BorderColor = Color.Coral;
                    seat[j].BorderStyle = BorderStyle.Ridge;
                    seat[j].Click += new EventHandler(selectseat_Click);
                    seat[j].BorderWidth = 2;
                    //seat[j].ID = rowname.Text + (j + 1);
                    
                    Panel1.Controls.Add(seat[j]);
                }
            sum++;
        }

    }
        protected void selectseat_Click(object sender, EventArgs e)
        { 
            Button b =(Button)sender;
            if (b.BackColor == Color.Black)
            { 
                b.BackColor = Color.Red; 
            }
            else
            {
                b.BackColor = Color.Black;
            }
            
        }
        protected void Button1_Click(object sender, EventArgs e)
    {
           
        Response.Redirect("booktickets.aspx");
    }
}
    