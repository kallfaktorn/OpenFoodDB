class AddIronToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :iron, :integer

  end
end
