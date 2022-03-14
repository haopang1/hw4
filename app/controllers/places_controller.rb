class PlacesController < ApplicationController

  def index
    if @current_user then 
      @places = Place.all
      else redirect_to "/session/new" 
    end 
  end

  def show
    @place = Place.find(params["id"])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params["place"])
    @place.save
    redirect_to "/places"
  end

  # For future Development 
  def edit
    @place = place.find(params["id"])
  end
  
  # For future Development 
  def update
    @place = place.find(params["id"])
    @place.update(params["place"])
    redirect_to "/places"
  end

  def destroy
    @place = place.find(params["id"])
    @place.destroy
    redirect_to "/places"
  end


end
