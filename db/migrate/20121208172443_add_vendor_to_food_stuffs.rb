class AddVendorToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :vendor, :string

  end
end
