
Partial Class detailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("recipe.aspx")

        Dim delRecipe As String = e.Values("reName").ToString()
        Response.Write("The recipe")
        Response.Write("<span class=deletedrecipehighlight>")
        Response.Write(delRecipe)
        Response.Write("</span> has been deleted.")
        Response.AddHeader("Refresh", "3:url=recipe.aspx")

    End Sub
End Class
