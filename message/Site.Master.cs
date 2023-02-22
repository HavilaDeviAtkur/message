using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace message
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]== (null))
                {
                   
                    hlink_logout.Visible = false; // logout link button
                    hlink_HelloUser.Visible = false; // hello user link button

                }
                else if (Session["role"].Equals("user"))
                {
                    hlink_Login.Visible = false; // user login link button
                     // sign up link button
                    hlink_logout.Visible = true; // logout link button
                    hlink_HelloUser.Visible = true; // hello user link button
                    hlink_HelloUser.Text = "Hello " + Session["username"].ToString();


                }
            }
            catch (Exception ex)
            {


            }

        }

       
        protected void Link_Registraion(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void Link_Login(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        //Logout Button 
        protected void btn_logout(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["firstname"] = "";
            Session["role"] = "";
            hlink_logout.Visible = false; // logout link button
            hlink_HelloUser.Visible = false;
            Response.Redirect("Home.aspx");
        }
    }
}