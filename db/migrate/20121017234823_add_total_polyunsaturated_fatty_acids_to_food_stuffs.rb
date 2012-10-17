class AddTotalPolyunsaturatedFattyAcidsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :total_polyunsaturated_fatty_acids, :integer

  end
end
