<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registeruser.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8"/>
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
  
</head>

<body id="page5">
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
                          	<li><a href="Home.aspx">Home</a></li>
                            <li><a href="movies.aspx">Movies Now</a></li>
                            <li><a href="upcomemovie.aspx">Upcoming Movie</a></li>
                            
                            <li class="last"><a href="contact.aspx">Contact Us</a></li>
                          </ul>
                        </nav>
                        <div class="banner">
                          <a href="#"><img src="images/main-banner.jpg" alt=""/></a>
                        </div>
                        <div id="content">
                          <div class="wrapper">
                                  	<h3>New User</h3>
                                    <center>
                                        <div class="col-1">
                                             
                                                 <br/><br/>

               Please Fill In The Following Details:
               <br/><br/><br/>
               <table>
               <tr>
                    <td>Enter Customer Name:</td>
                    <td><input type="text" name="name" value="" runat="server" id="custname"/></td>
               </tr>
               <tr>
                    <td>Enter Password:</td>
                    <td><input type="password" name="pass" value="" runat="server" id="password" /></td>
                </tr>
                <tr>
                    <td>Enter Date Of Birth(yyyy/mm/dd):</td>
                    <td><input type="text" runat="server" name="dob" value="" id="dob" /></td>
                </tr>
                <tr>
                    <td>Enter Address: </td>
                    <td><textarea cols="21" name="addr" rows="2" runat="server" id="address"></textarea></td>
                </tr>
                 <tr>
                    <td> Enter Phone No(10 Digit):</td>
                    <td><input type="text" name="phoneno" value="" runat="server" id="phoneno" maxlength="10"/></td>
                 </tr>   
                   <tr> 
                   <td>Enter Email-Id:</td>
                                                 <td><asp:TextBox ID="mailid" runat="server" ontextchanged="mailid_TextChanged"></asp:TextBox>
                                                 <asp:RegularExpressionValidator 
                                                     ID="RegularExpressionValidator1" runat="server" 
                                                     ErrorMessage="Email Not Valid" ControlToValidate="mailid" 
                                                     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                 </td>
                                                 </tr>
            <tr>
            <td></td>
            <td><font color="red">(example:sample@gmail.com)</font></td>
            </tr>
            <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
            <tr>
            <td colspan="2"><center><asp:Button ID="Button1" runat="server" Text="REGISTER" BackColor="#0000CC" Font-Bold="True" 
                 Font-Names="AR BONNIE" Font-Size="16pt" ForeColor="Lime" onclick="Button1_Click"  />
             </center></td>
            </tr>
             </table>   	
            </div>
           
          </center>      
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

          
    <!-- /.box -->
    <!-- footer -->
   
  </div>
  </form>
</body>
</html>











  