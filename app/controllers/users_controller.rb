class UsersController < ApplicationController
   def create
      user = User.create(userParams)

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
