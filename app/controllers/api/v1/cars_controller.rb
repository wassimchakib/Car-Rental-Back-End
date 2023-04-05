class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def create
    @car = Car.new(car_params)
    @car.images.map do |image|
      Image.create(url: image, car: @car)
    end
    
    if @car.save
      render json: @car, status: :created
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

 def destroy 
    @car = Car.find_by(id: params[:id])
    if @car&.destroy
      render json: { message: 'Car deleted' }, status: :ok
    else
      render json: { error: 'Car not found' }, status: :not_found
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :description, :year, :color, :price, :images, :user_id)
  end
end
