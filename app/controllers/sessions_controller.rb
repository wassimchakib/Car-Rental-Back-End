class SessionsController < ApplicationController
  skip_before_action :authenticate
  def create
    secret = ENV['JWT_SECRET_KEY']
    user = User.find_by(username: params[:username])
    if user
      token = JWT.encode({ user_id: user.id }, secret, 'HS256')
      render json: { token: }
    else
      render json: { error: 'Invalid username' }, status: :unauthorized
    end
  end
end
