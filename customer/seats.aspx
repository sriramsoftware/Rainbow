<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seats.aspx.cs" Inherits="customer_seats" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <link rel="stylesheet" href="../css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="../css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="../css/style.css" type="text/css" media="all"/>
</head>
<body id="page5">
    <form id="form1" runat="server">
    <div id="main" >
  	<!-- header -->
    <header>
      <h1><a href="../Home.aspx">Rainbow Entertainment</a></h1>
    </header>
          
              
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
                    	<div class="inside" style="color: #FFFF00; font-size: medium">
                      	<nav>
                        	<ul>
                          	<li><a href="userhomepage.aspx">Home</a></li>
                            <li><a href="../movies.aspx">Movies</a></li>
                            <li><a href="../changepassword.aspx">Change Password</a></li>
                            <li><a href="feedback.aspx">FeedBack</a></li>
                            <li><a href="../Home.aspx">LogOut</a></li>
                               </ul>
                        </nav>
                        <div class="banner">
                          <a href="#"><img src="../images/main-banner.jpg" alt=""/></a>
                            <br />
                            <br />
                        </div>

                              	<!-- /.box1 -->
                              <br />
                            <br />
                            Choose Seats Below:<br />
                            <br />
                            <asp:Panel ID="Panel1" runat="server" Height="132px" BorderColor="#FF9900" 
                                BorderStyle="Double">
                            </asp:Panel>
                            <br />
                            <br />
                            <br />
                            
                            <asp:Button ID="Button1" runat="server" Text="Done" onclick="Button1_Click" 
                                Width="107px" />
                            
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
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
         
          <br/>
    <!-- /.box -->
    <!-- footer -->
    <footer >
     Rainbow Entertainment (c) 2011
    </footer>
  </div>
    </form>
</body>
</html>
