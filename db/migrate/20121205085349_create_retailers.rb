class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
      t.string :name
      t.references :food_stuff

      t.timestamps
    end
    add_index :retailers, :food_stuff_id
  end
end
