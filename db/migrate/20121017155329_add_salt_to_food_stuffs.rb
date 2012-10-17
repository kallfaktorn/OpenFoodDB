class AddSaltToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :salt, :integer

  end
end
