class SessionsController < ApplicationController
  skip_before_action :authenticate
  def create
    user = User.find_by(username: params[:username])
    if user
      token = JWT.encode({ user_id: user.id }, 'my_secret_key', 'HS256')
      render json: { token: }
    else
      render json: { error: 'Invalid username' }, status: :unauthorized
    end
  end
end
