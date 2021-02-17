class UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index 
    users = User.all

    render json: UserSerializer.new(users).serialized_json
  end

  def create
    user = User.create(userParams(:username, :password))

    if user.valid?
        my_token = encode_token({user_id: user.id})
        render json: {user: UserSerializer.new(user).serialized_json, token: my_token}
    else
        render json: {error: "Username must be unique!!!"}
    end
  end

  def show
    user = User.find(params[:id])

    render json: UserSerializer.new(user).serialized_json
  end

  private

  #maybe sketchy *args
  def userParams(*args)
    params.require(:user).permit(*args)
  end
end
