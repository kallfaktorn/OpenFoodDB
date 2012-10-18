class AddSodiumToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :sodium, :integer

  end
end
