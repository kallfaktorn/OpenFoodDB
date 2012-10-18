class AddDhaFattyAcid226ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :DHA_fatty_acid_226, :integer

  end
end
