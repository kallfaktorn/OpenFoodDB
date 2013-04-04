class AddStorageToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :storage, :string

  end
end
