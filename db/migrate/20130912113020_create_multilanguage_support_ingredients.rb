class CreateMultilanguageSupportIngredients < ActiveRecord::Migration
  def change
    create_table :multilanguage_support_ingredients do |t|
      t.string :en
      t.string :se

      t.timestamps
    end
  end
end
