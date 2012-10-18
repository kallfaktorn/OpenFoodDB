class AddWasteToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :waste, :integer

  end
end
