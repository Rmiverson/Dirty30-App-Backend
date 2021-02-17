# class SessionsController < ApplicationController
#   def new
#   end

#   def create
#     user = User.find_by(username: params[:username])
#     return head(:forbidden) unless params[:password] == user.password
#     session[:user_id] = user.id
#   end 

#   def destroy
#     session.delete :user_id
#   end
# end