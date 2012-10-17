class AddWaterToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :water, :integer

  end
end
