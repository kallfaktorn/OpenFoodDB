class AddCalciumToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :calcium, :integer

  end
end
