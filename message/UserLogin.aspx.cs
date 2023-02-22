using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace message
{
    public partial class UserLogin : System.Web.UI.Page
    {
        //Connection to DB
        string strcon = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Login crendentials verification with DB
       protected void Btn_loginClick(object sender, EventArgs e)

        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(
                    "select * from UsersRegister where [UserID]='"+ txt_memberID.Text.Trim()+
                    "' and Password ='"+ txt_password.Text.Trim()+ "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)  
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");
                        Session["username"] = dr.GetValue(0).ToString() +  " "+ dr.GetValue(1).ToString();
                        Session["firstname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                    }
                    //Redirect after successful login
                    Response.Redirect("UserHome.aspx");
                }
                //Invalid credentials throw error
                else
                {
                    
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                
                }


            }
            catch(Exception ex) {

                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        
        }
    }
}