<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_Student.aspx.cs" Inherits="Online_Exam_System.Web_Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Classic - Contact Page</title>
<!--
Classic Template
http://www.templatemo.com/tm-488-classic
-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="classic/css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="classic/css/templatemo-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
    <style type="text/css">
        .style4
        {
            width: 399px;
            text-align: right;
            font-weight: bold;
            height: 34px;
            color: #000000;
        }
        </style>
    <style type="text/css">
        .style2
        {
            width: 513px;
            text-align: right;
        }
    </style>
    <style type="text/css">
        .style2
        {
            height: 34px;
        }
        .style3
        {
            text-align: right;
            width: 399px;
            color: #000000;
        }
        .style4
        {
            height: 34px;
            text-align: right;
            width: 399px;
        }
        .style7
        {
            text-align: right;
            width: 399px;
            height: 43px;
            color: #000000;
        }
        .style8
        {
            height: 43px;
        }
        .style9
        {
            text-align: right;
            width: 399px;
            font-weight: bold;
        }
        .style10
        {
            text-align: right;
            width: 399px;
            font-weight: bold;
            color: #000000;
        }
        .style11
        {
            color: #000000;
        }
    </style>
</head>
   <script type="text/javascript" language="javascript">

       function formValidator() {
           // Make quick references to our fields
           var name = document.getElementById("txt_sname");
           var address = document.getElementById("txt_add");
           //var mobile = document.getElementById("txt_mob");
           var gender = document.getElementById("txt_gender");
           var fathername = document.getElementById("txt_fname");
           var Email = document.getElementById("txt_mail");
           var password = document.getElementById("txt_pass");

           if (notEmpty(name, "Name Must be given") && isAlphabet(name, "Please enter only letters for your Name")) {
               if (notEmpty(address, "Address Must be given") ) {
                  // if (notEmpty(mobile, "Mobile No Must be given") && validmobile(mobile) && isNumeric(mobile, "Please enter a valid Mobile No")) {
                   if (notEmpty(gender, "Gender Must be given") && isAlphabet(gender, "Please enter only letters for Gender")) {
                       if (notEmpty(fathername, "Father Name Must be given") && isAlphabet(fathername, "Please enter only letters for Father name")) {
                           if (notEmpty(Email, "Email Must be given") && emailValidator(Email, "Please enter a valid email address")) {
                               if (notEmpty(password, "Duration Must be given") ) {

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
    
      function emailValidator(elem, helperMsg){
	   var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	   if(elem.value.match(emailExp)){
		return true;
	   }else{
		 alert(helperMsg);
         elem.value="";
		 elem.focus();
		 return false;
       }
     }


     

          

   </script>
<body style="height: 618px">
     
     <div class="tm-header" style="background-color: #cc9900;">
            <div class="container-fluid">
                <div class="tm-header-inner">
                    <a href="#" class="navbar-brand tm-site-name" style="color:White"><b>Online Exam System</b></a>
                    
                    <!-- navbar -->
                    <nav class="navbar tm-main-nav">

                        <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        
                        <div class="collapse navbar-toggleable-sm" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item">
                                    <a href="web/index.html" class="nav-link"><b>Home</b></a>
                                </li>
                                <li class="nav-item">
                                    <a href="Dashboard.aspx" class="nav-link"><b>DashBoard</b></a>
                                </li>
                                
                            </ul>                        
                        </div>
                        
                    </nav>  

                </div>                                  
            </div>            
        </div>

       
       <div class="photoimg">
        <section class="tm-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                       <section>

    <form id="form1" runat="server">
    <table class="table" style="text-align: center">
        <tr>
            <td class="style10" style="text-align: center">
                Student Id</td>
            <td>
              
                <asp:TextBox ID="txt_sid" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
               </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: center">
                Student Name</td>
            <td class="style2" style="text-align: center">
               
                <asp:TextBox ID="txt_sname" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
          </td>
        </tr>
        <tr>
            <td class="style10" style="text-align: center">
                Address</td>
            <td>
                
                <asp:TextBox ID="txt_add" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
               <b>Mobile No.</b> </td>
            <td>
              
                <asp:TextBox ID="txt_mob" tyle="text-align: center" class="form-control" 
                    runat="server" Enabled="False" ></asp:TextBox>
              </td>
        </tr>
        <tr>
            <td class="style10" style="text-align: center">
                Gender</td>
            <td>
               
                <asp:TextBox ID="txt_gender" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style10" style="text-align: center">
                Father Name</td>
            <td>
              
                <asp:TextBox ID="txt_fname" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style9" style="text-align: center">
                <br class="style11" />
                <span class="style11">College Id</span></td>
            <td>
               
                <asp:DropDownList ID="DropDownList1" style="text-align: center" class="form-control" runat="server">
                    <asp:ListItem>Select College</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9" style="text-align: center">
                <br class="style11" />
                <span class="style11">Branch Id</span></td>
            <td>
              
                <asp:DropDownList ID="DropDownList2" style="text-align: center" class="form-control" runat="server">
                    <asp:ListItem>Select Branch</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style10" style="text-align: center">
                E-Mail</td>
            <td>
      
                <asp:TextBox ID="txt_mail" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
             </td>
        </tr>
        <tr>
            <td class="style10" style="text-align: center">
                DOB</td>
            <td>
              
                <asp:Calendar ID="Calendar1" style="text-align: center" runat="server">
                </asp:Calendar>
                </td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                <strong>Password</strong></td>
            <td class="style8" style="text-align: center">
                <asp:TextBox ID="txt_pass" style="text-align: center" class="form-control" 
                    runat="server" Enabled="False" TextMode="Password"></asp:TextBox>
               </td>
        </tr>
        </table>
    <div style=>
    
        
        <br />
        <p style="text-align: center">
        <asp:Button ID="btn_new"  class="btn btn-info" style="text-align: center" runat="server" Text="New" 
             onclick="btn_new_Click" />

        <asp:Button ID="btn_save" OnClientClick="return formValidator()"  class="btn btn-info" style="text-align: center" runat="server" Enabled="False" 
            Text="Save" onclick="btn_save_Click" />

        <asp:Button ID="btn_update"  class="btn btn-info" style="text-align: center" runat="server" Enabled="False"
            Text="Update" onclick="btn_update_Click" />

        <asp:Button ID="btn_delete"  class="btn btn-info" style="text-align: center" runat="server" Enabled="False" 
            Text="Delete" onclick="btn_delete_Click" />
    </p>
        <p style="text-align: center">
            &nbsp;</p>
    </div>
    <asp:GridView ID="GridView1" class="table" runat="server" AutoGenerateSelectButton="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Online_ExamdbConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:Online_ExamdbConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [stud_branch_id] FROM [Student]"></asp:SqlDataSource>
    </form>

    </section>
      </div>

     </div>

        <!-- load JS files -->
        <script src="classic/js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h --> 
        <script src="classic/js/bootstrap.min.js"></script>                 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->

</body>
</html>
