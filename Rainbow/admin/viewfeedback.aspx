<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="admin_viewfeedback" %>

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
                            <li><a href="upcomingmovies.aspx">Upcoming Movie</a></li>
                            <li><a href="../changepassword.aspx">Change Password</a></li>
                            <li class="last"><a href="../Home.aspx">LogOut</a></li>
                          </ul>
                        </nav>
                       <br/><h3>Customer FeedBack:</h3><br />
                            <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                                DataSourceID="SqlDataSource1" Font-Bold="True" Font-Names="Comic Sans MS" 
                                ForeColor="#66FF33" Height="183px" Width="295px">
                                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <ItemTemplate>
                                    Name:
                                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                    <br />
                                    Comment:
                                    <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("Comment") %>' />
                                    <br />
                                    EntryTime:
                                    <asp:Label ID="entrytimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                                    <br />
<br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            </asp:DataList>
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:rainbowConnectionString %>" 
                                
                                ProviderName="<%$ ConnectionStrings:rainbowConnectionString.ProviderName %>" 
                                SelectCommand="SELECT name, comment, `time` FROM feedbackdb">
                            </asp:SqlDataSource>
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
