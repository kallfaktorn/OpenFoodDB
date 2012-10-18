class AddMagnesiumToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :magnesium, :integer

  end
end
