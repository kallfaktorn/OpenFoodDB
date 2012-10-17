class AddEnergyKcalToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :energy_kcal, :integer

  end
end
