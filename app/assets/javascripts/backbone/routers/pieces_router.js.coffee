class Hangerz.Routers.PiecesRouter extends Backbone.Router
  initialize: (options) ->
    @pieces = new Hangerz.Collections.PiecesCollection()
    @pieces.reset options.pieces

  routes: 
    "new"       : "newPiece"
    "index"     : "index"
    ":id/edit"  : "edit"
    ":id"       : "show"
    ".*"        : "index"

  newPiece: ->
    @view = new Hangerz.Views.Pieces.NewView( collection: @pieces)
    $("#pieces").html(@view.render().el)

  index: ->
    @view = new Hangerz.Views.Pieces.IndexView(pieces: @pieces)
    $("#pieces").html(@view.render().el)

  show: (id) ->
    piece = @pieces.get(id)
    console.log("show")
    console.log(piece)

    @view = new Hangerz.Views.Pieces.ShowView(model: piece)
    $("#pieces").html(@view.render().el)

  edit: (id) ->
    piece = @pieces.get(id)
    @view = new Hangerz.Views.Pieces.EditView(model: piece)
    $("#pieces").html(@view.render().el)