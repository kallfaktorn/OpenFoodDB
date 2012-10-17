class AddEnergyKjToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :energy_kj, :integer

  end
end
