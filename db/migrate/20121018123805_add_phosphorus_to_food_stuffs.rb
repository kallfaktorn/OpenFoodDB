class AddPhosphorusToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :phosphorus, :integer

  end
end
