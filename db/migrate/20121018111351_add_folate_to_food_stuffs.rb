class AddFolateToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :folate, :integer

  end
end
