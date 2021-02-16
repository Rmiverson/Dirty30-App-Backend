class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :firstname, default: "User"
      t.integer :height, default: 0
      t.integer :weight, default: 0

      t.timestamps
    end
  end
end
