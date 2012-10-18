class AddBetaCaroteneToFoodStuffs < ActiveRecord::Migration
  def change
    add_column :food_stuffs, :beta_carotene, :integer

  end
end
