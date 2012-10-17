class AddFattyAcid40100ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_40_100, :integer

  end
end
