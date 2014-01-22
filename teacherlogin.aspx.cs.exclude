using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.ObjectModel;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.Net;
using System.Text;
public partial class teacherlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {



        MailMessage message = new MailMessage();

        //message.From = new MailAddress("me.abhs@gmail.com");



        message.To.Add(new MailAddress("me.abhs@gmail.com"));
 

        message.From = new MailAddress("cs054082@mnnit.ac.in");



        //message.To.Add(new MailAddress("cs054082@mnnit.ac.in"));

    
         


       

        message.Subject = "This is my subject";

        message.Body = "This is the content";

        //message.Attachments.Add( new mai"c:\\xxx.txt");
        //message.Attachments.Add(new MailAttachment("c:\\xxx.txt"));
         message .Attachments.Add (new Attachment ("c:\\xxx.txt"));


        SmtpClient client = new SmtpClient();
        //client.Host = "127.0.0.1";
       // client.Port = 25;
        //client.Credentials("cs054082@mnnit.ac.in", "9826011724");

        client.Send(message);
       
        
       
  //      //msgMail.To = "me.abhs@gmail.com";
  //      //msgMail.From = "me.abhs@gmail.com";
  //      msgMail.Subject = "Attachment Test";
  //      //msgMail.BodyFormat = MailFormat.Text;
  //      msgMail.Body = "Check out the attachment!";

  //     // SmtpMail.SmtpServer = "smtp.gmail.com";
  //     // smtp.Send(msgMail);
        
        

       

  //      msgMail.Attachments.Add(new MailAttachment("c:\\xxx.txt"));

  //      SmtpMail.Send(msgMail);

  //      Response.Write("Email was queued to disk");

    }
}
