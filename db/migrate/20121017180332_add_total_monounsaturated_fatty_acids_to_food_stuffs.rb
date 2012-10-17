class AddTotalMonounsaturatedFattyAcidsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :total_monounsaturated_fatty_acids, :integer

  end
end
