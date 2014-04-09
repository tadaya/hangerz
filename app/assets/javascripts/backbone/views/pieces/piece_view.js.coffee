Hangerz.Views.Pieces ||= {}

class Hangerz.Views.Pieces.PieceView extends Backbone.View
  template: JST["backbone/templates/pieces/piece"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    $(@el.children[0]).css("background-image", "url(#{@model.attributes.link})")
    $(@el.children[0]).addClass("piece_view")
    return this
