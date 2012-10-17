class AddFibersToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fibers, :integer

  end
end
