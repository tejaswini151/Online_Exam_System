<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course_Validation.aspx.cs" Inherits="ValidationDemo.Course_Validation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 308px;
        }
        .style2
        {
            width: 539px;
            text-align: right;
        }
    </style>
</head>
<script type="text/javascript" language="javascript">

function formValidator(){
	// Make quick references to our fields
	var name = document.getElementById("txt_name");
    var Fees = document.getElementById("txt_fees");
    var Duration = document.getElementById("txt_dur");
    var Content = document.getElementById("txt_content");
    var Address = document.getElementById("txt_add");
    var Email = document.getElementById("txt_mail");
    if(notEmpty(name,"Name Must be given") && isAlphabet(name, "Please enter only letters for your name")) {
                if(notEmpty(Fees ,"Fees Must be given") &&  isNumeric(Fees, "Please enter only digit for employee salary")) {
                if(notEmpty(Duration ,"Duration Must be given") &&  isNumeric(Duration, "Please enter only digit for employee salary")) {
                if(notEmpty(Content,"Content Must be given") && isAlphabet(Content, "Please enter only letters for your name")) {
                if (notEmpty(Address, "Address Must be given") && isAlphanumeric(Address, "Numbers and Letters Only for Address")) {
                if(notEmpty(Email ,"Email Must be given") &&  emailValidator(Email, "Please enter a valid email address"))
                {
                return true;
                }
                }
                }
                }
                }
                }
                return false;
            }
            function notEmpty(elem, helperMsg) {

                if (elem.value.length == 0) {
                    alert(helperMsg);
                    elem.focus(); // set the focus to this input
                    return false;
                }
                return true;
            }
            function isAlphabet(elem, helperMsg) {
                var alphaExp = /^[a-zA-Z ]+$/;
                if (elem.value.match(alphaExp)) {
                    return true;
                } else {
                    alert(helperMsg);
                    elem.value = "";
                    elem.focus();
                    return false;
                }
            }
            function isNumeric(elem, helperMsg) {
                var numericExpression = /^[0-9]+$/;
                if (elem.value.match(numericExpression)) {
                    return true;
                } else {
                    elem.value = "";
                    alert(helperMsg);
                    elem.focus();
                    return false;
                }
            }

            function isAlphanumeric(elem, helperMsg) {
                var alphaExp = /^[0-9a-zA-Z ]+$/;
                if (elem.value.match(alphaExp)) {
                    return true;
                } else {
                    alert(helperMsg);
                    elem.value = "";
                    elem.focus();
                    return false;
                }
            }




    </script>

<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                Course Id :</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_id" runat="server" Height="36px" Width="148px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Course Name :</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_name" runat="server" Height="36px" Width="148px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Fees :</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_fees" runat="server" Height="36px" Width="148px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Duration :</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_dur" runat="server" Height="36px" Width="148px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Contents :</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_content" runat="server" Height="36px" Width="148px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Address :</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_add" runat="server" Height="36px" Width="148px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                E-Mail :</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_mail" runat="server" Height="36px" Width="148px"></asp:TextBox>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    <p style="text-align: center">
        <asp:Button ID="btn_save" OnClientClick="return formValidator()" runat="server" Height="32px" Text="Save" 
            Width="104px" />
    </p>
    </form>
</body>
</html>
