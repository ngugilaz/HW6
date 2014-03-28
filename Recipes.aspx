<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipes.aspx.vb" Inherits="grindView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet"type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS-recipeWebsite %>" SelectCommand="SELECT * FROM [recipe]"></asp:SqlDataSource>

         <div id="container">
             <div id="Header">
                <h1>Wicked Easy Recipes</h1>
                <p>Using 5 Ingredients or Less!</p> 
             </div>
                <div id="menu">
                     <a href="default.aspx">Home</a>
                     <a href="NewRecipe.aspx">New Recipe</a>
                     <a href="aboutus.aspx">About Us</a>
                    <a href="contacts.aspx">Contact</a>
               </div>
                <br />
                <div id="contents">
      
       
        <asp:GridView ID="GridView1" 
            runat="server"
            AllowPaging="True" 
            AllowSorting="True"
            AutoGenerateColumns="False" 
            DataKeyNames="reId"
            DataSourceID="SqlDataSource1"
            Grindlines="none"
            CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            RowStyle Width="633px"
            >
            
            

            <Columns>
                <asp:BoundField DataField="reName" HeaderText="Recipe Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submitted by" SortExpression="reSubmit" />
                <asp:BoundField DataField="reIng 1" HeaderText="Ingredient # 1" SortExpression="reIng 1" />
                <asp:BoundField DataField="rePrep" HeaderText="Preparation" SortExpression="rePrep" />
                <asp:HyperLinkField DataNavigateUrlFields="reID" DataNavigateUrlFormatString="Recipedetails.aspx?reID={0}" Text="View Details" />
                     </Columns>
                  </asp:GridView>
                  </div>
        <br />
        <br />
     <div id="footer"> &copy; 2014. 6K:183 Software Design & Development  </div> 
    </div>
    </div>
    </form>
</body>
</html>
