using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write("<script>alert('Button click');</script>");

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "' AND password='"+ TextBox2.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
               
                
                if(dr.HasRows)
                {
                    while(dr.Read())
                    { // session variable 



                        Response.Write("<script>alert('"+dr.GetValue(8).ToString()+"');</script>");

                        Session["username"] = dr.GetValue(8).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(10).ToString();
                    }

                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credetials');</script>");

                }

            }

            catch
            {


            }

        }

        protected void Button2_Click(object sender, EventArgs e) //signup
        {
            Response.Redirect("usersignup.aspx");
        }
    }
}