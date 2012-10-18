class AddThiamineToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :thiamine, :integer

  end
end
