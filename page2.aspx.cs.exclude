using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //TextBox1.Text = Session["txtFirstName"].ToString();
        //TextBox1.Text = Session.SessionID.ToString();
        //TextBox1.Text = Session[s].ToString();
        TextBox1.Text = Session["username"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("page1.aspx");
    }
}
