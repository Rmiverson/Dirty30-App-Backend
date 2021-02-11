class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscleGroup
      t.string :demo

      t.timestamps
    end
  end
end
