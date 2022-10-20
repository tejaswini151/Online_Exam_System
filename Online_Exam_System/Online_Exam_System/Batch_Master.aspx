<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Batch_Master.aspx.cs" Inherits="Online_Exam_System.Batch_Master" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 242px;
        }
        .style2
        {
            width: 523px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    Batch Id</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_bid" runat="server" Enabled="False" Height="37px" 
                        Width="147px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Course Id</td>
                <td>
                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="drt_course" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Student Id</td>
                <td>
                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="drt_stud" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Start Date</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_date" runat="server" Enabled="False" Height="37px" 
                        Width="147px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Batch Time</td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_time" runat="server" Enabled="False" Height="37px" 
                        Width="147px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_new" runat="server" Height="35px" onclick="btn_new_Click" 
            Text="New" Width="107px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_save" runat="server" Enabled="False" Height="35px" 
            onclick="btn_save_Click" Text="Save" Width="107px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_update" runat="server" Enabled="False" Height="35px" 
            onclick="btn_update_Click" Text="Update" Width="107px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_delete" runat="server" Enabled="False" Height="35px" 
            onclick="btn_delete_Click" Text="Delete" Width="107px" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    </form>
</body>
</html>
