class AddFattyAcid200ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_200, :integer

  end
end
