class AddRetinolToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :retinol, :integer

  end
end
