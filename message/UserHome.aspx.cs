using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace message
{
    public partial class UserHome : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt_date.Text = DateTime.Now.ToString("MM/dd/yyyy");
            }
        }

        protected void brn_Addpost(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO addposts(Title,Name,City,Bloodgroup,Description,contactnumber,DatePosted) values(@Title,@Name,@City,@Bloodgroup,@Description,@contactnumber,@DatePosted)", con);
            cmd.Parameters.AddWithValue("@Title", txt_Title.Text.Trim());
            cmd.Parameters.AddWithValue("@Name", txt_name.Text.Trim());
            cmd.Parameters.AddWithValue("@City", ddl_city.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Bloodgroup", ddl_bloodGroup.SelectedItem.Value);
            
            cmd.Parameters.AddWithValue("@Description", txt_description.Text.Trim());
            cmd.Parameters.AddWithValue("@contactnumber", txt_MobileNumnuber.Text.Trim());
            cmd.Parameters.AddWithValue("@DatePosted", txt_date.Text.Trim());

            cmd.ExecuteNonQuery();

            con.Close();
         
            Response.Write("<script>alert('Posted Successful. ');</script>");
        }

    }
}
