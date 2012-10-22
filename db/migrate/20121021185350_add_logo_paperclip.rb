class AddLogoPaperclip < ActiveRecord::Migration
  def up
  	add_column :food_stuffs, :logo_file_name,    :string
    add_column :food_stuffs, :logo_content_type, :string
    add_column :food_stuffs, :logo_file_size,    :integer
    add_column :food_stuffs, :logo_updated_at,   :datetime
  end

  def down
  	remove_column :food_stuffs, :logo_file_name
    remove_column :food_stuffs, :logo_content_type
    remove_column :food_stuffs, :logo_file_size
    remove_column :food_stuffs, :logo_updated_at
  end
end
