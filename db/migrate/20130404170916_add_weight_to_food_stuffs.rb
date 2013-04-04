class AddWeightToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :weight, :integer

  end
end
