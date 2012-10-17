class AddDisaccharidesToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :disaccharides, :integer

  end
end
