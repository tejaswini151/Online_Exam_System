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
    public partial class Web_Result : System.Web.UI.Page
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
            if(!IsPostBack)
              SetDropDown1();

        }
        public void ClearText()
        {
            txt_rid.Text = "";
           

            txt_rightans.Text = "";
            txt_wrongans.Text = "";
            txt_marks.Text = "";
            txt_grade.Text = "";
        }
        public void EnableText()
        {
            txt_rid.Enabled = true;
            Calendar1.Enabled = true;
            drp_sid.Enabled = true;
            txt_rightans.Enabled = true;
            txt_wrongans.Enabled = true;
            txt_marks.Enabled = true;
            txt_grade.Enabled = true;
        }
        public void DisableText()
        {
            txt_rid.Enabled = false;
            Calendar1.Enabled = false;
            drp_sid.Enabled = false;
            txt_rightans.Enabled = false;
            txt_wrongans.Enabled = false;
            txt_marks.Enabled = false;
            txt_grade.Enabled = false;
        }
        public void SetGrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Result";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

            dr.Close();
        }
        public void SetDropDown1()
        {
            cmd = new SqlCommand("select * from Student", cn);
            dr = cmd.ExecuteReader();
            drp_sid.DataSource = dr;
            drp_sid.DataValueField = "stud_id";
            drp_sid.DataTextField = "stud_nm";
            drp_sid.DataBind();
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

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (flag == 1)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "insert into Result values(" + txt_rid.Text + ",'" +Calendar1.SelectedDate.ToString() + "'," + drp_sid.SelectedValue + "," + txt_rightans.Text + "," + txt_wrongans.Text + "," + txt_marks.Text + ",'" + txt_grade.Text + "')";
                cmd.ExecuteNonQuery();
                MessageBox.Show("Record save Successfully");

            }
            if (flag == 2)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "update Result set res_date='" + Calendar1.SelectedDate.ToString() + "', stud_id='" + drp_sid.SelectedValue + "', No_of_right_ans='" + txt_rightans.Text + "', No_of_wrong_ans='" + txt_wrongans.Text + "', marks=" + txt_marks.Text + ", grade='" + txt_grade.Text + "' where  res_id=" + txt_rid.Text;
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
            cmd.CommandText = "delete from Result where res_id=" + txt_rid.Text + "";
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
            txt_rid.Text = Convert.ToString(GetNewId());
            GetNewId();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_rid.Text = GridView1.SelectedRow.Cells[1].Text;
           
            drp_sid.SelectedValue = GridView1.SelectedRow.Cells[3].Text;
            txt_rightans.Text = GridView1.SelectedRow.Cells[4].Text;
            txt_wrongans.Text = GridView1.SelectedRow.Cells[5].Text;
            txt_marks.Text = GridView1.SelectedRow.Cells[6].Text;
            txt_grade.Text = GridView1.SelectedRow.Cells[7].Text;
            DisableText();
            btn_new.Enabled = false;

            btn_update.Enabled = true;
            btn_delete.Enabled = true;
        }




    }
}