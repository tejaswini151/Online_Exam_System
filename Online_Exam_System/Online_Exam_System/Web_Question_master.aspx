<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_Question_master.aspx.cs" Inherits="Online_Exam_System.Web_Question_master" %>

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
            width: 531px;
            text-align: center;
            font-weight: bold;
            height: 71px;
        }
        </style>
    <style type="text/css">
        .style2
        {
            width: 445px;
            text-align: right;
            height: 34px;
            color: #000000;
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
            width: 445px;
            height: 49px;
            font-weight: bold;
        }
        .style4
        {
            height: 34px;
            text-align: right;
            width: 399px;
        }
        </style>
    <style type="text/css">
        .style2
        {
            width: 431px;
            text-align: right;
        }
    </style>

    <style type="text/css">
        .style2
        {
            width: 445px;
            text-align: right;
        }
        .style3
        {
            width: 445px;
            text-align: right;
            height: 49px;
        }
        .style4
        {
            height: 49px;
        }
        .style6
        {
            height: 34px;
        }
    </style>
</head>
  <script type="text/javascript" language="javascript">

      function formValidator() {
          // Make quick references to our fields
          var QueNo = document.getElementById("txt_qno");
          var QueName = document.getElementById("txt_name");
          var Option1 = document.getElementById("txt_q1");
         var Option2 = document.getElementById("txt_q2");
         var Option3 = document.getElementById("txt_q3");
         var Option4 = document.getElementById("txt_q4");
         var Answer = document.getElementById("txt_ans");

          if (notEmpty(QueNo, "Question Number Must be given") && isNumeric(QueNo, "Please enter only digit for Question Number")) {
              if (notEmpty(QueName, "Question Name Must be given") ) {
                 if (notEmpty(Option1, "option 1 Must be given") ) {
                      if (notEmpty(Option2, "Option 2 Must be given") ) {
                         if (notEmpty(Option3, "Option 3 Must be given") ) {
                             if (notEmpty(Option4, "Option 4 Must be given")) {
                                 if (notEmpty(Answer, "Answer Must be given") && isAlphabet(Answer, "Please enter only letters for your Answer")) {

                                      return true;
                                  }
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
    <div>
    
        <table class="table" style="text-align: center">
            <tr>
                <td class="style2" style="text-align: center; font-weight: 700;">
                    Question Id </td>
                <td>
                  
                    <asp:TextBox ID="txt_qid" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: center; font-weight: 700;">
                    Question No. </td>
                <td>
                 
                    <asp:TextBox ID="txt_qno" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                   </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: center; font-weight: 700;">
                    Course Id </td>
                <td>
                  
                    <asp:DropDownList ID="DropDownList1" style="text-align: center" class="form-control" runat="server" Enabled="False">
                        <asp:ListItem>Select Course</asp:ListItem>
                    </asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: center; font-weight: 700;">
                    Question Name </td>
                <td class="style6">
                
                    <asp:TextBox ID="txt_name" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                   </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: center; font-weight: 700;">
                    Option 1 </td>
                <td>
                   
                    <asp:TextBox ID="txt_q1" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                   </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: center">
                    <strong>Option 2 </strong> </td>
                <td>
                    
                    <asp:TextBox ID="txt_q2" style="text-align: center" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                 </td>
            </tr>
            <tr>
                <td class="style3" style="text-align: center; color: #000000;">
                   Option 3 </td>

                <td class="style4" style="text-align:center">
                   
                    <asp:TextBox ID="txt_q3" style="text-align: center" class="form-control" runat="server" Enabled="False" ></asp:TextBox>
                  </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: center; font-weight: 700;">
                    Option 4 </td>
                <td>
                   
                    <asp:TextBox ID="txt_q4" style="text-align: center" class="form-control" runat="server" Enabled="False" ></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: center; font-weight: 700;">
                    Answer </td>
                <td>
                   
                    <asp:TextBox ID="txt_ans" style="text-align: center" class="form-control" runat="server" Enabled="False" ></asp:TextBox>
                    </td>
            </tr>
        </table>
    
    </div>
    <p style="text-align: center">

        </p>
    <p style="text-align: center">

        <asp:Button ID="btn_new"  class="btn btn-info" style="text-align: center" runat="server" Text="New" onclick="btn_new_Click" />

        <asp:Button ID="btn_save" OnClientClick="return formValidator()"  class="btn btn-info" style="text-align: center" runat="server" Enabled="False" onclick="btn_save_Click" Text="Save" />

        <asp:Button ID="btn_update"  class="btn btn-info" style="text-align: center" runat="server" Enabled="False" Text="Update" onclick="btn_update_Click" />

        <asp:Button ID="btn_delete"  class="btn btn-info" style="text-align: center" runat="server" Enabled="False" Text="Delete" onclick="btn_delete_Click" />
    </p>
    <p style="text-align: center">

        &nbsp;</p>
    <p>
     <asp:GridView ID="GridView1" class="table" runat="server" AutoGenerateSelectButton="True" 
            BorderStyle="Ridge" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
    </p>
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
