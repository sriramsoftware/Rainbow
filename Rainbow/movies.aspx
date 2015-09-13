<%@ Page Language="C#" AutoEventWireup="true" CodeFile="movies.aspx.cs" Inherits="movies1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta charset="utf-8">
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
</head>

    
   <body id="page2">
   <form id="form1" runat="server">
  <div id="main">
  	<!-- header -->
    <header>
      <h1><a href="./Home.aspx">Rainbow Entertainment</a></h1>
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
                          	<li><a href="./Home.aspx">Home</a></li>
                            <li><a href="upcomemovie.aspx">Upcoming Movie</a></li>
                            <li><a href="./registeruser.aspx">Member Zone</a></li>
                            <li class="last"><a href="./contact.aspx">Contact Us</a></li>
                          </ul>
                        </nav>
                        <div class="banner">
                          <a href="#"><img src="images/main-banner.jpg" alt=""/></a>
                        </div>
                        <div id="content">
                          <div class="wrapper">
                          	<div class="mainContent">
                            	<div class="row-1">
                              	<!-- .box1 -->
                              	<div class="box1">
                                	<div class="inner">
                                  	<h3>Movies</h3>
                                 <div class="wrapper">
                                     <asp:ScriptManager ID="ScriptManager1" runat="server">
                                     </asp:ScriptManager>
                                     <br/>
                                     <asp:Timer ID="Timer1" runat="server" Interval="5000" ontick="Timer1_Tick">
                                     </asp:Timer>
                                     <br/>
&nbsp;<asp:UpdatePanel runat="server" id="TimedPanel">
<Triggers>
<asp:AsyncPostBackTrigger controlid="Timer1" eventname="Tick" />
</Triggers>
<ContentTemplate>
<asp:AdRotator ID="adRotator" runat="server" AdvertisementFile="~/addmovies.xml" 
        Height="300px" Width="500px" onadcreated="adRotator_AdCreated" />
</ContentTemplate>
</asp:UpdatePanel>
                                 </div>

                                    <div class="wrapper"><br/><br/><br/><br/>
                                    	&nbsp;</div>
					<div class="wrapper"><br/><br/><br/><br/><br/>
                                    	&nbsp;</div>
                                    </div>
                                </div>
                              	<!-- /.box1 -->
                              </div>
                            </div>
                          	<aside>
                            	<!-- .box2 --><br/><br/>
                              <br />
                              <br />
                              <br />
                              <br />
                              <br/>
                            	<div class="box2">
                              	<div class="border-top">
                                	<div class="border-right">
                                  	<div class="border-bot">
                                    	<div class="border-left">
                                      	<div class="left-top-corner">
                                        	<div class="right-top-corner">
                                          	<div class="right-bot-corner">
                                            	<div class="left-bot-corner">
                                              	<h3>Movie Details</h3>
						<div class="inner1">
						<table width="400" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="90" height="30"><strong>Movie Name</strong></td>
					<td width="15"><strong>:</strong></td>
					<td width="269">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="White"></asp:Label>
                      </td>
				  </tr>
				  <tr>
					<td height="30"><strong>Cast</strong></td>
					<td height="30"><strong> :</strong></td>
					<td>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="White"></asp:Label>
                      </td>
				  </tr>
				  <tr>
					<td height="30"><strong>Director</strong></td>
					<td height="30"><strong> :</strong></td>
					<td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="White"></asp:Label>
                      </td>
				  </tr>
				  <tr>
					<td height="30"><strong>Genre</strong></td>
					<td height="30"><strong> :</strong></td>
					<td>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="White"></asp:Label>
                      </td>
				  </tr>
				  <tr>
					<td height="30"><strong>Theatre Name</strong></td>
					<td height="30"><strong> :</strong></td>

					<td>
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
                            ForeColor="White"></asp:Label>
                      </td>
				  </tr>
				        </table>
                                          <div class="wrapper"><br/><br/>

					   <a href="customer/booktickets.aspx"><img src="images/booking_button.jpg" alt=""/></a>


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
                              <!-- .box2 --><br/><br/>
                            	<br/>
                              <!-- .box2 -->
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
 
    <!-- /.box -->
    <!-- footer -->
    <footer>
    
      Rainbow Entertainment (c) 2011 | <a href="./policy.aspx">Privacy policy</a>
    </footer>
  </div>

    </form>
</body>
</html>
