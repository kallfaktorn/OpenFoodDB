class AddVitaminCToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :vitamin_c, :integer

  end
end
