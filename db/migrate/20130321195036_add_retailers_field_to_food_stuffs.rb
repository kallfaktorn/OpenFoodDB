class AddRetailersFieldToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :retailers_field, :string

  end
end
