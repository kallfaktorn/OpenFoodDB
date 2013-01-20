class AddProgressToEditPointToUsers < ActiveRecord::Migration
  def change
    add_column :users, :progress_to_edit_point, :integer

  end
end
