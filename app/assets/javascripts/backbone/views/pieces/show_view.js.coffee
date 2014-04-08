Hangerz.Views.Pieces ||= {}

class Hangerz.Views.Pieces.ShowView extends Backbone.View
  template: JST["backbone/templates/pieces/show"]

  render: ->
    console.log($(@el))
    $(@el).html(@template(@model.toJSON() ))
    return this
