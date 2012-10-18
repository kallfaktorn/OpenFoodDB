class AddTotalTransFattyAcidsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :total_trans_fatty_acids, :integer

  end
end
