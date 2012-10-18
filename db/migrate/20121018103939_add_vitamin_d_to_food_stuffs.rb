class AddVitaminDToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :vitamin_d, :integer

  end
end
