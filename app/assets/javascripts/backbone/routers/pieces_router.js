(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { 
      for (var key in parent) { 
        if (__hasProp.call(parent, key)) child[key] = parent[key]; 
      } function ctor() { 
        this.constructor = child; 
      } ctor.prototype = parent.prototype; 
      child.prototype = new ctor(); 
      child.__super__ = parent.prototype; 
      return child; };

  Hangerz.Routers.PiecesRouter = (function(_super) {
    __extends(PiecesRouter, _super);

    function PiecesRouter() {
      return PiecesRouter.__super__.constructor.apply(this, arguments);
    }

    PiecesRouter.prototype.initialize = function(options) {
      this.pieces = new Hangerz.Collections.PiecesCollection();
      return this.pieces.reset(options.pieces);
    };

    PiecesRouter.prototype.routes = {
      "new"     : "newPiece",
      "index"   : "index",
      ":id/edit": "edit",
      ":id"     : "show",
      ".*"      : "index"
    };

    PiecesRouter.prototype.newPiece = function() {
      this.view = new Hangerz.Views.Pieces.NewView({
        collection: this.pieces
      });
      return $("#pieces").html(this.view.render().el);
    };

    PiecesRouter.prototype.index = function() {
      this.view = new Hangerz.Views.Pieces.IndexView({
        pieces: this.pieces
      });
      return $("#pieces").html(this.view.render().el);
    };

    PiecesRouter.prototype.show = function(id) {
      var piece;
      piece = this.pieces.get(id);
      this.view = new Hangerz.Views.Pieces.ShowView({
        model: piece
      });
      return $("#pieces").html(this.view.render().el);
    };

    PiecesRouter.prototype.edit = function(id) {
      var piece;
      piece = this.pieces.get(id);
      this.view = new Hangerz.Views.Pieces.EditView({
        model: piece
      });
      return $("#pieces").html(this.view.render().el);
    };

    return PiecesRouter;

  })(Backbone.Router);

}).call(this);
