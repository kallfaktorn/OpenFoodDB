class UniqueNonNullFoodStuffName < ActiveRecord::Migration
   def up
  	change_column :food_stuffs, :name, :string, :unique => true, :null => false
  end

  def down
  end
end
