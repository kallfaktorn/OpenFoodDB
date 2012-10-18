class AddCholesterolToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :cholesterol, :integer

  end
end
