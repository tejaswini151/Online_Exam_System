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
    public partial class Web_Question_master : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;
        static int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection();
            cn.ConnectionString = "Data Source=LAPTOP-87PPMVJO\\SQLEXPRESS;Initial Catalog=Online_Examdb;Integrated Security=True";
            cn.Open();
            SetGrid();
           
            if (!IsPostBack)
                SetDropDown();
        }
        public void ClearText()
        {
            txt_qid.Text = "";
            txt_qno.Text = "";
            
            txt_name.Text = "";
            txt_q1.Text = "";
            txt_q2.Text = "";
            txt_q2.Text = "";
            txt_q3.Text = "";
            txt_q4.Text = "";
            txt_ans.Text = "";
        }
        public void EnableText()
        {
            txt_qid.Enabled = true;
            txt_qno.Enabled = true;
            DropDownList1.Enabled = true;
            txt_name.Enabled = true;
            txt_q1.Enabled = true;
            txt_q2.Enabled = true;
            txt_q3.Enabled = true;
            txt_q4.Enabled = true;
            txt_ans.Enabled = true;
        }
        public void DisableText()
        {
            txt_qid.Enabled = false;
            txt_qno.Enabled = false;
            DropDownList1.Enabled = false;
            txt_name.Enabled = false;
            txt_q1.Enabled = false;
            txt_q2.Enabled = false;
            txt_q3.Enabled = false;
            txt_q4.Enabled = false;
            txt_ans.Enabled = false;
        }
        public void SetGrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Question_master";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

            dr.Close();
        }
        public int GetNewId()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(que_id)from Question_master";
            Object x = cmd.ExecuteScalar();
            if (Convert.ToString(x) == "")
                return 1;
            else
                return (Convert.ToInt32(x) + 1);
        }
        public void SetDropDown()
        {
            cmd = new SqlCommand("select * from Courses", cn);
            dr = cmd.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataValueField = "course_id";
            DropDownList1.DataTextField = "course_nm";
            DropDownList1.DataBind();
            dr.Close();
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (flag == 1)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "insert into Question_master values(" + txt_qid.Text + ",'"+txt_qno.Text+"','"+DropDownList1.SelectedValue+"','" + txt_name.Text + "','" + txt_q1.Text + "','" + txt_q2.Text + "', '" + txt_q3.Text + "','"+txt_q4.Text+"','"+txt_ans.Text+"')";
                cmd.ExecuteNonQuery();
                MessageBox.Show("Record save Successfully");

            }
            if (flag == 2)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "update Question_master set que_no='" + txt_qno.Text + "', course_id='" + DropDownList1.SelectedValue + "', que_name='" + txt_name.Text + "', que_op1= '" + txt_q1.Text + "', que_op2='" + txt_q2.Text + "', que_op3='" + txt_q3.Text + "', que_op4='" + txt_q4.Text + "', que_ans='" + txt_ans.Text + "' where que_id= " + txt_qid.Text;
                cmd.ExecuteNonQuery();
                MessageBox.Show("Record Update Successfully");
            }
            btn_new.Enabled = true;
            btn_save.Enabled = false;
            btn_update.Enabled = false;
            btn_delete.Enabled = false;

            SetGrid();
            ClearText();
            DisableText();
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            flag = 2;
            EnableText();
            btn_save.Enabled = true;
            btn_update.Enabled = false;
            btn_delete.Enabled = false;
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "delete from Question_master where course_id=" + txt_qid.Text;
            cmd.ExecuteNonQuery();
            MessageBox.Show("Record Deleted Successfully");
            btn_new.Enabled = true;
            btn_save.Enabled = false;
            btn_update.Enabled = false;
            btn_delete.Enabled = false;

            SetGrid();
            ClearText();
            DisableText();
        }

        protected void btn_new_Click(object sender, EventArgs e)
        {
            flag = 1;
            EnableText();
            btn_save.Enabled = true;
            btn_update.Enabled = false;
            txt_qid.Text = Convert.ToString(GetNewId());
            GetNewId();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_qid.Text = GridView1.SelectedRow.Cells[1].Text;
            txt_qno.Text = GridView1.SelectedRow.Cells[2].Text;
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[3].Text;
            txt_name.Text = GridView1.SelectedRow.Cells[4].Text;
            txt_q1.Text = GridView1.SelectedRow.Cells[5].Text;
            txt_q2.Text = GridView1.SelectedRow.Cells[6].Text;
            txt_q3.Text = GridView1.SelectedRow.Cells[7].Text;
            txt_q4.Text = GridView1.SelectedRow.Cells[8].Text;
            txt_ans.Text = GridView1.SelectedRow.Cells[9].Text;

            DisableText();
            btn_new.Enabled = false;
            btn_update.Enabled = true;
            btn_delete.Enabled = true;
        }




    }
}