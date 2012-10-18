class AddFattyAcid204ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_204, :integer

  end
end
