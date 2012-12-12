class AddLactoseToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :lactose, :float

  end
end
