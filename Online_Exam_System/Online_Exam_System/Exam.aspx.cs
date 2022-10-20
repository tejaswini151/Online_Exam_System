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
    public partial class Exam : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;
        static string cid;
        static int queno = 1,marks;
        static string userans, correctans;
        static int wrongans, rightans;
        static float per;
      

        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=LAPTOP-87PPMVJO\\SQLEXPRESS;Initial Catalog=Online_Examdb;Integrated Security=True";
            cn.Open();
            if (!IsPostBack)
            {
                cid = Session["cid"].ToString();
             StartExam();
            }
           
          
            

        }
       

      
      

       protected void btn_submit_Click(object sender, EventArgs e)
       {

           SetUseansr();

               if (correctans == userans)
               {
                   marks += 1;
                   rightans++;
               }
               else
               {
                   wrongans++;
                   
               }
               if(queno==5)
               {
                   FinishExam();
               }
               else
               {
                   queno++;
                   StartExam();
               }




               RadioButton2.Checked = false;
               RadioButton3.Checked = false;
               RadioButton4.Checked = false;
               RadioButton5.Checked = false;



           }

         public void StartExam()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Question_master where course_id=" + cid + " and que_no=" + queno;
            dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Label2.Text = dr[1].ToString();
                Label1.Text = dr[3].ToString();
                RadioButton2.Text = dr[4].ToString();
                RadioButton3.Text = dr[5].ToString();
                RadioButton4.Text = dr[6].ToString();
                RadioButton5.Text = dr[7].ToString();
                correctans = dr[8].ToString(); 

            }
            dr.Close();
        }
        public int GetNewId()
       {
           cmd = new SqlCommand();
           cmd.Connection = cn;
           cmd.CommandText = "select max(res_id)from Result";
           Object x = cmd.ExecuteScalar();
           if (Convert.ToString(x) == "")
               return 1;
           else
               return (Convert.ToInt32(x) + 1);
        } 
        public void SetUseansr()
        {

             if (RadioButton2.Checked == true)
                   userans = "A";
               else
                   if (RadioButton3.Checked == true)
                       userans = "B";
                   else
                       if (RadioButton4.Checked == true)
                           userans = "C";
                       else
                           // if (RadioButton5.Checked == true)
                           userans = "D";
        }
        public void FinishExam()
        {
                    MessageBox.Show("Exam is Over"); 
                    per = (marks / 5.0f) * 100;
                   string grade = "";
                   if (per > 80)
                       grade = "A+";
                   else if (per > 60 && per <= 80)
                       grade = "A";
                   else if (per > 40 && per <= 60)
                       grade = "B";
                   else if (per > 20 && per <= 40)
                       grade = "C";
                   else
                       grade = "Fail";
                   MessageBox.Show("Percentage=" + per);
                   MessageBox.Show("Grade=" + grade);

               int rid = GetNewId();
               Session["rid"] = rid;
               cmd = new SqlCommand();
               cmd.Connection = cn;
               cmd.CommandText = "insert into Result values(" + rid + ",'"
                   + System.DateTime.Now.ToString() + "'," + Session["sid"] + "," + rightans + "," + wrongans
                   + "," + marks + ",'" + grade + "')";
               cmd.ExecuteNonQuery();
             
              
              

               Response.Redirect("~/Reports/frm_Result1List.aspx");
               }
    }
}








          



          
          
          /* RadioButton2.Checked = false;
           RadioButton3.Checked = false;
           RadioButton4.Checked = false;
           RadioButton5.Checked = false;*/














    

