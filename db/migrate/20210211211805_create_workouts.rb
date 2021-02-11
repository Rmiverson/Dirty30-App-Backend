class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :muscleGroup
      t.integer :sets
      t.integer :exercisesPerSet

      t.timestamps
    end
  end
end
