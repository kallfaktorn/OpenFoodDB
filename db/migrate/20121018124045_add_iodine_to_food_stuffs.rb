class AddIodineToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :iodine, :integer

  end
end
