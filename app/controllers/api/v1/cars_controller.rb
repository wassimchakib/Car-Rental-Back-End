class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: {
      data: {
        cars: Car.all
      }
    }, status: :ok
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      id = @car.id

      @images = params[:images].map do |image|
        { url: image, car_id: id }
      end

      Image.insert_all(@images)
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
