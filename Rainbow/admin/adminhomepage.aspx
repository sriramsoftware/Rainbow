<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhomepage.aspx.cs" Inherits="admin_adminhomepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <link rel="stylesheet" href="../css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="../css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="../css/style.css" type="text/css" media="all"/>
</head>
<body id="page5">
    <form id="form1" runat="server">
   <div id="main">
  	<!-- header -->
    <header>
      <h1><a href="Home.aspx">Rainbow Entertainment</a></h1>
    </header>

        
             <font face="Bradley Hand ITC" color="white" size="7" > Welcome To Your HomePage</font>

            
        <!-- .box -->
    <div class="box">
    	<div class="border-top">
      	<div class="border-right">
        	<div class="border-bot">
          	<div class="border-left">
            	<div class="left-top-corner">
              	<div class="right-top-corner">
                	<div class="right-bot-corner">
                  	<div class="left-bot-corner">
                    	<div class="inside">
                      	<nav>
                        <ul>
                          	<li><a href="adminhomepage.aspx" class="current">Home</a></li>
                            <li><a href="managemovies.aspx">Add Movies</a></li>
                            <li><a href="upcomingmovies.aspx">Upcoming Movie</a></li>
                            <li><a href="../changepassword.aspx">Change Password</a></li>
                            <li><a href="viewfeedback.aspx">Feedback</a></li>
                            <li class="last"><a href="../Home.aspx">LogOut</a></li>
                          </ul>
                        </nav>
                        <div class="banner">
                          <a href="#"><img src="../images/main-banner.jpg" alt=""/></a>
                        </div>
		       </div>
		      </div>
		   </div>
	        </div>
	     </div>
	   </div>
	</div>
      </div>
   </div>
</div>

    
    <!-- footer -->
    <footer>
     Rainbow Entertainment (c) 2011 |
    </footer>
  </div>
    </form>
</body>
</html>
