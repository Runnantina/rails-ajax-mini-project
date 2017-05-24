class Api::V1::CoffeesController < ApplicationController


  def index
    coffees = Coffee.all
    render json: coffees
  end

  def create
    coffee = Coffee.create(coffees_params)
    render json: coffee
  end

  private

  def coffees_params
    params.require(:coffee).permit(:blend_name, :origin, :notes)
  end

end
