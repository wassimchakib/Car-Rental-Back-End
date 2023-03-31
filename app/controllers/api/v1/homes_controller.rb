class Api::V1::HomesController < ApplicationController
  def index
    render json: { message: 'Welcome to the rental app' }
  end
end
