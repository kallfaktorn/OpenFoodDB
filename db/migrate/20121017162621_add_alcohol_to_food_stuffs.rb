class AddAlcoholToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :alcohol, :integer

  end
end
