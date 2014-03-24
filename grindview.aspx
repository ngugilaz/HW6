<%@ Page Language="VB" AutoEventWireup="false" CodeFile="grindview.aspx.vb" Inherits="recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS-recipewebsite %>" DeleteCommand="DELETE FROM [RecipeTable] WHERE [reID] = @reID" InsertCommand="INSERT INTO [RecipeTable] ([reID], [reName], [reSubmit], [reIng1], [reIng2], [reIng3], [reIng4], [reIng5], [rePrep], [reNotes]) VALUES (@reID, @reName, @reSubmit, @reIng1, @reIng2, @reIng3, @reIng4, @reIng5, @rePrep, @reNotes)" SelectCommand="SELECT * FROM [RecipeTable]" UpdateCommand="UPDATE [RecipeTable] SET [reName] = @reName, [reSubmit] = @reSubmit, [reIng1] = @reIng1, [reIng2] = @reIng2, [reIng3] = @reIng3, [reIng4] = @reIng4, [reIng5] = @reIng5, [rePrep] = @rePrep, [reNotes] = @reNotes WHERE [reID] = @reID">
            <DeleteParameters>
                <asp:Parameter Name="reID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="reID" Type="Int32" />
                <asp:Parameter Name="reName" Type="String" />
                <asp:Parameter Name="reSubmit" Type="String" />
                <asp:Parameter Name="reIng1" Type="String" />
                <asp:Parameter Name="reIng2" Type="String" />
                <asp:Parameter Name="reIng3" Type="String" />
                <asp:Parameter Name="reIng4" Type="String" />
                <asp:Parameter Name="reIng5" Type="String" />
                <asp:Parameter Name="rePrep" Type="String" />
                <asp:Parameter Name="reNotes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="reName" Type="String" />
                <asp:Parameter Name="reSubmit" Type="String" />
                <asp:Parameter Name="reIng1" Type="String" />
                <asp:Parameter Name="reIng2" Type="String" />
                <asp:Parameter Name="reIng3" Type="String" />
                <asp:Parameter Name="reIng4" Type="String" />
                <asp:Parameter Name="reIng5" Type="String" />
                <asp:Parameter Name="rePrep" Type="String" />
                <asp:Parameter Name="reNotes" Type="String" />
                <asp:Parameter Name="reID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="reName" HeaderText="Recipe Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submitted By" SortExpression="reSubmit" />
                <asp:BoundField DataField="reIng1" HeaderText="Ingredient # 1" SortExpression="reIng1" />
                <asp:BoundField DataField="reIng2" HeaderText="Ingredient # 2" SortExpression="reIng2" />
                <asp:BoundField DataField="reIng3" HeaderText="Ingredient # 3" SortExpression="reIng3" />
                <asp:BoundField DataField="reIng4" HeaderText="Ingredient # 4" SortExpression="reIng4" />
                <asp:BoundField DataField="reIng5" HeaderText="Ingredient # 5" SortExpression="reIng5" />
                <asp:BoundField DataField="rePrep" HeaderText="Preparation" SortExpression="rePrep" />
                <asp:BoundField DataField="reNotes" HeaderText="Notes" SortExpression="reNotes" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
