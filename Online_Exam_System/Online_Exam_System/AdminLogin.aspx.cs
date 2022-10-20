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
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection cn;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=LAPTOP-87PPMVJO\\SQLEXPRESS;Initial Catalog=Online_Examdb;Integrated Security=True";
            cn.Open();
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (txt_name.Text == "Admin" && txt_pass.Text == "Admin123")
            {
                MessageBox.Show("Login Successfull");
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {
                MessageBox.Show("Login Unsuccessfull");
            }
            
        }
    }
}