class ApplicationController < ActionController::API
  before_action :authenticate

  private

  def authenticate
    secret = ENV.fetch('JWT_SECRET_KEY', nil)
    token = request.headers['Authorization']&.split&.last
    begin
      payload = JWT.decode(token, secret, true, algorithm: 'HS256').first
      @current_user_id = payload['user_id']
    rescue JWT::DecodeError
      render json: { error: 'You are not allowed to access this api, please login' }, status: :unauthorized
    end
  end
end
