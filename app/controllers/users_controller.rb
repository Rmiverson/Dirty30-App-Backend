class UsersController < ApplicationController

  def index 
    users = User.all

    render json: UserSerializer.new(users).serialized_json
  end

  def create
    user = User.create(userParams(:username, :password))

    if user.valid?
        render json: UserSerializer.new(user).serialized_json
    else
        render json: {error: "Username must be unique!!!"}
    end
  end

  def show
    user = User.find(params[:id])

    render json: UserSerializer.new(user).serialized_json
  end

  private

  def userParams(*args)
    params.require(:user).permit(*args)
  end
end
