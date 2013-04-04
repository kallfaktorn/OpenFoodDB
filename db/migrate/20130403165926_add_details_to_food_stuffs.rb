class AddDetailsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :details, :text

  end
end
