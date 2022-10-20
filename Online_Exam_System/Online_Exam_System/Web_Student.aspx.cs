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
    public partial class Web_Student : System.Web.UI.Page
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
            if (!IsPostBack)
              SetDropDown2();
        }
        public void ClearText()
        {
            txt_sid.Text = "";
            txt_sname.Text = "";
            txt_add.Text = "";
            txt_mob.Text = "";
            txt_gender.Text = "";
            txt_fname.Text = "";
            
      
         
            txt_mail.Text = "";
          
            txt_pass.Text = "";
           
        }
        public void EnableText()
        {
            txt_sid.Enabled = true;
            txt_sname.Enabled = true;
            txt_add.Enabled = true;
            txt_mob.Enabled = true;
            txt_gender.Enabled = true;
            txt_fname.Enabled = true;
          
            DropDownList1.Enabled = true;
            DropDownList2.Enabled = true;
       
            txt_mail.Enabled = true;
          
            txt_pass.Enabled = true;
       
        }
        public void DisableText()
        {
            txt_sid.Enabled = false;
            txt_sname.Enabled = false;
            txt_add.Enabled = false;
            txt_mob.Enabled = false;
            txt_gender.Enabled = false;
            txt_fname.Enabled = false;
       
            DropDownList1.Enabled = false;
            DropDownList2.Enabled = false;
      
            txt_mail.Enabled = false;
           
            txt_pass.Enabled = false;
  
        }
        public void SetGrid()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select * from Student";
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }


        public void SetDropDown1()
        {
            cmd = new SqlCommand("select * from College_master", cn);
            dr = cmd.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.DataValueField = "coll_id";
            DropDownList1.DataTextField = "coll_nm";
            DropDownList1.DataBind();
            dr.Close();
        }
        public void SetDropDown2()
        {
            cmd = new SqlCommand("select * from Branch_master", cn);
            dr = cmd.ExecuteReader();
            DropDownList2.DataSource = dr;
            DropDownList2.DataValueField = "Branch_id";
            DropDownList2.DataTextField = "Branch_nm";
            DropDownList2.DataBind();
            dr.Close();
        }


        public int GetNewId()
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = "select max(stud_id)from Student";
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
                cmd.CommandText = "insert into Student values(" + txt_sid.Text + ",'" + txt_sname.Text + "','"+txt_add.Text+"','"+txt_mob.Text+"','"+txt_gender.Text+"','"+txt_fname.Text+"',"+ DropDownList1.SelectedValue +","+DropDownList2.SelectedValue +",'"+txt_mail.Text+"','"+ Calendar1.SelectedDate.ToString()+"','"+txt_pass.Text+"')";
                cmd.ExecuteNonQuery();
                MessageBox.Show("Record save Successfully");

            }
            if (flag == 2)
            {
                cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = "update Student set stud_nm='" + txt_sname.Text + "', stud_address='" + txt_add.Text + "', stud_mobile='" + txt_mob.Text + "', stud_gender='" + txt_gender.Text + "', stud_father_nm='" + txt_fname.Text + "', stud_coll_id=" + DropDownList1.SelectedValue + ", stud_branch_id=" + DropDownList2.SelectedValue + ", stud_email='" + txt_mail.Text + "', stud_DOB='" + Calendar1.SelectedDate.ToString() + "', stud_password='" + txt_pass.Text + "' where stud_id=" + txt_sid.Text;
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
            cmd.CommandText = "delete from Student where stud_id=" + txt_sid.Text;
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
            txt_sid.Text = Convert.ToString(GetNewId());
            GetNewId();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_sid.Text = GridView1.SelectedRow.Cells[1].Text;
            txt_sname.Text = GridView1.SelectedRow.Cells[2].Text;
            txt_add.Text = GridView1.SelectedRow.Cells[3].Text;
            txt_mob.Text = GridView1.SelectedRow.Cells[4].Text;
            txt_gender.Text = GridView1.SelectedRow.Cells[5].Text;
            txt_fname.Text = GridView1.SelectedRow.Cells[6].Text;
            
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[7].Text;
            DropDownList2.SelectedValue = GridView1.SelectedRow.Cells[8].Text;
        
            txt_mail.Text = GridView1.SelectedRow.Cells[9].Text;
            
            txt_pass.Text = GridView1.SelectedRow.Cells[11].Text;
            
            DisableText();
            btn_new.Enabled = false;
            btn_update.Enabled = true;
            btn_delete.Enabled = true;
        }

       
      





    }
}