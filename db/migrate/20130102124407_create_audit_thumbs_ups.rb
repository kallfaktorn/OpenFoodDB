class CreateAuditThumbsUps < ActiveRecord::Migration
  def change
    create_table :audit_thumbs_ups do |t|
      t.integer :audit_id

      t.timestamps
    end
  end
end
