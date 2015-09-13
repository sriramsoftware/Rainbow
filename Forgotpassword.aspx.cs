using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
public partial class Forgotpassword : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    MySqlCommand cmdgetpass, cmd;
    MySqlDataReader drgetpass;
    static string temp, msg;
    int a, b, c, d;
    Random rnd = new Random();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            email.Focus();
        }

    }

protected void submit_Click(object sender, ImageClickEventArgs e)
{
    MailMessage mail = new MailMessage();
    SmtpClient smtp = new SmtpClient();
    
    string strNewPassword = GeneratePassword();  //This is where you'd call the new password string.

        try
        {
            con.Open();

            //updating password for the given mailid in forum_users table
            cmd = new MySqlCommand("update custdb set custpass='" + strNewPassword + "' where custmail='" + email.Text.Trim() + "'", con);
            cmd.ExecuteNonQuery();

                msg = "<h1>The following email was sent to you by Site Administrator.</h1><br />";
                msg += "<p>Apparently, you needed your password reset - So here it is: <br />";
                msg += "<br/>New Password <b>" + strNewPassword + "</b></p><br />";
                msg += "<br/><br/>Please do not reply to this mail.Any queries please contact us through the site.<br/><br/> Thank you!";

            con.Close();

            mail.From = new MailAddress("xyz@gmail.com", "noreply");
            mail.To.Add(email.Text.Trim());
            mail.Subject = "Forgot Password";
            mail.IsBodyHtml = true;
            mail.Body = msg;
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("username", "password");
            smtp.EnableSsl = true;
            smtp.Send(mail);

        }

        catch (Exception ex)
        {
//            CreateLogFile errlog = new CreateLogFile();
  //          errlog.ErrorLog(Server.MapPath("Logs/Errorlog"), "Submit method of ForgotPassword Page:" + ex.Message);
            MessageBox.Show("Following error occured: " + ex.Message);
           
        }
    
}

    //Below algorithm will generate a unique password which is
    //hashed and then sent over the server to the database.
public string GeneratePassword()
{
    //string PasswordLength = "10";
    string NewPassword = "";

    //This one tells you which characters are allowed in this new password
    string allowedChars = "";
    allowedChars = "1,2,3,4,5,6,7,8,9,0";
    allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
    allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";
    allowedChars += "~,!,@,#,$,%,^,&,*,+,?";

    //char[] sep = { ',' };
    string[] arr = allowedChars.Split(',');
    string IDString = "";
    string temp = "";

    //utilize the "random" class
    Random rand = new Random();

    //and lastly - loop through the generation process...
    // for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)

    for (int i = 0; i < 10; i++)
    {
        temp = arr[rand.Next(0, arr.Length)];
        IDString += temp;
        NewPassword = IDString;
    }
    return NewPassword;
}

}