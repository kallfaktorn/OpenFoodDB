class AddExpirationDateUnopenedToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :expiration_date_unopened, :string

  end
end
