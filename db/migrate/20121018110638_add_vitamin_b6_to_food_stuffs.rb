class AddVitaminB6ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :vitamin_b6, :integer

  end
end
