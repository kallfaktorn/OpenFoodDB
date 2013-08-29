class AddCategoriesFieldToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :categories_field, :string

  end
end
