class AddBarcodeToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :bar_code_number, :string

  end
end
