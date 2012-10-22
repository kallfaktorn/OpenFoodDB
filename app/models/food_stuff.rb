class FoodStuff < ActiveRecord::Base

  belongs_to :user
  has_many :comments

  # Paperclip
  attr_accessible :logo, :food_stuff_image, :name, :protein, :fat, :carbohydrates, :fibers, :salt, :ash, :water, :alcohol, :monosaccharides, :disaccharides, :sackaros, :whole_grain_total, :total_saturated_fatty_acids, :fatty_acid_40_100, :fatty_acid_120, :fatty_acid_140, :fatty_acid_160, :fatty_acid_180, :fatty_acid_200, :total_monounsaturated_fatty_acids, :fatty_acid_161, :fatty_acid_181, :total_polyunsaturated_fatty_acids, :total_n6_fatty_acids, :fatty_acid_181, :fatty_acid_204, :total_n3_fatty_acids, :EPA_fatty_acid_205, :fatty_acid_182, :DPA_fatty_acid_225, :DHA_fatty_acid_226, :total_trans_fatty_acids, :cholesterol, :retinol_equivalents, :retinol, :beta_carotene, :vitamin_d, :vitamin_e, :vitamin_k, :thiamine, :riboflavin, :vitamin_c, :niacin, :niacin_equivalents, :vitamin_b6, :vitamin_b12, :folate, :phosphorus, :iodine, :iron, :calcium, :potassium, :magnesium, :sodium, :selenium, :zinc, :waste, :energy_kcal, :energy_kj
  
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :food_stuff_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end