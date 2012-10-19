class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :food_stuff

      t.timestamps
    end
    add_index :comments, :food_stuff_id
  end
end
