Hangerz.Views.Posts ||= {}

class Hangerz.Views.Posts.EditView extends Backbone.View
  template : JST ['backbonetemplaces/pieces/edit']

  events : 'submit #edit-piece' : 'update'

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null, 
      success : (post) => 
      @model=post
      window.location.hash = '/#{@model.id}'
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this