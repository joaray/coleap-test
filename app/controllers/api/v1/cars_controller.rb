class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.made_by(params[:make]).order(price: params[:price] || :asc).includes(:car_range, :colors)
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end
end
