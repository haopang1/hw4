class PlacesController < ApplicationController

  def index
    @places = Place.all
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
  def edit
    @place = place.find(params["id"])
  end

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
