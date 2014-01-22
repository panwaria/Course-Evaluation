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

public partial class userlogin1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cid = "";
        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(q);
        con.Open();
        string course = DropDownList1.SelectedItem.ToString();
        string sem = DropDownList2.SelectedItem.ToString();
        string branch = DropDownList3.SelectedItem.ToString();
        string s = "select classid from class where course = '" + course + "' and sem = '" + sem + "' and branch = '" + branch + "'";

        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            //Label1.Text = s;
            cid = dr.GetString(0).ToString();
            //Label5.Text = cid;
            //break;
        }
        Session.Add("cid", cid);
        Response.Redirect("feedbackform.aspx");

    }
}
