<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booktickets.aspx.cs" EnableViewState="true" Inherits="customer_booktickets" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
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
                          	<li><a href="userhomepage.aspx">Home</a></li>
                            <li><a href="../movies.aspx">Movies</a></li>
                           <li><a href="feedback.aspx">FeedBack</a></li>
                           <li><a href="../changepassword.aspx">Change Password</a></li>
                           <li><a href="../Home.aspx" class="current">Log Out</a></li>
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
                                	<h3>Book Ticket</h3><br/> <br/>


                                        
                                      <fieldset>
                                        <div class="col-1">
                                            <h6>Enter Date(dd/mm/yyyy):<br />
                                                <asp:DropDownList ID="DropDownList3" runat="server" Width="50px" 
                                                    oninit="DropDownList3_Init"  ></asp:DropDownList>
                                                <asp:DropDownList ID="DropDownList4" runat="server" 
                                                    Width="50px" onselectedindexchanged="DropDownList4_SelectedIndexChanged" 
                                                    oninit="DropDownList4_Init">
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                    <asp:ListItem>6</asp:ListItem>
                                                    <asp:ListItem>7</asp:ListItem>
                                                    <asp:ListItem>8</asp:ListItem>
                                                    <asp:ListItem>9</asp:ListItem>
                                                    <asp:ListItem>10</asp:ListItem>
                                                    <asp:ListItem>11</asp:ListItem>
                                                    <asp:ListItem>12</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="DropDownList5" 
                                                    runat="server" Width="55px">
                                                    <asp:ListItem>2011</asp:ListItem>
                                                    <asp:ListItem>2012</asp:ListItem>
                                                    <asp:ListItem>2013</asp:ListItem>
                                                    <asp:ListItem>2014</asp:ListItem>
                                                    <asp:ListItem>2015</asp:ListItem>
                                                </asp:DropDownList> 
                                                    </h6>
					</div>
				                          <div class="col-2">
                                        
					<div class="col-1">
                                        <h6> &nbsp;</h6>
                                        <h6> Choose Theater: 
					</h6>
                                        </div>
                                        <br />
					<div class="col-2">
				        <div class="left">
					<asp:DropDownList ID="DropDownList1" runat="server" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                AutoPostBack="True">
                        <asp:ListItem>Sathyam</asp:ListItem>
                        <asp:ListItem>Inox</asp:ListItem>
                        <asp:ListItem>PVR</asp:ListItem>
                        <asp:ListItem>Devi Cineplex</asp:ListItem>
                        <asp:ListItem>Mayajal</asp:ListItem>
					                   
				</asp:DropDownList>
				        </div>
                        </div>
                                        </div>
					<div class="col-2">
				        <div class="left">
					        <br />
					    </div>
                                        <div class="col-1">
                                         <h6> Choose Movie:</h6>
                                        </div>
					<div class="col-2">
				        <div class="left">
					<asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList>
				            <br />
				      </div>
                     
                                     
                                        <div class="col-1">
                                         <h6> &nbsp;</h6>
                                            <h6> Choose Time:</h6>
                                        </div>
                                        
				
					<div class="col-2">
				        
					    <br />
				        
					<select name="time" runat="server" id="time1">
					  <option >9.30 AM</option>
					  <option >12.30 PM</option>
					  <option >3.30 PM</option>
					  <option >6.30 PM</option>
					  
					</select>
				        <br />
				        </div>
                                          <h6>&nbsp;</h6>
                        <h6>Number of Seats :
					  </h6>
                                            <asp:TextBox ID="TextBox1" runat="server" 
                            AutoPostBack="True"></asp:TextBox>
                                        <br />
                        <br />
                                        <br />

                                            <asp:Button ID="book" runat="server" Text="Book Seats" onclick="book_Click"></asp:Button>
					  </div>
                                        
					</fieldset>
			

                                </div>
                              </div>
                          	</aside>
                          	<div class="mainContent left">
                            	<div class="row-1">
                              	<!-- .box1 -->
                              	<div class="box1">
                                	<div class="inner">
                                  	<h3>Booking Information</h3><br /><br />

                                      <fieldset>
                                          
                                        <div class="col-1">
                        
					                      <h5>Movie:&nbsp;&nbsp;&nbsp;<%Response.Write(mname ); %><br /></h5>
                                          <h5>Date:&nbsp;&nbsp;&nbsp;<%Response.Write(date); %><br /></h5>
                                           <h5>Time:&nbsp;&nbsp;&nbsp;<%Response.Write(time); %><br /></h5>
                                          <h5>No of Seats:&nbsp;&nbsp;&nbsp;<%Response.Write(seats); %><br /></h5>
                                          <h5>Seats:&nbsp;&nbsp;&nbsp;<%Response.Write("Row "+row+" ->");
                                                                                   foreach (string s in seatnum) { Response.Write(s + " "); }       %><br /></h5>
                                          <h5>Total Ticket Cost:&nbsp;&nbsp;&nbsp;<%Response.Write(cost); %><br /></h5>
                                          <h5>Book Id Number:&nbsp;&nbsp;&nbsp;<%Response.Write(bkid); %><br /></h5>
                                          <h5>Reference Number:&nbsp;&nbsp;&nbsp;<%Response.Write(refnum); %><br /></h5>
                                           
                                    
                                        </div>
                                        <div class="col-2">
					 <div class="alignright">

                                          </div>
                                        </div>
                                      </fieldset>
                                    
                                  </div>
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

    <!-- footer -->
    <footer>
     Rainbow Entertainment (c) 2011 | <a href="../policy.aspx">Privacy policy</a>
    </footer>
  
    </form>
</body>
</html>
