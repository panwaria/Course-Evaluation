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
using System.Data.SqlClient;

public partial class Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       
        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(q);
        con.Open();
        string s = "select Password from Adminlogin where Username = '" + TextBox1.Text.ToString() + "' and Password = '" + TextBox2.Text.ToString() + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();


        if (dr.Read())
        {
            if (TextBox1.Text.ToString().Equals("admin"))
            {
                Response.Redirect("admin2.aspx");
            }
            else if (TextBox1.Text.ToString().Equals("superadmin"))
            {
                Response.Redirect("Admin.aspx");
            }
        }
        else
        {
            Label3.Text = " Wrong Username or Password";
        }

    }
}
