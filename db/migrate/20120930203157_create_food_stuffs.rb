class CreateFoodStuffs < ActiveRecord::Migration
  def change
    create_table :food_stuffs do |t|
      t.string :name, :unique => true
      t.float :protein
      t.float :energy_kcal
      t.float :energy_kj
      t.float :fat
      t.float :carbohydrates
      t.float :fibers
      t.float :salt
      t.float :ash
      t.float :water
      t.float :alcohol
      t.float :monosaccharides
      t.float :disaccharides
      t.float :sackaros
      t.float :whole_grain_total
      t.float :total_saturated_fatty_acids
      t.float :fatty_acid_40_100
      t.float :fatty_acid_120
      t.float :fatty_acid_140
      t.float :fatty_acid_160
      t.float :fatty_acid_180
      t.float :fatty_acid_200
      t.float :total_monounsaturated_fatty_acids
      t.float :fatty_acid_161
      t.float :fatty_acid_181
      t.float :total_polyunsaturated_fatty_acids
      t.float :total_n6_fatty_acids
      t.float :fatty_acid_182
      t.float :fatty_acid_204
      t.float :total_n3_fatty_acids
      t.float :EPA_fatty_acid_205
      t.float :DPA_fatty_acid_225
      t.float :DHA_fatty_acid_226
      t.float :total_trans_fatty_acids
      t.float :cholesterol
      t.float :retinol_equivalents
      t.float :retinol
      t.float :beta_carotene
      t.float :vitamin_d
      t.float :vitamin_e
      t.float :vitamin_k
      t.float :thiamine
      t.float :riboflavin
      t.float :vitamin_c
      t.float :niacin
      t.float :niacin_equivalents
      t.float :vitamin_b6
      t.float :vitamin_b12
      t.float :folate
      t.float :phosphorus
      t.float :iodine
      t.float :iron
      t.float :calcium
      t.float :potassium
      t.float :magnesium
      t.float :sodium
      t.float :selenium
      t.float :zinc
      t.float :waste
      t.belongs_to :user
      t.timestamps
    end
  end
end