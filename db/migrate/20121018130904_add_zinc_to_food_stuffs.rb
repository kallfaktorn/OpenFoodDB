class AddZincToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :zinc, :integer

  end
end
