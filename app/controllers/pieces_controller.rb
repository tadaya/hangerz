class PiecesController < ApplicationController

  before_action :set_piece, only: [:show, :edit, :update, :destroy]

  def index
      @pieces = Piece.all
  end

  def show
  end

  def new
    @piece = Piece.new
  end

  def create
    @post = Piece.new(piece_params)

    respond_to do |format|
      if @piece.save
        format.html { redirect_to @piece, notice: 'Success' }
        format.json { render action: 'show', status: :created, location: @piece }
      else
        format.html { render action: 'new' }
        format.json { render json: @piece.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @piece.update(piece_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @piece.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @piece.destroy
    respond_to do |format|
      format.html { redirect_to piece_url }
      format.json { head :no_content }
    end
  end


  private

  def set_piece
    @piece = Piece.find(params[:piece_id])
  end

  def piece_params
    params.require(:user).permit(:type, :color, :brand, :size, :date_purchased, :price, :picture)
  end
  
end 