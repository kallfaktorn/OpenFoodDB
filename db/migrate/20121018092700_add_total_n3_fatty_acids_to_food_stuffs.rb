class AddTotalN3FattyAcidsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :total_n3_fatty_acids, :integer

  end
end
