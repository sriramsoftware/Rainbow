<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="customer_feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <link rel="stylesheet" href="../css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="../css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="../css/style.css" type="text/css" media="all"/>
</head>
<body id="page6">
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
                          <li><a href="userhomepage.aspx">Home</a></li>
                            <li><a href="../movies.aspx">Movies</a></li>
                            <li><a href="../changepassword.aspx">Change Password</a></li>
                            <li><a href="feedback.aspx">FeedBack</a></li>
                            <li><a href="../Home.aspx">LogOut</a></li>
                          </ul>
                        </nav>
                        <div class="banner">
                          <a href="#"><img src="../images/main-banner.jpg" alt=""/></a>
                        </div>
                        <div id="content">
                          <div class="wrapper">
                          	<div class="mainContent">
                            	<div class="row-1">
                              	<!-- .box1 -->
                              	<div class="box1">
                                	<div class="inner">
                                  	<h3>Feedback information</h3><br />
                                        <asp:Label ID="Label1" runat="server" Text="Enter Name:"></asp:Label>
&nbsp;
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <br/>
                                   
                                           
                                     
                                  &nbsp;
                                        <br />
                                        Enter Feedback:
                                        <asp:TextBox ID="TextBox2" runat="server" Height="61px" TextMode="MultiLine" 
                                            Width="179px"></asp:TextBox>
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                                   
                                           
                                     
                                  </div>
                                </div>
                              	<!-- /.box1 -->

                              </div>
                            </div>
			<div class="box2">
                              	<div class="border-top">
                                	<div class="border-right">
                                  	<div class="border-bot">
                                    	<div class="border-left">
                                      	<div class="left-top-corner">
                                        	<div class="right-top-corner">
                                          	<div class="right-bot-corner">
                                            	<div class="left-bot-corner">
                                              	
                                              	
                                                  <div class="clear"></div>
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
