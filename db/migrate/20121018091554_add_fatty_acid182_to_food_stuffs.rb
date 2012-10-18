class AddFattyAcid182ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_182, :integer

  end
end
