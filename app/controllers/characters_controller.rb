class CharactersController < ApplicationController
  def index
    @house = House.find(params[:house_id])
    @characters = @house.characters
  end

  def show
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  def new
  end

  def edit
  end
end
