class UsersController < ApplicationController
  skip_before_action :authenticate
  def create
    @user = User.new(name: params[:username])
    if @user.save
      render json: { message: 'User created successfully' }, status: :created
    else
      render json: { error: "username #{@user.errors[:name].first}" }, status: :bad_request
    end
  end
end
