using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
public partial class admin_viewfeedback : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

        if (DataList1.Items.Count == 0)
        {
            MessageBox.Show("No FeedBack Available", "Feedback", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}