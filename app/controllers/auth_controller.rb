class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  #for login
  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      my_token = encode_token({user_id: user.id})

      render json: {user: UserSerializer.new(user).serialized_json, token: my_token}
    else 
      render json: {error: 'That user could not be found'}, status: 401
    end
  end

  def show
    user = User.find(params[:id])

    render json: UserSerializer.new(user).serialized_json
  end
end