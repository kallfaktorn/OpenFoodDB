class AddFatToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fat, :integer

  end
end
