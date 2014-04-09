class WearsController < ApplicationController

  def index
    @pieces = Piece.all
  end


end