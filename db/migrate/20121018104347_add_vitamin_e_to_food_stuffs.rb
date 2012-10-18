class AddVitaminEToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :vitamin_e, :integer

  end
end
