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
using System.Net.Mail;
using System.Net;



public partial class admin2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {    
        //string classid = DropDownList1.SelectedItem.ToString();
        string subname =""; //DropDownList2.SelectedItem.ToString();
        //string tid = DropDownList3.SelectedItem.ToString();
         //string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        
        
            string subid = "";
            string tid = "";
            string classid="";

            string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(q);
            con.Open();
            string s = "select * from allotment " ;
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            { 
                classid=dr.GetString (2);
                
                float[] mean = new float[27];
                float count = 0;
                tid = dr.GetString(0);
                subid = dr.GetString(1);
                #region mail1
                SqlConnection con1 = new SqlConnection(q);
                con1.Open();
                string s1 = "select * from form where classid = '" + classid + "' and tid = '" + tid + "' and subid = '" + subid + "'";
                SqlCommand cmd1 = new SqlCommand(s1, con1);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                string comment = "";
                while (dr1.Read())
                {
                    count++;
                    comment += "\n___________________________________________________________________________________________\n";
                    comment += "Comment#" + count.ToString() + ": \n" + dr1.GetString(30).ToString() + "\n";

                    for (int i = 4; i < 30; i++)
                    {
                        if (dr1.GetString(i).Equals(""))
                        {
                            mean[i - 3] = 0;
                        }
                        else
                        {
                            mean[i - 3] += Int32.Parse(dr1.GetString(i));
                        }
                    }
                    //subid = dr1.GetString(0);
                    //break;
                }

                dr1.Close();
                con1.Close();


                if (count > 0)
                {

                    for (int i = 1; i <= 26; i++)
                    {
                        mean[i] = mean[i] / count;
                    }

                    float[] weight = new float[27] { 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };
                    float sumofweights = 0;
                    float weightedMean = 0;
                    float overallmean = 0;

                    for (int i = 1; i <= 26; i++)
                    {
                        weightedMean += mean[i] * weight[i];
                        sumofweights += weight[i];
                        overallmean += mean[i];
                    }

                    overallmean /= 26;
                    weightedMean /= sumofweights;





                    float diff_sq = 0;
                    SqlConnection con2 = new SqlConnection(q);
                    con2.Open();
                    string s2 = "select * from form where classid = '" + classid + "' and tid = '" + tid + "' and subid = '" + subid + "'";
                    SqlCommand cmd2 = new SqlCommand(s2, con2);
                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    while (dr2.Read())
                    {
                        //count++;
                        for (int i = 4; i < 30; i++)
                        {
                            if (dr2.GetString(i).Equals(""))
                            {
                                diff_sq += (overallmean ) * (overallmean );
                            }
                            else
                            {
                                diff_sq += (overallmean - Int32.Parse(dr2.GetString(i))) * (overallmean - Int32.Parse(dr2.GetString(i)));
                            }//mean[i - 3] += Int32.Parse(dr2.GetString(i));
                        }
                        //subid = dr1.GetString(0);
                        //break;
                    }
                    dr2.Close();
                    con2.Close();
                    float stddev = float.Parse(Math.Sqrt(diff_sq / (count * 26)).ToString());
                    string str3 = "NAME:" + tid + "\n";
                    SqlConnection con3 = new SqlConnection(q);
                    con3.Open();
                    string s3 = "select * from class where classid = '" + classid + "'";
                    SqlCommand cmd3 = new SqlCommand(s3, con3);
                    SqlDataReader dr3 = cmd3.ExecuteReader();
                    string course = "", sem = "", branch = "";
                    while (dr3.Read())
                    {
                        course = dr3.GetString(1).ToString();
                        sem = dr3.GetString(2).ToString();
                        branch = dr3.GetString(3).ToString();
                        break;
                    }

                    dr3.Close();
                    con3.Close();


                    SqlConnection con12 = new SqlConnection(q);
                    con12.Open();
                    string s12 = "select * from subject where classid = '" + classid + "'"+" and subid = '"+subid +"'" ;
                    SqlCommand cmd12 = new SqlCommand(s12, con12);
                    SqlDataReader dr12 = cmd12.ExecuteReader();
                    //string course = "", sem = "", branch = "";
                    while (dr12.Read())
                    {
                        subname = dr12.GetString(1);
                        break;
                    }

                    dr12.Close();
                    con12.Close();


                    str3 = str3 + "\nCOURSE:" + course + "\n" + "SEMESTER:" + sem + "\n" + "BRANCH:" + branch + "\n\n" + "SUBJECT:" + subname + "\n\n";
                    str3 = str3 + "The feedback points are evaluated on the scale of 0 to 4 (4 being the highest)\n\n";
                    str3 = str3 + "Q1.)syllabus was properly defined: " + mean[1].ToString() + "\n";
                    str3 = str3 + "Q2.) Amount of material covered in course was just right:  " + mean[2].ToString() + "\n";
                    str3 = str3 + "Q3.) Topics were covered in logical sequece: " + mean[3].ToString() + "\n";
                    str3 = str3 + "Q4.) Tutorials were useful: " + mean[4].ToString() + "\n";
                    str3 = str3 + "Q5.) Assignments helped better understand the course material: " + mean[5].ToString() + "\n";
                    str3 = str3 + "Q6.) Topics were covered in a logical sequence: " + mean[6].ToString() + "\n";
                    str3 = str3 + "Q7.) Pace of instruction was even: " + mean[7].ToString() + "\n";
                    str3 = str3 + "Q8.) Equipments available in the laboratory were functioning: " + mean[8].ToString() + "\n";
                    str3 = str3 + "Q9.) Manuals were available in the laboratory: " + mean[9].ToString() + "\n";
                    str3 = str3 + "Q10.)Exam truely reflected the grasp of the subject: " + mean[10].ToString() + "\n";
                    str3 = str3 + "Q11.) Text/reference material was easily available: " + mean[11].ToString() + "\n";
                    str3 = str3 + "Q12.) Instructor is punctual: " + mean[12].ToString() + "\n";
                    str3 = str3 + "Q13.) Instructor's voice and writing is clear and comprehendible: " + mean[13].ToString() + "\n";
                    str3 = str3 + "Q14.) Instructor's posture and gestures were appropriate in the class: " + mean[14].ToString() + "\n";
                    str3 = str3 + "Q15.) Course objectives were fulfilled: " + mean[15].ToString() + "\n";
                    str3 = str3 + "Q16.) Fundamental principles were well emphasized: " + mean[16].ToString() + "\n";
                    str3 = str3 + "Q17.) Instructor was approachable for clarifying difficulties: " + mean[17].ToString() + "\n";
                    str3 = str3 + "Q18.) Boardworks and visual aids were of good quality: " + mean[18].ToString() + "\n";
                    str3 = str3 + "Q19.) Instructor was very motivating: " + mean[19].ToString() + "\n";
                    str3 = str3 + "Q20.) Instructor was well prepared for the lectures: " + mean[20].ToString() + "\n";
                    str3 = str3 + "Q21.) Instructor was organised in his/her presentation: " + mean[21].ToString() + "\n";
                    str3 = str3 + "Q22.) Instructor was able to answer the questions raised in the class: " + mean[22].ToString() + "\n";
                    str3 = str3 + "Q23.) All the alloted lectures were held: " + mean[23].ToString() + "\n";
                    str3 = str3 + "Q24.) Communication was comprehendible: " + mean[24].ToString() + "\n";
                    str3 = str3 + "Q25.) Instructor encouraged questions to be asked: " + mean[25].ToString() + "\n";
                    str3 = str3 + "Q26.) Examples discussed in the class were sufficient: " + mean[26].ToString() + "\n";
                    str3 = str3 + "\n\n";
                    str3 = str3 + "WEIGHTED MEAN: " + weightedMean.ToString() + "\n";
                    str3 = str3 + "STANDARD DEVIATION: " + stddev.ToString() + "\n";

                    str3 = str3 + comment;


                    SqlConnection con4 = new SqlConnection(q);
                    con4.Open();
                    string s4 = "select * from teacher where tid = '" + tid + "'";
                    SqlCommand cmd4 = new SqlCommand(s4, con4);
                    SqlDataReader dr4 = cmd4.ExecuteReader();
                    string mail;

                    while (dr4.Read())
                    {
                        mail = dr4.GetString(0).ToString();

                        break;
                    }
                    dr4.Close();
                    con4.Close();

                    MailMessage message = new MailMessage();

                    message.To.Add(new MailAddress("cs054082@mnnit.ac.in"));
                    message.From = new MailAddress("cs054082@mnnit.ac.in");
                    message.Subject = "Feedback for " + tid + ": " + course + "-" + sem + "-" + branch + "for subject: " + subname;
                    message.Body = str3;
                    SmtpClient client = new SmtpClient();
                    client.Send(message);
                }
                #endregion mail1



                
            }
            dr.Close();
            con.Close();


        
       
            //string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";


            

        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string tid = "";
        string classid="";
        string subid="";
        

        string dept ="";//DropDownList4.SelectedItem.ToString();
        string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
        
        
        SqlConnection con12 = new SqlConnection(q);

        con12.Open();
        string s12 = "select * from department ";
        SqlCommand cmd12 = new SqlCommand(s12, con12);
        SqlDataReader dr12 = cmd12.ExecuteReader();
        while (dr12.Read())
        {

            string str3 = "";
            dept=dr12.GetString (0);
            //tid = dr12.GetString(0);



        
        
        SqlConnection con9 = new SqlConnection(q);

        con9.Open();
        string s9 = "select tid from tid_dept where dept = '"+dept+"'";
        SqlCommand cmd9 = new SqlCommand(s9, con9);
        SqlDataReader dr9 = cmd9.ExecuteReader();
        while (dr9.Read())
        {
            tid = dr9.GetString(0);

            SqlConnection con8 = new SqlConnection(q);
            con8.Open();
            string s8 = "select * from subject_allotment_new where tid = '" + tid + "'";
            SqlCommand cmd8 = new SqlCommand(s8, con8);
            SqlDataReader dr8 = cmd8.ExecuteReader();
            while (dr8.Read())
            {
                subid = dr8.GetString(1);
                classid = dr8.GetString(2);



                #region xxx

                float[] mean = new float[27];
                float count = 0;


                //string q = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True";
                SqlConnection con1 = new SqlConnection(q);
                con1.Open();
                string s1 = "select * from form where classid = '" + classid + "' and tid = '" + tid + "' and subid = '" + subid + "'";
                SqlCommand cmd1 = new SqlCommand(s1, con1);
                SqlDataReader dr1 = cmd1.ExecuteReader();

                while (dr1.Read())
                {
                    count++;
                    for (int i = 4; i < 30; i++)
                    {
                        if (dr1.GetString(i).Equals(""))
                        {
                            mean[i - 3] = 0;
                        }
                        else
                        {
                            mean[i - 3] += Int32.Parse(dr1.GetString(i));
                        }
                    }
                    //subid = dr1.GetString(0);
                    //break;
                }
                if (count == 0)
                {
                    continue;
                }

                for (int i = 1; i <= 26; i++)
                {
                    mean[i] = mean[i] / count;
                }

                float[] weight = new float[27] { 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };
                float sumofweights = 0;
                float weightedMean = 0;
                float overallmean = 0;

                for (int i = 1; i <= 26; i++)
                {
                    weightedMean += mean[i] * weight[i];
                    sumofweights += weight[i];
                    overallmean += mean[i];
                }

                overallmean /= 26;
                weightedMean /= sumofweights;


                dr1.Close();
                con1.Close();


                float diff_sq = 0;
                SqlConnection con2 = new SqlConnection(q);
                con2.Open();
                string s2 = "select * from form where classid = '" + classid + "' and tid = '" + tid + "' and subid = '" + subid + "'";
                SqlCommand cmd2 = new SqlCommand(s2, con2);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                while (dr2.Read())
                {
                    //count++;
                    for (int i = 4; i < 30; i++)
                    {
                        if (dr2.GetString(i).Equals(""))
                        {
                            diff_sq += (overallmean) * (overallmean);
                        }
                        else
                        {
                            diff_sq += (overallmean - Int32.Parse(dr2.GetString(i))) * (overallmean - Int32.Parse(dr2.GetString(i)));
                        }//mean[i - 3] += Int32.Parse(dr2.GetString(i));
                        //mean[i - 3] += Int32.Parse(dr2.GetString(i));
                    }
                    //subid = dr1.GetString(0);
                    //break;
                }
                dr2.Close();
                con2.Close();
                float stddev = float.Parse(Math.Sqrt(diff_sq / (count * 26)).ToString());
                str3 = str3 + "TEACHER NAME:" + tid + "\n";
                SqlConnection con3 = new SqlConnection(q);
                con3.Open();
                string s3 = "select * from class where classid = '" + classid + "'";
                SqlCommand cmd3 = new SqlCommand(s3, con3);
                SqlDataReader dr3 = cmd3.ExecuteReader();
                string course = "", sem = "", branch = "";
                while (dr3.Read())
                {
                    course = dr3.GetString(1).ToString();
                    sem = dr3.GetString(2).ToString();
                    branch = dr3.GetString(3).ToString();
                    break;
                }

                dr3.Close();
                con3.Close();
                str3 = str3 + "\nCOURSE:" + course + "\n" + "SEMESTER:" + sem + "\n" + "BRANCH:" + branch + "\n" + "SUBJECT ID:" + subid + "\n\n";
                str3 = str3 + "Number of students who filled the feedback form : " + count.ToString() + "\n";
                str3 = str3 + "WEIGHTED MEAN: " + weightedMean.ToString() + "\n";
                str3 = str3 + "STANDARD DEVIATION: " + stddev.ToString() + "\n\n";

                str3 = str3 + "The questions on which teacher got points less than weighted mean :\n\n";
                if (mean[1] < weightedMean)
                {
                    str3 = str3 + "Q.) Syllabus was properly defined: " + mean[1].ToString() + "\n";
                }
                if (mean[2] < weightedMean)
                {
                    str3 = str3 + "Q.) Amount of material covered in course was just right:  " + mean[2].ToString() + "\n";
                }
                if (mean[3] < weightedMean)
                {
                    str3 = str3 + "Q.) Topics were covered in logical sequece: " + mean[3].ToString() + "\n";
                }
                if (mean[4] < weightedMean)
                {
                    str3 = str3 + "Q.) Tutorials were useful: " + mean[4].ToString() + "\n";
                }
                if (mean[5] < weightedMean)
                {
                    str3 = str3 + "Q.) Assignments helped better understand the course material: " + mean[5].ToString() + "\n";
                }
                if (mean[6] < weightedMean)
                {
                    str3 = str3 + "Q.) Topics were covered in a logical sequence: " + mean[6].ToString() + "\n";
                }
                if (mean[7] < weightedMean)
                {
                    str3 = str3 + "Q.) Pace of instruction was even: " + mean[7].ToString() + "\n";
                }
                if (mean[8] < weightedMean)
                {
                    str3 = str3 + "Q.) Equipments available in the laboratory were functioning: " + mean[8].ToString() + "\n";
                }
                if (mean[9] < weightedMean)
                {
                    str3 = str3 + "Q.) Manuals were available in the laboratory: " + mean[9].ToString() + "\n";
                }
                if (mean[10] < weightedMean)
                {
                    str3 = str3 + "Q.) Exam truely reflected the grasp of the subject: " + mean[10].ToString() + "\n";
                }
                if (mean[11] < weightedMean)
                {
                    str3 = str3 + "Q.) Text/reference material was easily available: " + mean[11].ToString() + "\n";
                }
                if (mean[12] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor is punctual: " + mean[12].ToString() + "\n";
                }
                if (mean[13] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor's voice and writing is clear and comprehendible: " + mean[13].ToString() + "\n";
                }
                if (mean[14] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor's posture and gestures were appropriate in the class: " + mean[14].ToString() + "\n";
                }
                if (mean[15] < weightedMean)
                {
                    str3 = str3 + "Q.) Course objectives were fulfilled: " + mean[15].ToString() + "\n";
                }
                if (mean[16] < weightedMean)
                {
                    str3 = str3 + "Q.) Fundamental principles were well emphasized: " + mean[16].ToString() + "\n";
                }
                if (mean[17] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor was approachable for clarifying difficulties: " + mean[17].ToString() + "\n";

                }
                if (mean[18] < weightedMean)
                {

                    str3 = str3 + "Q.) Boardworks and visual aids were of good quality: " + mean[18].ToString() + "\n";
                }
                if (mean[19] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor was very motivating: " + mean[19].ToString() + "\n";
                }
                if (mean[20] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor was well prepared for the lectures: " + mean[20].ToString() + "\n";
                }
                if (mean[21] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor was organised in his/her presentation: " + mean[21].ToString() + "\n";
                }
                if (mean[22] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor was able to answer the questions raised in the class: " + mean[22].ToString() + "\n";
                }
                if (mean[23] < weightedMean)
                {
                    str3 = str3 + "Q.) All the alloted lectures were held: " + mean[23].ToString() + "\n";
                }
                if (mean[24] < weightedMean)
                {
                    str3 = str3 + "Q.) Communication was comprehendible: " + mean[24].ToString() + "\n";
                }
                if (mean[25] < weightedMean)
                {
                    str3 = str3 + "Q.) Instructor encouraged questions to be asked: " + mean[25].ToString() + "\n";
                }
                if (mean[26] < weightedMean)
                {
                    str3 = str3 + "Q.) Examples discussed in the class were sufficient: " + mean[26].ToString() + "\n";
                }
                str3 = str3 + "\n\n";

                str3 = str3 + "__________________________________________________________________________________________" + "\n" + "\n\n";




                #endregion xxx


            }

            dr8.Close();
            con8.Close();

        }

            MailMessage message = new MailMessage();

            message.To.Add(new MailAddress("cs054082@mnnit.ac.in"));
            message.From = new MailAddress("cs054082@mnnit.ac.in");
            message.Subject = "Feedback summary " + "for" + dept;
            message.Body = str3;
            SmtpClient client = new SmtpClient();
            client.Send(message);
            //str3 = str3 + comment;



        
            //break;
        }
       
              






    }
}
