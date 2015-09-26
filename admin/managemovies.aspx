<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managemovies.aspx.cs" Inherits="admin_managemovies" %>

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
                            
                            <li><a href="upcomingmovies.aspx">Upcoming Movie</a></li>
                            <li><a href="../changepassword.aspx">Change Password</a></li>
                            <li><a href="viewfeedback.aspx">Feedback</a></li>
                            <li class="last"><a href="../Home.aspx">LogOut</a></li>
                          </ul>
                        </nav>
                             <br/><h3>Movie Details: </h3>   <br/>
                                
                               
                                 
                                 <center>
                                 
                                   <table border='1' style="color: #00FFFF">

				           <tr>
						<td width='50%'>
                            <br />
                            Movie Name:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                                <td><br />
                                                    <asp:TextBox ID="movname" runat="server"></asp:TextBox></td>
                                            </tr>
					  <tr>
                                                <td>
                                                    <br />
                                                    Movie ID:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                                <td><br /><input runat="server" type="text" name="movid" value="" id="movid" /><br></td>
                                          </tr>
                                           <tr>
                                                <td>
                                                    <br />
                                                    Genre:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                           <td><br />
					  <select name="genre" id="categeory" runat="server">
                                             <option value="Category" selected="selected">Select</option>
					  <option value="Adventure" >Adventure</option>
                                             <option value="Action">Action</option>
					  <option value="Drama">Drama</option>
                                             <option value="Thriller">Thriller</option>
					  <option value="Comedy">Comedy</option>
					  <option value="Romance">Romance</option>
                                          <option value="science">Science & Fiction</option>
                                           <option value="War">War</option>
                                         </select><br/>
                                          </td>
                                          </tr>
                                       <tr>
                                           <td>
                                               <br />
                                               Cast:</td><td>&nbsp;&nbsp;&nbsp;</td><td><br /><input type="text" name="cast"
                                      runat="server" value="" id="cast" /><br/></td>
                                          </tr>
                                        <tr>
                                          <td>
                                              <br />
                                              Director:</td><td>&nbsp;&nbsp;&nbsp;</td><td>
                                          <br />  <input type="text" runat="server" name="director" value="" id="dir" /><br/></td>
                                          </tr>
                                          <tr><td>
                                              <br />
                                              Duration :</td><td>&nbsp;&nbsp;&nbsp;</td><td><br /> <input type="text" 
                                        runat="server" name="duration" value="" id="duration" /><br/></td>
                                          </tr>

                                           <tr><td>
                                               <br />
                                               Show Time:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                           <td>
                                              <br />
                                               <asp:DropDownList ID="DropDownList1" runat="server">
                                                   <asp:ListItem>9.30 AM</asp:ListItem>
                                                   <asp:ListItem>12.30 PM</asp:ListItem>
                                                   <asp:ListItem>3.30 PM</asp:ListItem>
                                                   <asp:ListItem>6.30 PM</asp:ListItem>
                                               </asp:DropDownList>  <br/>
                                          </td></tr>
					  <tr><td>
                          <br />
                          Theatre Name:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                           <td>
					                           <br />
					   <select name="tid" id="thname" runat="server">
                                          <option value="Sathyam" selected="selected">Sathyam</option>
					  <option value="Mayajal">Mayajal</option>
					  <option value="Inox">Inox</option>
					  <option value="Devi Cineplex">Devi Cineplex</option>
                                          <option value="PVR">PVR</option>
					  </select><br/>
                                          </td></tr>
                                          <tr><td>
                                              <br />
                                              Hall ID:</td><td>&nbsp;&nbsp;&nbsp;</td>
                                           <td>
					                           <br />
					   <select name="hallid" id="hallid" runat="server">
                                          <option selected="selected">Select</option>
					  <option value="1" >1</option>
					  <option value="2">2</option>
					  <option value="3">3</option>
                                          </select><br/>
                                          </td>
                                          </tr>
                                  <tr><td>
                                      <br />
                                      Image Name:</td>
                                      <td></td> 
                                     
                                      <td><br /><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox> </td>
                                      </tr>  
			                 </table>
                         
                             </center>
                             
                                          <div class="aligncenter">
                                              <br />
                                              <asp:Button ID="Button1" runat="server" Text="Add Movie" BackColor="#0033CC" 
                                                  Font-Bold="True" Font-Names="Century Gothic" Font-Size="Large" 
                                                  ForeColor="#FF33CC" onclick="Button1_Click" />  
                                              <asp:Button ID="Button2" runat="server" BackColor="#0033CC" Font-Bold="True" 
                                                  Font-Names="Century Gothic" Font-Size="14pt" ForeColor="#FF3399" 
                                                  onclick="Button2_Click" Text="Clear" />
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
    </div>
    
    <!-- footer -->
    <footer>
      Rainbow Entertainment (c) 2011 |
    </footer>
  </div>
    </form>
</body>
</html>
