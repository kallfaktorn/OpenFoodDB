class AddNiacinEquivalentsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :niacin_equivalents, :integer

  end
end
