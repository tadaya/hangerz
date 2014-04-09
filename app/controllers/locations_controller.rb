class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def edit 
  end

  def create 

  end

  def update
  end

  def destroy
  end

  private

  def location_params
  end


end