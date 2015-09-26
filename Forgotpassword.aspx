<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotpassword.aspx.cs" Inherits="Forgotpassword" %>

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
                             <li class="last"><a href="Home.aspx">Home</a></li>
                             <li class="last"><a href="movies.aspx">Movies Now</a></li>
                             <li class="last"><a href="upcomemovie.aspx">Upcome Movies</a></li>
                          </ul>
                        </nav>
                                 
                            <br/><h3>Forgot Password</h3>
                            <br/>
                                     <div id="forgot" style="margin-left:20px">
                                     <table id="forgottab"> 
                                     <tr><td>
                                      <font style="font-size:16px" color="silver">Enter Mail-Id please :</font>
                                      </td>
                                      <td> &nbsp;&nbsp;&nbsp;<asp:TextBox ID="email" Font-Size="14px" runat="server" Width="150px"></asp:TextBox><br />
                                       &nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter mail-id" ControlToValidate="email" SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                              ErrorMessage="Email-Id format wrong" ForeColor="Red" SetFocusOnError="true" 
                                              ControlToValidate="email" Display="Dynamic" 
                                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </td>
                                        </tr>
                            </table>      
                              <br />   
                                         <asp:ImageButton ID="submit" OnClick="submit_Click" runat="server" ImageUrl="images/submit2.jpg" /> 
                            
                            </div>
                            <br /><br />
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







      
