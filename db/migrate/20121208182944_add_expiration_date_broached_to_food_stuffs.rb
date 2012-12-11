class AddExpirationDateBroachedToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :expiration_date_broached, :string

  end
end
