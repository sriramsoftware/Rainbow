using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
public partial class _Default : System.Web.UI.Page
{
    /*ImageMap[] map;
    string name;
    int i = 0;
    MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    MySqlCommand cmd;
    MySqlDataReader dr;*/
    protected void Page_Load(object sender, EventArgs e)
    {
      /*  con.Open();
        Panel pan = new Panel();
        
        pan.Height = 200;
        pan.Width = 900;
        
        pan.BorderColor = Color.Black;
        pan.BorderStyle = BorderStyle.Solid;
        pan.ScrollBars = ScrollBars.Vertical;

       
       XmlDocument xmlDoc = new XmlDocument();
       xmlDoc.Load("../addmovies.xml");
       XmlNodeList dataNodes = xmlDoc.SelectNodes("/Advertisements/Ad");
       
        map = new ImageMap[dataNodes.Count];
        foreach (XmlNode node in dataNodes)
        {
          name= node.SelectSingleNode("ImageUrl").InnerText;
          map[i] = new ImageMap();
          map[i].ImageUrl = name;
          map[i].HotSpotMode = HotSpotMode.Navigate;
          map[i].Height =100;
          map[i].Width = 200;
          map[i].Click += new ImageMapEventHandler(imagedetails_Click);
          pan.Controls.Add(map[i]);
                  
          i++;
        }

        form1.Controls.Add(pan);
        */
    }

    protected void imagedetails_Click(object sender, EventArgs e)
    {

      /*  ImageMap mp = (ImageMap)sender;
        string s=mp.ImageUrl;

        try
        {
            cmd = new MySqlCommand("select * from moviedb where imgpath='" + s + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            Label1.Text = dr["name"].ToString();
            Label5.Text = dr["theatre"].ToString();
            Label3.Text = dr["director"].ToString();
            Label2.Text = dr["cast"].ToString();
            Label4.Text = dr["genre"].ToString();
            dr.Close();
        }
        catch (Exception err)
        {
            MessageBox.Show("Following Error occured: "+err.Message);
        }*/
    }
}