class AddRetinolEquivalentsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :retinol_equivalents, :integer

  end
end
