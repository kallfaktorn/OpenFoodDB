class AddVitaminKToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :vitamin_k, :integer

  end
end
