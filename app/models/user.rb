class User < ApplicationRecord
   has_many :user_workouts
   has_many :workouts, through: :user_workouts

   validates_uniqueness_of :username

  #  after_initalize :set_defaults

  # def set_defaults
  #   self.firstname = null if self.new_record?
  #   self.height = null
  #   self.weight = null 
  # end
end
