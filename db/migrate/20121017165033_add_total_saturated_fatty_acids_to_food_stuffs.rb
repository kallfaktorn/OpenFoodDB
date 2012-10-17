class AddTotalSaturatedFattyAcidsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :total_saturated_fatty_acids, :integer

  end
end
