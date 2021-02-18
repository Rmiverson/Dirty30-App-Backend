class ExercisesController < ApplicationController
  skip_before_action :authorized
  
   def index
      exercises = Exercise.all

      render json: exercises, except: [:created_at, :updated_at]
   end
end
