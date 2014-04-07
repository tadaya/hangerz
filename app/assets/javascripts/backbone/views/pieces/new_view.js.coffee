Hangerz.Views.Pieces ||= {}

class Hangerz.Views.Pieces.NewView extends Backbone.View
  template: JST["backbone/templates/pieces/new"]

  events:
    "submit #new-post": "save"


  constuctor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @mode.unset("errors")

    @collection.create(@model.toJSON(),
      success: (piece) =>
        @model = piece
        window.location.hash = "/#{model.id}"

      error: (post, jqXHR) => 
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this