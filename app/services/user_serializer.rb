class UserSerializer 
   def initialize (user)
      @user = user
   end

   def serialized_json
      options = {
         include: {
            workouts: {
               only: [:id, :name, :muscleGroup, :sets, :exercisesPerSet]
            }

         },
         except: [:created_at, :updated_at]
      }

      @user.to_json(options)
   end
end