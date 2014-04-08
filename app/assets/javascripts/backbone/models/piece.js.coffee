class Hangerz.Models.Piece extends Backbone.Model
  paramRoot: 'piece'

  defaults: 
    type: null

class Hangerz.Collections.PiecesCollection extends Backbone.Collection
  model: Hangerz.Models.Piece
  url: '/pieces'