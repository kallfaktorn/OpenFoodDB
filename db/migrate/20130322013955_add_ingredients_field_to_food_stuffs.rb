class AddIngredientsFieldToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :ingredients_field, :string

  end
end
