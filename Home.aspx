<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
      <meta charset="utf-8"/>
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/> 
  <style type="text/css">
  .label
  {
       float:right;
       margin-top:15px;
       margin-right:5px;
      }
  </style>
  </head>

<body id="page1">
<form id="form1" runat="server">
  <div id="main">
  	<!-- header -->
    <header>
      <h1><a href="Home.aspx">Rainbow Entertainment</a></h1>
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
                          	<li><a href="Home.aspx" class="current">Home</a></li>
                            <li><a href="movies.aspx">Movies Now</a></li>
                            <li><a href="upcomemovie.aspx">Upcoming Movie</a></li>
                            <li class="last"><a href="contact.aspx">Contact Us</a></li>
                          </ul>
                        
                        <asp:Label ID="Label1" ForeColor="White" CssClass="label" Font-Size="14px" runat="server" Text="">
                        </asp:Label>
                        
                        </nav>
                       
                        <div class="banner">
                          <a href="#"><img src="images/main-banner.jpg" alt=""/></a>
                        </div>
                        <div id="content">
                          <div class="wrapper">
                          	<div class="mainContent">
                            	<div class="row-1 outdent">
                              	<!-- .box1 -->
                              	<div class="box1">
                 
                                	<div class="inner">
                                  	<h2>Welcome to Rainbow Entertainment !!!<span></span></h2>
                                   
                                    <div class="wrapper">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                </asp:ScriptManager>
                                                <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/movies.xml" 
                                                    Height="200px" Width="520px" />
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                            </Triggers>
                                        </asp:UpdatePanel> 
                                     
                                        <asp:Timer ID="Timer1" runat="server" Interval="5000">
                                        </asp:Timer>
                                    </div>
                                  </div>
                                </div>
                              	<!-- /.box1 -->
                              </div>
                            	<div class="row-2">
                              	<!-- .box1 -->
                              	<div class="box1">
                                	<div class="inner">
                                  	<h2>Featured serviCes</h2>
                                    <h5>Rainbow Entertainment provides a various set of features that improve their customer-management relationship.
                                    Few of them are listed below for the users to have look and feel of some in this website.
                                    </h5>
                                    <div class="wrapper">
                                    	<ul class="list1 col-1">
                                      	<li><a href="#">Booking Movie while sitting at home</a></li>
                                        <li><a href="#">Online Payment</a></li> 
                                      </ul>
                                    	<ul class="list1 col-2">
                                      	<li><a href="#">View Upcoming movies and Pre-Book</a></li>
                                        <li><a href="#">Selection of seats based on user preference</a></li>
                                      </ul>
                                    </div>
                                    
                                  </div>
                                </div>
                              	<!-- /.box1 -->
                              </div>
                            </div>
                          	<aside>
                            	<!-- .box2 -->
                            	<div class="box2">
                              	<div class="border-top">
                                	<div class="border-right">
                                  	<div class="border-bot">
                                    	<div class="border-left">
                                      	<div class="left-top-corner">
                                        	<div class="right-top-corner">
                                          	<div class="right-bot-corner">
                                            	<div class="left-bot-corner">
                                              	<h3>Login Here</h3>
                                              	<div class="inner">
                                                	
                                   
                                      <fieldset>
                                        <div class="col-1">
                                        <table id="logtab" width="100%">
                                        <tr><td>User Name</td><td>:</td>
                                          <td> <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter Username"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr> <td>Password</td><td>:</td>
                                            <td>
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="Enter Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                             </td>
                                            </tr>
                                            </table>
                                            </div>
					<div class="col-2">
                                          <div class="alignleft">
					  
					                     <br />
                                              <asp:ImageButton ID="ImageButton1" runat="server" Height="34px" 
                                                  ImageUrl="~/images/log.jpg" onclick="ImageButton1_Click"></asp:ImageButton>
                                                  
                                                  </div>
                                                  <br />
                                                 <a href="Forgotpassword.aspx">Forgot Password</a> | <a href="registeruser.aspx">Sign Up</a>
                                        </div>
					</fieldset>&nbsp;
                                                  </div>
                                                  <div class="clear">
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

                            	<!-- /.box2 -->
                              <!-- .box2 -->
                            	<!-- /.box2 -->
                              <!-- .box2 -->
                            	<div class="box2 last">
                              	<div class="border-top">
                                	<div class="border-right">
                                  	<div class="border-bot">
                                    	<div class="border-left">
                                      	<div class="left-top-corner">
                                        	<div class="right-top-corner">
                                          	<div class="right-bot-corner">
                                            	<div class="left-bot-corner">
                                              	<div class="inner">
                                                	<h4>What’s New?</h4>
                                                  <ul class="list2">
                                                  	<li><a href="#">Disney's A Christmas Carol</a>
                                                    <p>"Disney's A Christmas Carol," a multi-sensory thrill ride re-envisioned by Academy Award®-winning filmmaker Robert Zemeckis, captures...</p>
                                                    </li>
                                                    <li><a href="#">Where the Wild Things Are</a>
                                                    <p>Innovative director Spike Jonze collaborates with celebrated author Maurice Sendak to bring one of the most beloved books of all time to the big screen in "Where the Wild Things Are,"...</p>
                                                    </li>
                                                    <li><a href="#">The Box</a>
                                                    <p>Norma and Arthur Lewis are a suburban couple with a young child who receive an anonymous gift bearing fatal and irrevocable consequences.</p>
                                                    </li>
                                                  </ul>
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
                            	<!-- /.box2 -->
                            </aside>
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
      Rainbow Ltd.(c) 2011 | <a href="policy.aspx">Privacy policy</a>
    </footer>
  </div>
  </form>
  </body>
</html>
