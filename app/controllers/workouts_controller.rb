class WorkoutsController < ApplicationController
  skip_before_action :authorized
  
   def index
      workouts = Workout.all

      render json: WorkoutSerializer.new(workouts).serialized_json
   end

   def show
      workout = Workout.find(params[:id])

      render json: WorkoutSerializer.new(workout).serialized_json
   end

   def create
      #byebug
      workout = Workout.create(workoutParams(:name, :muscleGroup, :sets, :exercisesPerSet))

      #create join model for each exercise
      params[:exercises].each {|exercise| WorkoutExercise.create(workout_id: workout[:id], exercise_id: exercise[:id])}

      #create join model for user_workout
      UserWorkout.create(user_id: params[:user_id], workout_id: workout[:id])


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

   def destroy
      render json: Workout.find(params[:id]).destroy
   end

   private

   def workoutParams(*args)
      params.require(:workout).permit(*args)
   end
end
