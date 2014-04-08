Hangerz.Views.Pieces ||= {}

class Hangerz.Views.Pieces.IndexView extends Backbone.View
  template: JST["backbone/templates/pieces/index"]

  initialize: () ->
    @options.pieces.bind('reset', @addAll)

  addAll: () =>
    @options.pieces.each(@addOne)

  addOne: (piece) =>
    view = new Hangerz.Views.Pieces.PieceView({model : piece})
    @$("tbody").append(view.render().el)

  render: => 
    $(@el).html(@template(pieces: @options.pieces.toJSON() ))
    @addAll()

    return this