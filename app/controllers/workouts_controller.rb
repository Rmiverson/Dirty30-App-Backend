class WorkoutsController < ApplicationController
  skip_before_action :authorized
  
   def index
      workouts = Workout.all

      render json: WorkoutSerializer.new(workouts).serialized_json
   end

   def create
      workout = Workout.create(workoutParams(:name, :muscleGroup, :sets, :exercisesPerSet))

      if workout.valid?
         render json: WorkoutSerializer.new(workout).serialized_json
      else
         render json: {error: "Please fill in all fields!!!"}
      end
   end

   def update
      workout = Workout.find(params[:id])
      
      workout.update(workoutParams)

      render json: WorkoutSerializer.new(workout).serialized_json
   end

   def delete
      Workout.find(params[:id]).destroy

      render json: {message: "Workout deleted!!!"}
   end

   private

   def workoutParams(*args)
      params.require(:workout).permit(*args)
   end

end
