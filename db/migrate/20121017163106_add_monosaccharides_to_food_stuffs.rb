class AddMonosaccharidesToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :monosaccharides, :integer

  end
end
