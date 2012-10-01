class CreateFoodStuffs < ActiveRecord::Migration
  def change
    create_table :food_stuffs do |t|
      t.string :name
      t.integer :protein

      t.timestamps
    end
  end
end
