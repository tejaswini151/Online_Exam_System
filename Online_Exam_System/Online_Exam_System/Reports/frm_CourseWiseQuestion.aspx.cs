using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Online_Exam_System.Reports
{
    public partial class frm_CourseWiseQuestion : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=LAPTOP-87PPMVJO\\SQLEXPRESS;Initial Catalog=Online_Examdb;Integrated Security=True";
            cn.Open();
            if (!IsPostBack)
                Setdropdown();
        }
        public void Setdropdown()
        {
            cmd = new SqlCommand("Select * from Courses", cn);
            dr = cmd.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataValueField = "course_id";
            DropDownList1.DataTextField = "course_nm";
            DropDownList1.DataBind();
            dr.Close();
        }

        protected void btn_show_Click(object sender, EventArgs e)
        {
            rpt_Question_Master r = new rpt_Question_Master();
            CrystalReportViewer1.SelectionFormula = "{Question_master.course_id} =" + DropDownList1.SelectedValue;
            CrystalReportViewer1.ReportSource = r;
        }

    }
}