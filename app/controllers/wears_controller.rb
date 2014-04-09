class WearsController < ApplicationController

  def index
    @pieces = Piece.all
    @locations = Location.all
  end


end