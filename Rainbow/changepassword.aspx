<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title></title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
  
</head>

<body id="page7">
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
                             <li class="last"><a href="Home.aspx">LogOut</a></li>
                          </ul>
                        </nav>
                                 
                            <br/><h3>Change Password</h3><br/>
                              	 
                                  <center><br />
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Old Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" 
                                          TextMode="Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br /> <br /> Enter New Password: &nbsp;&nbsp;<asp:TextBox ID="TextBox2" 
                                          runat="server" TextMode="Password"></asp:TextBox>
                                    
                                    <br /><br />
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      Confirm Password:   &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" 
                                          TextMode="Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                          ErrorMessage="Password Does Not Match" ControlToCompare="TextBox2" 
                                          ControlToValidate="TextBox3"></asp:CompareValidator>
                                      <br /><br />

                                      <asp:Button ID="Button1" runat="server" Text="Change Password" 
                                          BackColor="#6699FF" Font-Bold="True" Font-Names="Comic Sans MS" 
                                          Font-Size="Medium" ForeColor="#FFFFCC" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                                      <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="#6699FF" 
                                          Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" 
                                          ForeColor="#FFFFCC" onclick="Button2_Click" />  </center>	<br/><br/>
                                       
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
      Rainbow Entertainment (c) 2011
    </footer>
  </div>
    </form>
</body>
</html>







      
