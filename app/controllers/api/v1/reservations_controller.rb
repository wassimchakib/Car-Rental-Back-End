class Api::V1::ReservationsController < ApplicationController
  def index
    render json: {
      data: {
        reservations: Reservation.all
      }
    }, status: :ok
  end

  def create
    reservation = Reservation.new(reservation_params)

    if reservation.save
      render json: {
        operation: 'reservation created successfully',
        data: {
          reservation_id: reservation.id
        }
      }, status: :created
    else
      render json: {
        operation: 'not successful',
        data: {
          errors: reservation.errors
        }
      }, status: :bad_request
    end
  end

  def destroy
    reservation = Reservation.find_by(id: params[:id])

    if reservation&.destroy
      render json: {
        operation: "reservation with id #{reservation.id} is deleted"
      }, status: :accepted
    else
      render json: {
        operation: "Couldn't delete reservation with id #{params[:id]}.",
        data: {
          errors: {
            reservation: 'not found'
          }
        }
      }, status: :not_found
    end
  end

  private

  def reservation_params
    params.permit(:starting_date, :user_id, :car_id, :ending_date, :city)
  end
end
