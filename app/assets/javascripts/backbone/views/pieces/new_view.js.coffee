Hangerz.Views.Pieces ||= {}

class Hangerz.Views.Pieces.NewView extends Backbone.View
  template: JST["backbone/templates/pieces/new"]

  events:
    "submit #new-piece": "save"


  constuctor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (piece) =>
        @model = piece
        window.location.hash = "/#{model.id}"

      error: (piece, jqXHR) => 
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )
    
  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this

