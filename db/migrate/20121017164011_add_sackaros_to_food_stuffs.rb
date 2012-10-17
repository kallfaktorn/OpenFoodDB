class AddSackarosToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :sackaros, :integer

  end
end
