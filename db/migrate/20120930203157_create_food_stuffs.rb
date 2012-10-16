class CreateFoodStuffs < ActiveRecord::Migration
  def change
    create_table :food_stuffs do |t|
      t.string :name
      t.integer :protein
      belongs_to :user

      t.timestamps
    end
  end
end
