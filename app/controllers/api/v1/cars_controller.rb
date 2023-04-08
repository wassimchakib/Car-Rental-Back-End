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
          errors: "Couldn't find a car with id: #{params[:id]}"
        }
      }, status: :bad_request
  end

  # api/v1/cars
  def create
    car = Car.new(car_params.merge(user_id: current_user_id))

    if car.save
      id = car.id

      @images = params[:images].map do |image|
        { url: image, car_id: id }
      end

      Image.insert_all(@images)
      render json: {
        operation: "Car created successfully with id: #{id}",
        data: {
          car_id: id
        }
      }, status: :created
    else
      render json: {
        operation: 'Not successful',
        data: {
          errors: car.errors
        }
      }, status: :bad_request
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
    params.require(:car).permit(:name, :description, :year, :color, :price, :images)
  end
end
