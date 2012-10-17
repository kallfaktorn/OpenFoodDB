class AddFattyAcid160ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_160, :integer

  end
end
