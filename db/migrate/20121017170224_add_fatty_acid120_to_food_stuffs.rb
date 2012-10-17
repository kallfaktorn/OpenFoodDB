class AddFattyAcid120ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_120, :integer

  end
end
