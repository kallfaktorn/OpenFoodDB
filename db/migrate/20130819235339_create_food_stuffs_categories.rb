class CreateFoodStuffsCategories < ActiveRecord::Migration
  def change
    create_table :food_stuffs_categories do |t|

      t.timestamps
    end
  end
end
