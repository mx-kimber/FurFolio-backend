class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if current_user.update(user_params)
      render json: current_user, status: :ok
    else
      render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @user = current_user
      @user.destroy
      render json: { message: "User destroyed successfully" }
    else
      render json: { error: "User not found" }, status: :not_found
    end
  end

  private

  def user_params
    params.permit(:handle, :last_name, :first_name, :email, :password, :password_confirmation)
  end
  
end
