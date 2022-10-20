using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Online_Exam_System
{
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=LAPTOP-87PPMVJO\\SQLEXPRESS;Initial Catalog=Online_Examdb;Integrated Security=True";
            cn.Open();
        }
        
        protected void btn_login_Click(object sender, EventArgs e)
        {
            String email, pass;
            email = txt_mail.Text;
            pass = txt_pass.Text;
            cmd=new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Student where stud_email='" + txt_mail.Text + "' and stud_password='" + txt_pass.Text + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["sid"] = dr[0].ToString();
                Session["snm"] = dr[1].ToString();

                MessageBox.Show("Login Successfull");
                Response.Redirect("~/SelectCourse.aspx");

            }
            else
            {
                MessageBox.Show("Login Unsuccessfull");
            }
            dr.Close();

        }
    }
}