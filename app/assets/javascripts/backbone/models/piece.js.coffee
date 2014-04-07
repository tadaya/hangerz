class Hangerz.Models.Piece extends Backbone.Model
  paramRoot: 'piece'

  defaults:


class Hangerz.Collections.PostsCollection extends Backbone.Collection
  model: Hangerz.Models.Piece
  url: '/pieces'