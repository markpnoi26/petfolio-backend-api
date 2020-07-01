class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, include: [:pets]
  end

  def show
    user = User.find_by_id(params[:id])
    render json: user, include: [:pets]
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      render json: user, include: [:pets]
    else
      render json: {error: "User cannot be created"}
    end
  end

  def update
    # puts(params)
    user = User.find_by_id(params[:id])
    user.update(current_address: params[:current_address], about_me: params[:about_me])
    user.save
    render json: user, except: [:name, :email, :password_digest, :created_at, :updated_at]
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :email, :password, :password_confirmation, :current_address, :about_me)
  end

end
