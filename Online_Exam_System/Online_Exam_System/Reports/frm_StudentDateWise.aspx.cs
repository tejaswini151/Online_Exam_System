using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Exam_System.Reports
{
    public partial class frm_StudentDateWise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_show_Click(object sender, EventArgs e)
        {
            rpt_Student r = new rpt_Student();
            CrystalReportViewer1.SelectionFormula = "{Student.stud_DOB}>='" + Calendar1.SelectedDate.ToString() + "'and{Student.stud_DOB}<='" + Calendar2.SelectedDate.ToString() + "'";
            CrystalReportViewer1.ReportSource = r;

        }
    }
}