﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="Online_Exam_System.UserLogin" %>

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
            width: 431px;
            text-align: right;
        }
    </style>
    <style type="text/css">
        .style2
        {
            width: 554px;
            text-align: right;
        }
        .style4
        {
            width: 554px;
            text-align: right;
            height: 34px;
            font-weight: bold;
            color: #000000;
        }
    </style>
</head>

      <script type="text/javascript" language="javascript">

          function formValidator() {
              // Make quick references to our fields
              var Email = document.getElementById("txt_mail");
              var Password = document.getElementById("txt_pass");

              if (notEmpty(Email, "Email Must be given") && emailValidator(Email, "Please enter a valid email address")) {
                  if (notEmpty(Password, "Password Must be given") {

                      return true;
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

          function emailValidator(elem, helperMsg) {
              var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
              if (elem.value.match(emailExp)) {
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
                    <a href="#" class="navbar-brand tm-site-name" style="color:White">Online Exam System</a>
                    
                    <!-- navbar -->
                    <nav class="navbar tm-main-nav">

                        <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        
                        <div class="collapse navbar-toggleable-sm" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item">
                                    <a href="web/index.html" class="nav-link">Home</a>
                                </li>
                                
                            </ul>                        
                        </div>
                        
                    </nav>  

                </div>                                  
            </div>            
        </div>

       
       <div class="banner">
        <section class="tm-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                       <section>

    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="table" style="text-align: center">
        <tr>
            <td class="style4" style="text-align: center">
                Email :</td>
            <td>
              
                <asp:TextBox ID="txt_mail" style="text-align: center" class="form-control-danger" runat="server"></asp:TextBox>
              </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: center">
                Password :</td>
            <td>
            
                <asp:TextBox ID="txt_pass" style="text-align: center" class="form-control-danger" runat="server" 
                    TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style2" style="text-align: center">
                </td>
            <td>
                 </td>
        </tr>
    </table>
    <p style="text-align: center">
        <asp:Button ID="btn_login" OnClientClick="return formValidator()" 
            class="btn btn-danger" style="text-align: center" runat="server" 
            onclick="btn_login_Click" Text="Login" BorderStyle="Groove"  />
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
