class AddNiacinToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :niacin, :integer

  end
end
