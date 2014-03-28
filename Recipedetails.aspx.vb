
Partial Class detailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        'Response.Write("The recipe has been deleted")
        Dim delRecipe As String = e.Values("reName").ToString()
        Response.Write("The recipe")
        Response.Write("<span class=deletedrecipehighlight>")
        Response.Write(delRecipe)
        Response.Write("</span> has been deleted.")
        Response.AddHeader("Refresh", "3:URL=./Recipes.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Recipes.aspx")

    End Sub

End Class
