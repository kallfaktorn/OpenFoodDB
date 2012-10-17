class AddFattyAcid161ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :fatty_acid_161, :integer

  end
end
