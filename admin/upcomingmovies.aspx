<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upcomingmovies.aspx.cs" Inherits="admin_upcomingmovies" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                          	<li><a href="adminhomepage.aspx">Home</a></li>
                            <li><a href="managemovies.aspx">Add Movies</a></li>
                             <li><a href="../changepassword.aspx">Change Password</a></li>
                            <li><a href="viewfeedback.aspx" class="current">Feedback</a></li>
                            <li class="last"><a href="../Home.aspx">LogOut</a></li>
                          </ul>
                        </nav>
                             <br/><h3>Movie Details: </h3> <br/>
                              	
                                  <center>
                                   <table border='1'>
                                   
				           <tr>
						<td width='50%'>Movie Name:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                                <td><input type="text" name="mname" value="" id="movname" runat="server"/></td>
                                            </tr>
					  <tr>
                                                <td>Movie ID:</td><td>&nbsp;&nbsp;&nbsp;</td><td><input type="text" runat="server" name="mid" 
                                                    value="" id="movid" /><br></td>
                                          </tr>
                                           <tr>
                                                <td>Category:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                                <td><input type="text" name="mgenre" value="" id="cate" runat="server" />
					 <br>
                                          </td>
                                          </tr>
                                       <tr>
                                           <td>Cast:</td><td>&nbsp;&nbsp;&nbsp;</td><td><input type="text" runat="server" name="mcast" 
                                               value="" id="cast" /><br></td>
                                          </tr>
                                        <tr>
                                          <td>Director:</td><td>&nbsp;&nbsp;&nbsp;</td><td><input type="text"  runat="server"
                                                name="mdirect" value="" id="direct" /><br></td>
                                          </tr>
                                          <tr>
                                          <td>Theatre Name:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                             <td>
					 <select name="thname" id="thname" runat="server">
                      <option selected="selected">Select</option>
					  <option  >Sathyam</option>
					  <option >Mayajal</option>
					  <option >Inox</option>
					  <option >Devi Cineplex</option>
                                          <option >PVR</option>
					  </select>
                                              <br/></td>
                                          </tr>
                                          <tr>
                                          <td>Image Name:</td><td>&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="mdirect" 
                                                  value="" runat="server" id="imgpath" /><br></td>
                                          </tr>
			                 </table></center>
                                          <div class="aligncenter">
                                              
        <asp:Button ID="Button1" runat="server" Text="Save Movie" onclick="Button1_Click" />
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
  </div>
    </form>
</body>
</html>
