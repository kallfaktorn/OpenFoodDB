class AddVitaminB12ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :vitamin_b12, :integer

  end
end
