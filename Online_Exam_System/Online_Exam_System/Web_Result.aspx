<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_Result.aspx.cs" Inherits="Online_Exam_System.Web_Result" %>

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
        .style3
        {
            width: 431px;
            text-align: right;
            height: 34px;
            color: #000000;
        }
    </style>
</head>
  <script type="text/javascript" language="javascript">

      function formValidator() {
          // Make quick references to our fields


          var RightAns = document.getElementById("txt_rightans");
          var WrongAns = document.getElementById("txt_wrongans");
          var Marks = document.getElementById("txt_marks");
          var Grade = document.getElementById("txt_grade");

          if (notEmpty(RightAns, "Number Of Right Answers Must be given") && isNumeric(RightAns, "Please enter only digit for Number Of Right Answers")) {
              if (notEmpty(WrongAns, "Number Of Wrong Answers Must be given") && isNumeric(WrongAns, "Please enter only digit for Question Number Of Wrong Answers")) {
                  if (notEmpty(Marks, "Marks Must be given") && isNumeric(Marks, "Please enter only digit for marks")) {
                      if (notEmpty(Grade, "Grade Must be given") && isAlphabet(Grade, "Please enter only letters for your Grade")) {
                          return true;
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

           </script>

<body>

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
            <td class="style3" style="text-align: center; font-weight: 700;">
                Result Id</td>
            <td>
             
                <asp:TextBox ID="txt_rid" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center; font-weight: 700;">
                Result Date</td>
            <td>
             
                <asp:Calendar ID="Calendar1" style="text-align: center" runat="server" ></asp:Calendar>
              </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center; font-weight: 700;">
                Student Id</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="drp_sid" style="text-align: center" class="form-control" runat="server" Enabled="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center; font-weight: 700;">
                No Of Right Answers</td>
            <td>
               
                <asp:TextBox ID="txt_rightans" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
              </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
                <strong>No Of Wrong Answers</strong></td>
            <td>
              
                <asp:TextBox ID="txt_wrongans" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
             </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
                <strong>Marks</strong></td>
            <td>
           
                <asp:TextBox ID="txt_marks" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
              </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
                <strong>Grade</strong></td>
            <td>
                
                <asp:TextBox ID="txt_grade" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
              </td>
        </tr>
    </table>
    <div>
    
    </div>
    <p style="text-align: center">

        <asp:Button ID="btn_new" class="btn btn-info" style="text-align: center" runat="server" onclick="btn_new_Click" Text="New"/>

        <asp:Button ID="btn_save" OnClientClick="return formValidator()" class="btn btn-info" style="text-align: center" runat="server" Enabled="False" onclick="btn_save_Click" Text="Save"/>

        <asp:Button ID="btn_update" class="btn btn-info" style="text-align: center" runat="server" Enabled="False" onclick="btn_update_Click" Text="Update" />

        <asp:Button ID="btn_delete" class="btn btn-info" style="text-align: center" runat="server" Enabled="False" onclick="btn_delete_Click" Text="Delete"  />
    </p>
    <asp:GridView ID="GridView1" class="table" runat="server" AutoGenerateSelectButton="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
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

