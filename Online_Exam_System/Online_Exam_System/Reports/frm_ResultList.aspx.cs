﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Exam_System.Reports
{
    public partial class frm_ResultList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rpt_Result r = new rpt_Result();
            CrystalReportViewer1.ReportSource = r;
        }
    }
}