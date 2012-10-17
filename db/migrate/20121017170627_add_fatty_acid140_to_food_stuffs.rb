class AddFattyAcid140ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_140, :integer

  end
end
