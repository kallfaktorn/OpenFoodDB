class AddFattyAcid181ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_181, :integer

  end
end
