<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet"type="text/css" href="style.css" />
     </head>
   
<body>
     
    <form id="form1" runat="server">

    <div>

        <div id="container">
             <div id="Header">
                <h1>Wicked Easy Recipes</h1>
                <p>Using 5 Ingredients or Less!</p> 
             </div>
                <div id="menu">
                    <a href="default.aspx">Home</a>
                    <a href="./Recipes.aspx"> View all Recipes</a>
                    <a href="./NewRecipe.aspx">New Recipe</a>
                    <a href="./aboutus.aspx">About Us</a>
                    <a href="./contacts.aspx">Contact</a>
               </div>
                <br />
            <br />

            <div id="image">
                
            <img alt="Fruit" title="Fruit" src="./images/fruit.png" />


            </div>

            <br />
            <br />

                <div id="contents">

                </div>

                <div id="footer"> &copy; 2014. 6K:183 Software Design & Development </div>       
           </div>
    </div>
    </form>
</body>
</html>
