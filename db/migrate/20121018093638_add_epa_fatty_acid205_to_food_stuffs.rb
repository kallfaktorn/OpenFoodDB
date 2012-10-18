class AddEpaFattyAcid205ToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :EPA_fatty_acid_205, :integer

  end
end
