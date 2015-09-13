using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Xml;
public partial class movies1 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    MySqlCommand cmd;
    MySqlDataReader dr;
    //string names;
    //string[] temp;
    //int i = 0;
    //static int k=0;
    public static string name, thname, direct, cast, genr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
      /*  XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load("C:\\Users\\Vivek\\Desktop\\NiitProject  BackUp\\Rainbow\\addmovies.xml");
        XmlNodeList dataNodes = xmlDoc.SelectNodes("/Advertisements/Ad");
        temp = new string[dataNodes.Count];
        foreach (XmlNode node in dataNodes)
        {
            names = node.SelectSingleNode("AlternateText").InnerText;
            temp[i++] = names;
        }*/
    }   

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        
    }

    protected void adRotator_AdCreated(object sender, AdCreatedEventArgs e)
    {

        //try
       // {
            cmd = new MySqlCommand("select * from moviedb where imgpath='" + e.AlternateText + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.HasRows)
            {
                if (dr.Read())
                {
                    Label1.Text = dr["name"].ToString();
                    Label5.Text = dr["theatre"].ToString();
                    Label3.Text =  dr["director"].ToString();
                    Label2.Text = dr["cast"].ToString();
                    Label4.Text =dr["genre"].ToString();
                    
                }
                else
                {
                    Label1.Text = "-";
                    Label5.Text = "-";
                    Label3.Text = "-";
                    Label2.Text = "-";
                    Label4.Text = "-";
                    
                }
            }
            dr.Close();
        /*}
        catch (Exception err)
        {
            MessageBox.Show("Following Error Occured: "+err.Message);
        }
       // MessageBox.Show(Label1.Text+Label2.Text+Label3.Text+Label4.Text+Label5.Text);
       */
        
    }
}