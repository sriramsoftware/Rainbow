<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8"/>
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/layout.css" type="text/css" media="all"/>
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <style type="text/css">
        #TextArea1
        {
            height: 89px;
            width: 330px;
        }
    </style>
</head>

<body id="page6">
  <form runat="server" id="form1">
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
                            <li><a href="./movies.aspx">Movies Now</a></li>
                            <li><a href="./upcomemovie.aspx">Upcoming Movie</a></li>
                            <li><a href="./registeruser.aspx">Member Zone</a></li>
                            
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
                                  	<h2>contact information</h2>

                                    <div class="img-box">
                                    	<img src="images/6page-img1.gif" alt=""/>
                                      <dl class="address">
                                      	<dt><strong>The Rainbow Entertainment</strong><br />
                                        #34 East Coast Road,<br />
                                        Kanathur,Chennai.<br />
					Pin Code:603 112 </dt>
                                        <dd><span>Telephone:</span>+1 959 603 6035</dd>
                                        <dd><span>FAX:</span>+1 101 889 9898</dd>
                                        <dd>E-mail: <a>Customercare@rainbow.org</a></dd>
                                      </dl>
                                    </div>

                                    <h2>Contact form</h2>
                                    <p>Leave a message for us to identify your problems in the WebSite.</p>
                                   
                                      <fieldset>
                                        <div class="col-1" style="color: #00FFFF">
                                          <label style="color: #00FFFF">Enter Your Name:<br/>
                                            <input type="text" name="name" value="" runat="server"
                                                style="font-family: 'Arial Black'; font-size: medium; font-weight: normal" 
                                                id="name" /><br/>
                                          </label>
                                          <label style="color: #00FFFF">Enter Your E-mail:<br/>
                                            <input type="text" value="" name="emailid" runat="server"
                                                style="font-family: 'Arial Black'; font-size: medium; font-weight: normal" 
                                                id="mail"/><br/>
                                          </label>
                                          <label style="color: #00FFFF">Enter Your City:<br/>
                                            <input type="text" value="" name="city" runat="server" 
                                                style="font-family: 'Arial Black'; font-size: medium; font-weight: normal" 
                                                id="city"/><br/>
                                          </label>
                                            Enter Your Message:<br />
                                            <textarea id="TextArea1" runat="server" name="message" rows="7" cols="20" 
                                                style="font-family: 'Arial Black'; font-size: medium; font-weight: normal"></textarea>&nbsp;&nbsp;&nbsp;
                                              <br />
                                            <br />
                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                ImageUrl="~/images/submit3.jpg" Width="102px" 
                                                onclick="ImageButton1_Click"  />
                                            <br />
                                            <br />
                                            
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                                                Font-Names="Bradley Hand ITC" Font-Size="14pt" ForeColor="#999966"></asp:Label>
                                            <br />
                                            <br />
                                        </div>
                                      </fieldset>
                                
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
                                              	<h3>Social Link</h3>
                                              	<div class="inner">
                                                	<h5>Share your informationn about rainbow entertainment.</h5><br />

							<a href="#"><img src="images/facebook.gif" alt=""/></a><br />

                                                  </div>
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
      Rainbow Entertainment (c) 2011 | <a href="policy.aspx">Privacy policy</a>
    </footer>
 </form>

</body>
</html>




