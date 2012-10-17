class AddCarbohydratesToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :carbohydrates, :integer

  end
end
