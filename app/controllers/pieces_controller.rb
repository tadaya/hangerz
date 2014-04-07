class PiecesController < ApplicationController

  def index

  end

  def create
  end 


  def clothing_params
    params.require(:user).permit(:type, :color, :brand, :size, :date_purchased, :price, :picture)
  end
  
end 