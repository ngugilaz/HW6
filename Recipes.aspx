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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="reName" HeaderText="Recipe Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submitted by" SortExpression="reSubmit" />
                <asp:BoundField DataField="reIng 1" HeaderText="Ingredient # 1" SortExpression="reIng 1" />
                <asp:BoundField DataField="rePrep" HeaderText="Preparation" SortExpression="rePrep" />
                <asp:HyperLinkField DataNavigateUrlFields="reID" DataNavigateUrlFormatString="recipedetails.aspx? reID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
        <br />
    <a href="default.aspx">HOME</a> <br />
    </div>
    </form>
</body>
</html>
