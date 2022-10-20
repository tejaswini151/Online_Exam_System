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
    public partial class Batch_Master : System.Web.UI.Page
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
            SetDropDown1();
            SetDropDown2();

        }
        public void ClearText()
        {
            txt_bid.Text = "";
            
          
            txt_date.Text = "";
            txt_time.Text = "";
        }
        public void EnableText()
        {
            txt_bid.Enabled = true;
            drt_course.Enabled = true;
            drt_stud.Enabled = true;
            txt_date.Enabled = true;
            txt_time.Enabled = true;
        }
        public void DisableText()
        {
            txt_bid.Enabled = false;
            drt_course.Enabled = false;
            drt_stud.Enabled = false;
            txt_date.Enabled = false;
            txt_time.Enabled= false;
        }
        public void SetGrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Batch_Master";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

            dr.Close();
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (flag == 1)
             {
                cmd=new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "insert into Batch_Master values(" + txt_bid.Text + ",'" + drt_course.SelectedValue + "','" + drt_stud.SelectedValue + "','" + txt_date.Text + "','" + txt_time.Text + "')";
                cmd.ExecuteNonQuery();
                MessageBox.Show("Record save Successfully");

             }
             if (flag == 2)
             {
                 cmd = new SqlCommand();
                 cmd.Connection = cn;
                 cmd.CommandText = "update Batch_Master set course_id='" + drt_course.SelectedValue + "', stud_id='" + drt_stud.SelectedValue + "' where  batch_id=" + txt_bid.Text;
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
            cmd.CommandText = "delete from Batch_Master where batch_id=" + txt_bid.Text + "";
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
            txt_bid.Text = Convert.ToString(GetNewId());
            GetNewId();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_bid.Text = GridView1.SelectedRow.Cells[1].Text;
            drt_stud.SelectedValue = GridView1.SelectedRow.Cells[2].Text;
            drt_stud.SelectedValue = GridView1.SelectedRow.Cells[3].Text;
            txt_date.Text = GridView1.SelectedRow.Cells[4].Text;
            txt_time.Text = GridView1.SelectedRow.Cells[5].Text;
            DisableText();
            btn_new.Enabled = false;

            btn_update.Enabled = true;
            btn_delete.Enabled = true;
        }
        public int GetNewId()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(batch_id)from Batch_Master";
            Object x = cmd.ExecuteScalar();
            if (Convert.ToString(x) == "")
                return 1;
            else
                return (Convert.ToInt32(x) + 1);
        }
        public void SetDropDown1()
        {
            cmd = new SqlCommand("select * from Courses", cn);
            dr = cmd.ExecuteReader();
            drt_course.DataSource = dr;
            drt_course.DataValueField = "course_id";
            drt_course.DataTextField = "course_nm";
            drt_course.DataBind();
            dr.Close();
        }
        public void SetDropDown2()
        {
            cmd = new SqlCommand("select * from Student", cn);
            dr = cmd.ExecuteReader();
            drt_stud.DataSource = dr;
            drt_stud.DataValueField = "stud_id";
            drt_stud.DataTextField = "stud_nm";
            drt_stud.DataBind();
            dr.Close();
        }





        }


    }
