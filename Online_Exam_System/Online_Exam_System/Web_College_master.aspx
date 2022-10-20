<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_College_master.aspx.cs" Inherits="Online_Exam_System.Web_College_master" %>

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
        .style5
        {
            height: 71px;
        }
        .style6
        {
            color: #000000;
        }
    </style>
</head>
 <script type="text/javascript" language="javascript">

     function formValidator() {
         // Make quick references to our fields
         var name = document.getElementById("txt_name");
         var address = document.getElementById("txt_add");

         if (notEmpty(name, "Name Must be given") ) {
             if (notEmpty(address, "Address Must be given")) {
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
    
        <table class="table" style="text-align: center" >
            <tr>
                <td class="style4" style="text-align: center" >
                    <br class="style6" />
                    <span class="style6">College Id </span> </td>
                <td class="style5" style="text-align: center">
                    
                    <asp:TextBox ID="txt_id" class="form-control" style="text-align: center"  
                        runat="server" Enabled="False" ></asp:TextBox>
                   </td>
            </tr>
            <tr>
                <td class="style4" style="text-align: center">
                    <br class="style6" />
                    <span class="style6">College Name </span> </td>
                <td class="style5" style="text-align: center">
                  
                    <asp:TextBox ID="txt_name" class="form-control" style="text-align: center"  
                        runat="server" Enabled="False" ></asp:TextBox>
                   </td>
            </tr>
            <tr>
                <td class="style4" style="text-align: center">
                    <br class="style6" />
                    <span class="style6">College Address </span> </td>
                <td class="style5" style="text-align: center">
                    
                    <asp:TextBox ID="txt_add" class="form-control" style="text-align: center"  
                        runat="server" Enabled="False"></asp:TextBox>
                    </td>
            </tr>
        </table>
    
    </div>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        <asp:Button ID="btn_new" class="btn btn-info" style="text-align: center" runat="server" Text="New" onclick="btn_new_Click" />
        <asp:Button ID="btn_save" OnClientClick="return formValidator()" class="btn btn-info" style="text-align: center" runat="server" Enabled="False"
            Text="Save" onclick="btn_save_Click" />

        <asp:Button ID="btn_update" class="btn btn-info" style="text-align: center" runat="server" Enabled="False"
            Text="Update" onclick="btn_update_Click" />
        <asp:Button ID="btn_delete"  style="text-align: center" class="btn btn-info" runat="server" Enabled="False"
            Text="Delete" onclick="btn_delete_Click" />
    </p>
    <p style="text-align: center">
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
   
