class CreateFoodStuffs < ActiveRecord::Migration
  def change
    create_table :food_stuffs do |t|
      t.string :name
      t.integer :protein
      t.integer :user_id

      t.timestamps
    end
  end
end
