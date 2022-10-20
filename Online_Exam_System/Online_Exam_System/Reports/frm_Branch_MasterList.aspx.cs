using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Exam_System.Reports
{
    public partial class frm_Branch_MasterList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rpt_Branch_Master r = new rpt_Branch_Master();
            CrystalReportViewer1.ReportSource = r;
        }
    }
}