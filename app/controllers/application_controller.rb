class ApplicationController < ActionController::API
  before_action :authenticate

  private

  def authenticate
    token = request.headers['Authorization']&.split&.last
    begin
      payload = JWT.decode(token, 'my_secret_key', true, algorithm: 'HS256').first
      @current_user_id = payload['user_id']
    rescue JWT::DecodeError
      render json: { error: 'You are not allowed to access this api, please login' }, status: :unauthorized
    end
  end
end
