class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @characters = @house.characters
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create(house_params)
    redirect_to house_characters_path @house
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.update(house_params)
    redirect_to house_characters_path @house
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  private

  def house_params
    params.require(:house).permit(:name)
  end
end
