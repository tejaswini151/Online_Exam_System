<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Online_Exam_System.Dashboard" %>

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
        .style1
        {
            width: 100%;
            height: 453px;
        }
        .style3
        {
            color: #000000;
            font-weight: bold;
            text-align: center;
        }
        .style4
        {
            color: #000000;
            text-align: center;
        }
        .style5
        {
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
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
                                    <a href="web/index.html" class="nav-link"><h3>Home</h3></a>
                                </li>
                                
                            </ul>                        
                        </div>
                        
                    </nav>  

                </div>                                  
            </div>            
        </div>

       
        <div class="image">
        <section class="tm-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                       <section>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    Manage</td>
                </b>
                <td class="style3">
                    List</td>
                <b>
                <td class="style3">
                    Dynamic</td>
                <td class="style4">
                    <b>Datewise</b></b></td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink3" runat="server" 
                        NavigateUrl="~/Web_College_master.aspx">College Master</asp:HyperLink>
                </td>
                </b>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink7" runat="server" 
                        NavigateUrl="~/Reports/frm_College_MasterList.aspx">College Master List</asp:HyperLink>
                </td>
                <b>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink13" runat="server" 
                        NavigateUrl="~/Reports/frm_CourseWiseQuestion.aspx">Course Wise Question</asp:HyperLink>
                </td>
                <td class="text-xs-center">
                    <b>
                    <asp:HyperLink ID="HyperLink19" runat="server" 
                        NavigateUrl="~/Reports/frm_StudentDateWise.aspx">Student Datewise</asp:HyperLink>
                    </b></b>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink4" runat="server" 
                        NavigateUrl="~/Web_Branch_master.aspx">Branch Master</asp:HyperLink>
                </td>
                </b>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink8" runat="server" 
                        NavigateUrl="~/Reports/frm_Branch_MasterList.aspx">Branch Master List</asp:HyperLink>
                </td>
                <b>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink14" runat="server" 
                        NavigateUrl="~/Reports/frm_StudentWiseResult.aspx">Student Wise Result</asp:HyperLink>
                </td>
                <td class="text-xs-center">
                    <b>
                    <asp:HyperLink ID="HyperLink20" runat="server" 
                        NavigateUrl="~/Reports/frm_ResultDateWise.aspx">Result Datewise</asp:HyperLink>
                    </b></b>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Web_Student.aspx">Student</asp:HyperLink>
                </td>
                </b>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink9" runat="server" 
                        NavigateUrl="~/Reports/frm_StudentList.aspx">Student List</asp:HyperLink>
                </td>
                            </tr>
            <tr>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Web_Course.aspx">Courses</asp:HyperLink>
                </td>
                </b>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink10" runat="server" 
                        NavigateUrl="~/Reports/frm_CoursesList.aspx">Courses List</asp:HyperLink>
                </td>
                
            </tr>
            <tr>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink25" runat="server" 
                        NavigateUrl="~/Web_Question_master.aspx">Question Master</asp:HyperLink>
                </td>
                </b>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink11" runat="server" 
                        NavigateUrl="~/Reports/frm_Question_MasterList.aspx">Question Master List</asp:HyperLink>
                </td>
                
            </tr>
            <tr>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="~/Web_Result.aspx">Result</asp:HyperLink>
                </td>
                </b>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink12" runat="server" 
                        NavigateUrl="~/Reports/frm_ResultList.aspx">Result List</asp:HyperLink>
                </td>
                
            </tr>
            
                
        </table>
    
    </div>
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
 