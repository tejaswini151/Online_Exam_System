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
    public partial class Web_Branch_master : System.Web.UI.Page
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
        }
        public void ClearText()
        {
            txt_id.Text = "";
            txt_name.Text = "";
        }
        public void EnableText()
        {
            txt_id.Enabled = true;
            txt_name.Enabled = true;
        
        }
        public void DisableText()
        {

            txt_id.Enabled = false;
            txt_name.Enabled = false;
        }
        public void SetGrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Branch_master";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

            dr.Close();
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            if (flag == 1)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "insert into Branch_master values(" + txt_id.Text + ",'" + txt_name.Text + "')";
                cmd.ExecuteNonQuery();
                MessageBox.Show("Record save Successfully");

            }
            if (flag == 2)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "update Branch_master set Branch_nm='" + txt_name.Text + "' where Branch_id=" + txt_id.Text;
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
            cmd.CommandText = "delete from Branch_master where branch_id=" + txt_id.Text + "";
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
            txt_id.Text = Convert.ToString(GetNewId());
            GetNewId();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_id.Text = GridView1.SelectedRow.Cells[1].Text;
            txt_name.Text = GridView1.SelectedRow.Cells[2].Text;
            DisableText();
            btn_new.Enabled = false;

            btn_update.Enabled = true;
            btn_delete.Enabled = true;
        }
        public int GetNewId()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(branch_id)from Branch_master";
            Object x = cmd.ExecuteScalar();
            if (Convert.ToString(x) == "")
                return 1;
            else
                return (Convert.ToInt32(x) + 1);
        }





            
    }
}