class WorkoutSerializer
   def initialize (workout)
      @workout = workout
   end

   def serialized_json
      options = {
         include: {
            exercises: {
               only: [:id, :name, :muscleGroup, :demo]
            }

         },
         except: [:created_at, :updated_at]
      }
      
      @workout.to_json(options)
   end
end