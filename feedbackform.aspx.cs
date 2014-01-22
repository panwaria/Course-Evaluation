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

public partial class feedbackform : System.Web.UI.Page
{
    static string subname="";
    static string tname="";
    static string sid="";
    static string q1 = "";
    static Int64 count = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label4.Text = Session["cid"].ToString();
            Label32.Text = Session.SessionID.ToString();
            
        }
        catch (NullReferenceException ex)
        {

            Response.Redirect("userlogin1.aspx");
        }

        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Label3.Visible = true;
        //DropDownList2.Visible = true;
        //subname = DropDownList1.SelectedItem.ToString();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Panel2.Visible = true;
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        try
        {
            //count++;
            Int32  counter=0;
            Label1.Text = tname.ToString();
            string classid = "", tid = "", subid = "";
            sid = Session.SessionID.ToString();
            SqlConnection con6 = new SqlConnection(q);
            con6.Open();
            string s6 = "select * from count";
            SqlCommand cmd6 = new SqlCommand(s6, con6);
            SqlDataReader dr6 = cmd6.ExecuteReader();
            while (dr6.Read())
            {
               counter = dr6.GetInt32(0);
                break;
            }
            dr6.Close();
            con6.Close();
            sid = sid + counter.ToString ();
            tid = DropDownList2.SelectedItem.ToString();
            
            #region regno
            //SqlConnection con = new SqlConnection(q);
            //con.Open();
            //string s = "select classid from student where regno = '" + regno + "'";
            //SqlCommand cmd = new SqlCommand(s, con);
            //SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    classid = dr.GetString(0);
            //    break;
            //}
            //dr.Close();
            //con.Close();
            #endregion

            #region tid
            //SqlConnection con1 = new SqlConnection(q);
            //con1.Open();
            //string s1 = "select tid from teacher where tname = '" + tname + "'";
            //SqlCommand cmd1 = new SqlCommand(s1, con1);
            //SqlDataReader dr1 = cmd1.ExecuteReader();
            //while (dr1.Read())
            //{
            //    tid= dr1.GetString(0);
            //    break;
            //}
            //dr1.Close();
            //con1.Close();
            #endregion

            #region subid
            SqlConnection con2 = new SqlConnection(q);
            con2.Open();
            string s2 = "select subid from subject where subname = '" + subname + "'";
            SqlCommand cmd2 = new SqlCommand(s2, con2);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                subid = dr2.GetString(0);
                break;
            }
            dr2.Close();
            con2.Close();
            #endregion
            classid = Label4.Text.ToString();

            string q1 = (RadioButtonList1.SelectedValue.ToString());
            string q2 = (RadioButtonList2.SelectedValue.ToString());
            string q3 = (RadioButtonList3.SelectedValue.ToString());
            string q4 = (RadioButtonList4.SelectedValue.ToString());
            string q5 = (RadioButtonList5.SelectedValue.ToString());
            string q6 = (RadioButtonList6.SelectedValue.ToString());
            string q7 = (RadioButtonList7.SelectedValue.ToString());
            string q8 = (RadioButtonList8.SelectedValue.ToString());
            string q9 = (RadioButtonList9.SelectedValue.ToString());
            string q10 = (RadioButtonList10.SelectedValue.ToString());
            string q11 = (RadioButtonList11.SelectedValue.ToString());
            string q12 = (RadioButtonList12.SelectedValue.ToString());
            string q13 = (RadioButtonList13.SelectedValue.ToString());
            string q14 = (RadioButtonList14.SelectedValue.ToString());
            string q15 = (RadioButtonList15.SelectedValue.ToString());
            string q16 = (RadioButtonList16.SelectedValue.ToString());
            string q17 = (RadioButtonList17.SelectedValue.ToString());
            string q18 = (RadioButtonList18.SelectedValue.ToString());
            string q19 = (RadioButtonList19.SelectedValue.ToString());
            string q20 = (RadioButtonList20.SelectedValue.ToString());
            string q21 = (RadioButtonList21.SelectedValue.ToString());
            string q22 = (RadioButtonList22.SelectedValue.ToString());
            string q23 = (RadioButtonList23.SelectedValue.ToString());
            string q24 = (RadioButtonList24.SelectedValue.ToString());
            string q25 = (RadioButtonList25.SelectedValue.ToString());
            string q26 = (RadioButtonList26.SelectedValue.ToString());
            string comment = TextBox1.Text.ToString();

            SqlConnection con3 = new SqlConnection(q);
            con3.Open();
            string s3 = "insert into  form values ('" + sid + "','" + classid + "','" + tid + "','" + subid + "','" + q1 + "','" + q2 + "','" + q3 + "','" + q4 + "','" + q5 + "','" + q6 + "','" + q7 + "','" + q8 + "','" + q9 + "','" + q10 + "','" + q11 + "','" + q12 + "','" + q13 + "','" + q14 + "','" + q15 + "','" + q16 + "','" + q17 + "','" + q18 + "','" + q19 + "','" + q20 + "','" + q21 + "','" + q22 + "','" + q23 + "','" + q24 + "','" + q25 + "','" + q26 + "','" + comment + "')";
            SqlCommand cmd3 = new SqlCommand(s3, con3);
            SqlDataReader dr3 = cmd3.ExecuteReader();
            dr3.Close();
            con3.Close();
            //Panel2.Visible = false;
            
            Label33.Visible = true;
            Label33.Text = "Feedback Form for " + DropDownList2.SelectedItem.ToString() + " Has Been Successfully Filled.";
            Response.Redirect("feedbackform.aspx");

        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("userlogin1.aspx");
        }
       /* catch (SqlException ex)
        {
            Label33.Visible = true;
            Label33.Text = "Feedback Form for " + DropDownList2.SelectedItem.ToString()+ " has already been filled.";
        }*/

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            Panel3.Visible = false;
            Panel2.Visible = true;
            subname = DropDownList1.SelectedItem.ToString();
            //tname = DropDownList2.SelectedItem.ToString();
        }
        catch (NullReferenceException ex)
        {
            Response.Redirect("userlogin1.aspx");
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

       //q1 = (RadioButtonList1.SelectedValue.ToString());

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        
        Int32   f = 0;
        SqlConnection con4 = new SqlConnection(q);
        con4.Open();
        string s4 = "select * from count";  
        SqlCommand cmd4 = new SqlCommand(s4, con4);
        SqlDataReader dr4 = cmd4.ExecuteReader();
        while (dr4.Read())
        {
            f = dr4.GetInt32(0);
            break;
        }
        
        f++;

        dr4.Close();
        con4.Close();
        SqlConnection con5 = new SqlConnection(q);
        con5.Open();
        string s5 = "UPDATE count SET count = " + f.ToString ();
        SqlCommand cmd5 = new SqlCommand(s5, con5);
        SqlDataReader dr5 = cmd5.ExecuteReader();
        

        dr5.Close();
        con5.Close();

        //Session.Abandon();
        //Session.Clear();
        //Session.RemoveAll();
        //Session.
        Session.Remove("cid");
        //Session.Timeout = 1;
        //Session.SessionID.Remove(5);
        //Session.SessionID.Remove(0, Session.SessionID.Length);
        //Session.SessionID = "12";
       
        Response.Redirect("userlogin1.aspx");
        

    }
}
