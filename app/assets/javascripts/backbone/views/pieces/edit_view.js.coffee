Hangerz.Views.Pieces ||= {}

class Hangerz.Views.Pieces.EditView extends Backbone.View
  template : JST['backbone/templates/pieces/edit']

  events : 'submit #edit-piece' : 'update'

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null, 
      success : (piece) => 
      window.location.hash = "/#{@model.id}" 
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this