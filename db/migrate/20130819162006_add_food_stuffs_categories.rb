class AddFoodStuffsCategories < ActiveRecord::Migration
  def up
    create_table :food_stuffs_categories, :id => false do |t|
      t.integer :food_stuff_id
      t.integer :categories_id
    end
  end

  def down
  end
end