using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace message
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_SubmitClick(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(strcon);
            string sqlquery = "select Email, Password from UsersRegister where Email=@email";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Email", txt_email.Text);
            sqlconn.Open();
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            if (sdr.Read())
            {
                string username = sdr["Email"].ToString();
                string password = sdr["Password"].ToString();

                MailMessage mm = new MailMessage("havilaatkur@gmail.com",txt_email.Text);
                mm.Subject = "Your Password !";
                mm.Body = string.Format("Hello your Email ID : <h1>{0}</h1> <br/> and you Password is <h1>{1}</h1>", username,password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "havilaatkur@gmail.com"; // add sender email id to send to send password request
                nc.Password = "wueetzawzhpzvobb"; // sender Password need to obtain from App services through your gmail account
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                lblMessage.Text = "Your Password is sent to " + txt_email.Text;
                lblMessage.ForeColor = Color.Green;

            }
            else
            {
                lblMessage.Text = txt_email.Text + " Email ID not exist is Database !";
                lblMessage.ForeColor = Color.Red;
            }
        }
    }
}