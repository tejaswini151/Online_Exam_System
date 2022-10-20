<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrandDemo.aspx.cs" Inherits="ValidationDemo.BrandDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 104px;
        }
        .style2
        {
            width: 447px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                Brand Id</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_id" runat="server" Height="35px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Brand Name
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_name" runat="server" Height="35px"></asp:TextBox>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    <p style="text-align: center">
        <asp:Button ID="btn_new" runat="server" Height="30px" Text="New" Width="90px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_save" runat="server" Height="31px" Text="Save" 
            Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_update" runat="server" Height="30px" Text="Update" 
            Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_delete" runat="server" Height="28px" Text="Delete" 
            Width="83px" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True">
    </asp:GridView>
    </form>
</body>
</html>
