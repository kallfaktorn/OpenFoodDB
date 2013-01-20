class AddEditPointsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :edit_points, :integer

  end
end
