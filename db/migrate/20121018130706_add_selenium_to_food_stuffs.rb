class AddSeleniumToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :selenium, :integer

  end
end
