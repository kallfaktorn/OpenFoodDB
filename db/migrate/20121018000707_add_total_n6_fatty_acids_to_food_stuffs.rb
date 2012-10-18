class AddTotalN6FattyAcidsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :total_n6_fatty_acids, :integer

  end
end
