using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Exam_System.Reports
{
    public partial class frm_Result1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rpt_Result1 r = new rpt_Result1();
           // CrystalReportViewer1.SelectionFormula = "{Result.res_id}=" +Session["rid"];
            r.SetParameterValue("rid",Session["rid"]);
            CrystalReportViewer1.ReportSource = r;
        }
    }
}