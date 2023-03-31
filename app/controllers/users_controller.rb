class UsersController < ApplicationController
  skip_before_action :authenticate
  def create
    @user = User.new(name: params[:username])
    if @user.save
      render json: { message: 'User created successfully' }
    else
      render json: { error: @user.errors[:name].first }
    end
  end
end
