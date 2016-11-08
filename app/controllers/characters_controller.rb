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
    @house = House.find(params[:house_id])
    @character = @house.characters.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to house_character_path(@house, @character)
  end

  def edit
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  def update
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to house_character_path(@house, @character)
  end

  private

  def character_params
    params.require(:character).permit(
    :name,
    :gender,
    :culture,
    :born,
    :died,
    :title,
    :alias
    )
  end
end
