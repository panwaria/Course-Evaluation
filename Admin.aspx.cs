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

public partial class Admin : System.Web.UI.Page
{
    static string classname,course,branch,tid,subid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Label6.Visible = false;
        Button13.Visible = false;
        Button8.Visible = false;
        Label17.Visible = false;
        GridView1.Visible = false;
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        classname = DropDownList4.SelectedItem.ToString();
        //Label17.Visible = true;
        //GridView1.Visible = true;
        Panel2.Visible = false;
        MultiView1.ActiveViewIndex = -1;
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
         string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        
         SqlConnection con = new SqlConnection(q);
         con.Open();
         classname = DropDownList4.SelectedItem.ToString();
         string s = "delete from class where classid = '" + classname  + "'";
         SqlCommand cmd = new SqlCommand(s, con);
         SqlDataReader dr = cmd.ExecuteReader();
         dr.Close();
          con.Close ();
          Response.Redirect("admin.aspx");
         
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        course = DropDownList3.SelectedItem.ToString();


    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        branch = DropDownList5.SelectedItem.ToString();
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";

            SqlConnection con = new SqlConnection(q);
            con.Open();
            
            
            if (!(TextBox7.Text.ToString().Equals("")))
            {
                course = TextBox7.Text.ToString();
            }
            else
            {
                course = DropDownList3.SelectedItem.ToString();
            }

            if (!(TextBox8.Text.ToString().Equals("")))
            {
                branch = TextBox8.Text.ToString();
            }
            else

            { branch = DropDownList5.SelectedItem.ToString();
            }

            string s = "insert into class values('" + TextBox5.Text.ToString() + "','" + course + "','" + TextBox6.Text.ToString() + "','" + branch + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Close();
            con.Close();
            Panel2.Visible = false;
            Response.Redirect("Admin.aspx");
        }
        catch(Exception ex)
        {
          
            Label29.Visible = true;
            Label29.Text = ex.ToString()+course +branch ;
          // Label29.Text = "The class id already exists ";

        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        TextBox7.Visible = true;
        DropDownList3.Visible = false;

    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        TextBox8.Visible = true;
        DropDownList5.Visible = false;
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //string s = TextBox1.Text.ToString();
        try
        {
            string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(q);
            con.Open();
            classname = DropDownList4.SelectedItem.ToString();
            string s = "insert into subject values ('" + TextBox9.Text.ToString() + "','" + TextBox1.Text.ToString() + "','" + DropDownList4.SelectedItem.ToString() + "')";
            SqlCommand cmd = new SqlCommand(s, con);

            SqlDataReader dr = cmd.ExecuteReader();
            dr.Close();
            con.Close();

            SqlConnection con1 = new SqlConnection(q);
            con1.Open();

            s = "insert into allotment values ('--- NA ---','" + TextBox9.Text.ToString() + "','" + DropDownList4.SelectedItem.ToString() + "')";
            SqlCommand cmd1 = new SqlCommand(s, con1);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            dr1.Close();
            con1.Close();
            TextBox1.Text = "";
            TextBox9.Text = "";
            MultiView1.ActiveViewIndex = -1;
        }
        catch (SqlException ex)
        {
            Label27.Visible = true;
        }
       

    }
    //protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //if (RadioButtonList2.SelectedIndex == 1)
    //    //{
    //    //    MultiView1.ActiveViewIndex = -1;
    //    //    string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";

    //    //    SqlConnection con = new SqlConnection(q);
    //    //    con.Open();
    //    //    classname = DropDownList4.SelectedItem.ToString();
    //    //    string s = "delete from subject where subname = '" + DropDownList1.SelectedItem.ToString() + "' and classid = '"+ classname+"'";
    //    //    SqlCommand cmd = new SqlCommand(s, con);
    //    //    SqlDataReader dr = cmd.ExecuteReader();
    //    //    dr.Close();
    //    //    con.Close();
    //    //}
    //    //if (RadioButtonList2.SelectedIndex == 0)
    //    //{
    //    //    MultiView1.ActiveViewIndex = 0;
    //    //}
    //    //if (RadioButtonList2.SelectedIndex == 2)
    //    //{
    //    //    MultiView1.ActiveViewIndex = 2;
    //    //}

    //}
  
    //protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
    //    SqlConnection con = new SqlConnection(q);
    //    con.Open();
    //    classname = DropDownList4.SelectedItem.ToString();
    //    string s = "select tid from teacher where tname='" + DropDownList2.SelectedItem.ToString() + "'";
    //    SqlCommand cmd = new SqlCommand(s, con);
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    if (dr.Read())
    //    {
    //        tid = dr.GetString(0).ToString();
    //    }
    //    dr.Close();
    //    con.Close();
    //}

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(q);
            con.Open();
            classname = DropDownList4.SelectedItem.ToString();
            string s = "select subid from subject where subname='" + DropDownList1.SelectedItem.ToString() + "' and classid ='" + classname + "'"; ;
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                subid = dr.GetString(0).ToString();
            }
            dr.Close();
            con.Close();

            tid = DropDownList2.SelectedItem.ToString();
            //string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con1 = new SqlConnection(q);
            con1.Open();
            classname = DropDownList4.SelectedItem.ToString();
            string s1 = " UPDATE allotment SET tid = '" + tid + "', subid = '" + subid + "', classid = '" + classname + "' WHERE (subid = '" + subid + "' and classid='" + classname + "')";
            SqlCommand cmd1 = new SqlCommand(s1, con1);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                //tid = dr1.GetString(0).ToString();
            }
            dr1.Close();
            con1.Close();
            MultiView1.ActiveViewIndex = -1;
            Response.Redirect("Admin.aspx");
        }
        catch (SqlException ex)
        {
            Label28.Visible = true;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(q);
            con.Open();
            //classname = DropDownList4.SelectedItem.ToString();
            string s = "insert into teacher values ('" + TextBox4.Text.ToString() + "','" + TextBox10.Text.ToString() + "')";// "', ' ' ,'" + TextBox10.Text.ToString() + "')";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Close();
            con.Close();


            SqlConnection con1 = new SqlConnection(q);
            con1.Open();
            //classname = DropDownList4.SelectedItem.ToString();
            string s1 = "insert into tid_dept values ('" + TextBox4.Text.ToString() + "','" + DropDownList6.SelectedItem.ToString() + "')";// "', ' ' ,'" + TextBox10.Text.ToString() + "')";
            SqlCommand cmd1 = new SqlCommand(s1, con1);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            dr1.Close();
            con1.Close();


            Panel1.Visible = false;
           // Response.Redirect("Admin.aspx");
        }
        catch (Exception ex)
        {
            Label30.Visible = true;
            Label30.Text = "A teacher with same name exists";
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Label6.Visible = false;
        Button13.Visible = false;
        Button8.Visible = false;
        Label17.Visible = false;
        GridView1.Visible = false;
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Label6.Visible = true;
        Button8.Visible = true;
        Button13.Visible = true;
        Panel2.Visible = false;
        Panel1.Visible = false;
        Label17.Visible = false ;
        GridView1.Visible = false ;

        //DropDownList4.Visible = true;
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Label6.Visible = false ;
        Button8.Visible = false ;
        Button13.Visible = false;
       
        
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Label6.Visible = false;
        Button13.Visible = false;
        Button8.Visible = false;
        Panel2.Visible = false;
        Panel1.Visible = false;
        Label17.Visible = true;
        GridView1.Visible = true;
    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        Label24.Visible = false;
        Label27.Visible = false;
        Button16.Visible = false;
        Button19.Visible = false;

    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        //MultiView1.Visible = true;
        MultiView1.ActiveViewIndex = -1;
        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";

        SqlConnection con = new SqlConnection(q);
        con.Open();
        classname = DropDownList4.SelectedItem.ToString();
        string s = "delete from subject where subname = '" + DropDownList1.SelectedItem.ToString() + "' and classid = '" + classname + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Close();
        con.Close();
        Label24.Visible = false ;
        Button16.Visible = false ;
        Button19.Visible = false ;
    }
    protected void Button17_Click(object sender, EventArgs e)
    {
        //MultiView1.Visible = true;
        MultiView1.ActiveViewIndex = 2;
        Panel1.Visible = false;
        Panel2.Visible = false;
        Label24.Visible = false;
        Button16.Visible = false;
        Button19.Visible = false;
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        //MultiView1.Visible = false;
        MultiView1.ActiveViewIndex = -1;
        Panel1.Visible = false;
        Panel2.Visible = false;
        Label24.Visible = true;
        Button16.Visible = true;
        Button19.Visible = true;
    }
    protected void Button19_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Label24.Visible = false;
        Button16.Visible = false;
        Button19.Visible = false;
    }
    protected void Button20_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }


    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    protected void Button22_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }
    protected void Button23_Click(object sender, EventArgs e)
    {
        
        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(q);
        con.Open();
        string hodname = TextBox3.Text.ToString();
        string hodemail = TextBox11.Text.ToString();
        string dept = DropDownList8.SelectedItem.ToString();
        string s = " UPDATE department SET hod = '" + hodname + "', hodmailid = '" + hodemail + "' WHERE (dept = '" + dept + "')";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Close();
        con.Close();
        Response.Redirect("Admin.aspx");
    }
    protected void Button21_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        GridView2.Visible = true;
    }
    protected void Button24_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
    }
}
