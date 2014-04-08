Hangerz.Views.Pieces ||= {}

class Hangerz.Views.Pieces.ShowView extends Backbone.View
  template: JST["backbone/templates/pieces/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this