class Api::V1::CarsController < ApplicationController

  # api/v1/cars
  def index
    render json: {
      data: {
        cars: Car.all
      }
    }, status: :ok
  end

  # api/v1/cars/{id}
  def show
    car = Car.find_by(id: params[:id])
    if car
      render json: {
        data: {
          cars: Car.find_by(id: params[:id])
        }
      }, status: :ok
    else
      render json: {
        data: {
          cars: car,
          errors: "Couldn't find a car with #{params[:id]}"
        }
      }, status: :bad_request
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
