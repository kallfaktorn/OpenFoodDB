class AddDpaFattyAcid225ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :DPA_fatty_acid_225, :integer

  end
end
