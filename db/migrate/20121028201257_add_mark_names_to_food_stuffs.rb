class AddMarkNamesToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :mark_names, :text

  end
end
