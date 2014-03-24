<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="detailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS-recipeWebsite %>" SelectCommand="SELECT * FROM [recipe] WHERE ([reId] = @reId)" DeleteCommand="DELETE FROM [recipe] WHERE [reId] = @reId" InsertCommand="INSERT INTO [recipe] ([reName], [reSubmit], [reIng 1], [reIng 2], [reIng 3], [reIng 4], [reIng 5], [rePrep], [reNotes]) VALUES (@reName, @reSubmit, @reIng_1, @reIng_2, @reIng_3, @reIng_4, @reIng_5, @rePrep, @reNotes)" UpdateCommand="UPDATE [recipe] SET [reName] = @reName, [reSubmit] = @reSubmit, [reIng 1] = @reIng_1, [reIng 2] = @reIng_2, [reIng 3] = @reIng_3, [reIng 4] = @reIng_4, [reIng 5] = @reIng_5, [rePrep] = @rePrep, [reNotes] = @reNotes WHERE [reId] = @reId">
            <DeleteParameters>
                <asp:Parameter Name="reId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="reName" Type="String" />
                <asp:Parameter Name="reSubmit" Type="String" />
                <asp:Parameter Name="reIng_1" Type="String" />
                <asp:Parameter Name="reIng_2" Type="String" />
                <asp:Parameter Name="reIng_3" Type="String" />
                <asp:Parameter Name="reIng_4" Type="String" />
                <asp:Parameter Name="reIng_5" Type="String" />
                <asp:Parameter Name="rePrep" Type="String" />
                <asp:Parameter Name="reNotes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="reId" QueryStringField="reID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="reName" Type="String" />
                <asp:Parameter Name="reSubmit" Type="String" />
                <asp:Parameter Name="reIng_1" Type="String" />
                <asp:Parameter Name="reIng_2" Type="String" />
                <asp:Parameter Name="reIng_3" Type="String" />
                <asp:Parameter Name="reIng_4" Type="String" />
                <asp:Parameter Name="reIng_5" Type="String" />
                <asp:Parameter Name="rePrep" Type="String" />
                <asp:Parameter Name="reNotes" Type="String" />
                <asp:Parameter Name="reId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="reId" DataSourceID="SqlDataSource1" Height="50px" Width="392px">
            <Fields>
                <asp:BoundField DataField="reName" HeaderText="Recipe Name" SortExpression="reName" />
                <asp:BoundField DataField="reSubmit" HeaderText="Submitted By" SortExpression="reSubmit" />
                <asp:BoundField DataField="reIng 1" HeaderText="Ingredient # 1" SortExpression="reIng 1" />
                <asp:BoundField DataField="reIng 2" HeaderText="Ingredient # 2" SortExpression="reIng 2" />
                <asp:BoundField DataField="reIng 3" HeaderText="Ingredient # 3" SortExpression="reIng 3" />
                <asp:BoundField DataField="reIng 4" HeaderText="Ingredient # 4" SortExpression="reIng 4" />
                <asp:BoundField DataField="reIng 5" HeaderText="Ingredient # 5" SortExpression="reIng 5" />
                <asp:BoundField DataField="rePrep" HeaderText="Preparation" SortExpression="rePrep" />
                <asp:BoundField DataField="reNotes" HeaderText="Notes" SortExpression="reNotes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
