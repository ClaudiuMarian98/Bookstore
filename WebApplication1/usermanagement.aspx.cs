using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class usermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getUserbyID();
        }
        // active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
             updateStatusbyID("active");
        }
        //pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
             updateStatusbyID("pending");
        }
        //deactivate button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateStatusbyID("inactive");
        }
        //delete button
        protected void Button1_Click(object sender, EventArgs e)
        {
            deleteUserbyID();
        }


        //user functions

        void getUserbyID()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl WHERE member_id='" + TextBox3.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();


                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                       TextBox2.Text= dr.GetValue(0).ToString();
                       TextBox7.Text = dr.GetValue(10).ToString();
                        TextBox1.Text = dr.GetValue(1).ToString();
                        TextBox4.Text = dr.GetValue(2).ToString();
                        TextBox8.Text = dr.GetValue(3).ToString();
                        TextBox5.Text = dr.GetValue(4).ToString();
                        TextBox6.Text = dr.GetValue(5).ToString();
                        TextBox9.Text = dr.GetValue(6).ToString();
                        TextBox10.Text = dr.GetValue(7).ToString();


                    }
                    
                }
                else
                {
                    Response.Write("<script>alert('Invalid credetials');</script>");

                }

            }

            catch
            {

                Response.Write("<script>alert('eroare');</script>");
            }


           

        }
        void updateStatusbyID(string status)
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE  from member_master_tbl WHERE member_id='" + TextBox3.Text.Trim() + "'", con);





                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('member deleted successful');</script>");
                    clearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid member ID');</script>");
            }

        }

        void deleteUserbyID()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE  from member_master_tbl WHERE member_id='" + TextBox3.Text.Trim() + "'", con);





                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('member deleted successful');</script>");
                    clearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid member ID');</script>");
            }
        }

            void clearForm()
            {
                TextBox3.Text = "";
                TextBox2.Text = "";
                TextBox7.Text = "";
                TextBox1.Text = "";
                TextBox4.Text = "";
                TextBox8.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
            }


       


        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl WHERE member_id='" + TextBox3.Text.Trim() + "';", con);
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
    }
}