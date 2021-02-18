class Workout < ApplicationRecord
   has_many :workout_exercises, dependent: :destroy
   has_many :exercises, through: :workout_exercises
   has_many :user_workouts, dependent: :destroy
end
