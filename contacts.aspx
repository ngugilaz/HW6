<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contacts.aspx.vb" Inherits="coontacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet"type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
   
        <br />
        <div id="container">
             <div id="Header">
                <h1>Wicked Easy Recipes</h1>
                <p>Using 5 Ingredients or Less!</p> 
             </div>
                <div id="menu">
                    <a href="default.aspx">Home</a>
                    <a href="NewRecipe.aspx">New Recipe</a>
                    <a href="aboutus.aspx"> About US</a>
                    <a href="contacts.aspx">Contact</a>
               </div>
                <br />
                <div id="contents">
                    <div class="manual">
    <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
                </div>
        <br />
         <div id="footer"> &copy; 2014. 6K:183 Software Design & Development  </div> 
        </div>
    </div>
    </form>
</body>
</html>
