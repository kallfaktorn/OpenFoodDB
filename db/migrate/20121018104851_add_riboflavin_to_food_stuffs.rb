class AddRiboflavinToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :riboflavin, :integer

  end
end
