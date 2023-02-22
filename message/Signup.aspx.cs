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
    public partial class Signup : System.Web.UI.Page
    {
        //Connection to Database
        string strcon = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Sign Up Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //Check if user ID exist or not
            if (checkmemberexists())
            {

                Response.Write("<script>alert('User ID already Exists with this User ID, try other ID');</script>");
            }
            else {

                signupNewuser();
            }
           


        }
        //Checker USER ID in DB
        bool checkmemberexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from UsersRegister where [UserID]= '"+ txt_UserID.Text.Trim()+"';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;

                }
                else
                {
                    return false;
                
                }
                

                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
           


        }
        //Create new user and Store in DB
        void signupNewuser()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO UsersRegister(FirstName,LastName,Email,Password,ConfirmPassword,State,City,Pincode,ContactNo,BloodGroup,UserID) values(@FirstName,@LastName,@Email,@Password,@ConfirmPassword,@State,@City,@Pincode,@ContactNo,@BloodGroup,@UserID)", con);
                cmd.Parameters.AddWithValue("@FirstName", txt_fname.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txt_lname.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txt_email.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txt_password.Text.Trim());
                cmd.Parameters.AddWithValue("@ConfirmPassword", txt_confirmpassword.Text.Trim());
                cmd.Parameters.AddWithValue("@State", ddl_state.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", txt_city.Text.Trim());
                cmd.Parameters.AddWithValue("@Pincode", txt_pincode.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNo", txt_MobileNumnuber.Text.Trim());
                cmd.Parameters.AddWithValue("@BloodGroup", ddl_bloodGroup.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@UserID", txt_UserID.Text.Trim());

                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Signup Successful. Go to User Login to Login');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }



    }
}
    

            
            
        