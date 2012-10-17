class AddWholeGrainTotalToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :whole_grain_total, :integer

  end
end
