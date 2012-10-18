class AddPotassiumToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :potassium, :integer

  end
end
