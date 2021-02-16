class User < ApplicationRecord
   has_many :user_workouts
   has_many :workouts, through: :user_workouts

   validates_uniqueness_of :username
end
