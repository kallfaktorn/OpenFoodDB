class AddAshToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :ash, :integer

  end
end
