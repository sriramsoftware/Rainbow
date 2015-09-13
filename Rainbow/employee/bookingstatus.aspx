<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookingstatus.aspx.cs" Inherits="employee_bookingstatus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <link rel="stylesheet" href="../css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="../css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="../css/style.css" type="text/css" media="all"/> 
</head>
<body id="page7">
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
			    <li><a href="refercheck.aspx">Reference Check</a></li>
                            <li><a href="../changepassword.aspx">Change Password</a></li>
                            <li class="last"><a href="../Home.aspx">LogOut</a></li>
                          </ul>
                        </nav>
                             <br/><h3>Booking Status: </h3>   <br/>
                              	 <form action="" method="post">
                                  <b><center>
                                   <table border='1'>
                                       
       
				           
					  <tr>
                                                <td>Movie ID:</td>
						<td><input type="text" id="movid" value="" runat="server" /><br/></td>
                                          </tr>
                                           
                                          
                                          <tr>
                                          <td>
                                              <br />
                                              Available Tickets:&nbsp;&nbsp;&nbsp;<%Response.Write(sum); %></td>
                                          </tr>
                                          
			                 </table></center>		</b><br /><br />
                                          <div class="aligncenter">
                                          <%Response.Write(msg); %>
        <asp:Button ID="Button1" runat="server" Text="Check Status" onclick="Button1_Click" />
                                         </div>
                                      </form>
                        
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
