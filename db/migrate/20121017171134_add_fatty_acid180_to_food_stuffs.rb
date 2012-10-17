class AddFattyAcid180ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_180, :integer

  end
end
