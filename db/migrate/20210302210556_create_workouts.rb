class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |w|
      w.string :exercise1
      w.string :exercise2
      w.string :exercise3
      w.string :exercise4
      w.integer :user_id
    end


  end
end
