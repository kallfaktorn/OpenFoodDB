class CreateFoodStuffMarks < ActiveRecord::Migration
  def change
    create_table :food_stuff_marks do |t|
      t.string :name

      t.timestamps
    end
  end
end
