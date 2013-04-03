class AddTagsToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :tags, :text

  end
end
