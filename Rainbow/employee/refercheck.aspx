<%@ Page Language="C#" AutoEventWireup="true" CodeFile="refercheck.aspx.cs" Inherits="employee_refercheck" %>

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
      <div id="main">
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
                    	<div class="inside">
                      	<nav>
                        	<ul>
                            <li><a href="emphomepage.aspx">Home</a></li>
			   
                            <li><a href="bookingstatus.aspx">Booking Status</a></li>
                            <li><a href="../changepassword.aspx">Change Password</a></li>
                            <li class="last"><a href="../Home.aspx">LogOut</a></li>
                          </ul>
                        </nav>
                        <div class="banner">
                          <a href="#"><img src="../images/main-banner.jpg" alt=""/></a>
                        </div>
                        <div id="content">
                          <div class="wrapper">
                          	<aside>
                          	  <div class="box1">
                              	<div class="inner">
                                	<h3>Reference Check</h3><br/> <br/>


                               
                                      <fieldset>
                                        <div class="col-1">
                                          <label>Reference Number:<br />
                                            <input type="text" value="" id="refnum" runat="server"/>&nbsp;
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" Text="Check Out" 
                                                onclick="Button1_Click" />
                                          </label>
                                         </div>
					<div class="col-2">
                    <div class="aligncenter">
                                      </div></div>
					</fieldset>
				


                                </div>
                              </div>
                          	</aside>
                          	<div class="mainContent left">
                            	<div class="row-1">
                              	<!-- .box1 -->
                              	<div class="box1">
                                	<div class="inner">
                                  	<h3>Ticket Details</h3><br /><br />

                                    <form action="" id="">
                                      <fieldset>
                                        <div class="col-1">
                                          <h5>User Name:&nbsp;&nbsp;&nbsp;<%Response.Write(Session["id"]); %><br /></h5>
                                          
					  <h5>Movie:&nbsp;&nbsp;&nbsp;<%Response.Write(mov); %><br /></h5>
                                          <h5>Date:&nbsp;&nbsp;&nbsp;<%Response.Write(date); %><br /></h5>
                                          <h5>Show Time :&nbsp;&nbsp;&nbsp;<%Response.Write(time); %><br /></h5>
                                          <h5>No of Seats:&nbsp;&nbsp;&nbsp;<%Response.Write(seat); %><br /></h5>
                                            <h5>Book ID:&nbsp;&nbsp;&nbsp;<%Response.Write(bid); %><br /></h5>
                                          <h5>Total Ticket Cost:&nbsp;&nbsp;&nbsp;<%Response.Write(cost); %><br /></h5>
                                          </div>
                                        <div class="col-2">
					   <div class="alignleft">
                                            
                                          </div>
                                        </div>
                                      </fieldset>
                                    </form>
                                  </div>
                                </div>

                                  </div>
                                </div>
                              	<!-- /.box1 -->
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
        </div>
      </div>
    
    <!-- /.box -->
    <!-- footer -->
    <footer>
     Rainbow Entertainment (c) 2011 |
    </footer>
  
    </form>
</body>
</html>
