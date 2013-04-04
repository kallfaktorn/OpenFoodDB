class FoodStuff < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_many :ingredients
  has_many :retailers
  
  validates :name, presence: true, length: { minimum: 1 }, :uniqueness => true

  accepts_nested_attributes_for :ingredients, :allow_destroy => true
  accepts_nested_attributes_for :retailers, :allow_destroy => true

  attr_accessible :bar_code_number, :expiration_date_unopened, :expiration_date_broached, :vendor, :retailers_field, :ingredients_field, :mark_names, :tags, :details, :logo, :food_stuff_image, :name, :protein, :fat, :carbohydrates, :fibers, :salt, :ash, :water, :alcohol, :monosaccharides, :disaccharides, :sackaros, :lactose, :whole_grain_total, :total_saturated_fatty_acids, :fatty_acid_40_100, :fatty_acid_120, :fatty_acid_140, :fatty_acid_160, :fatty_acid_180, :fatty_acid_200, :total_monounsaturated_fatty_acids, :fatty_acid_161, :fatty_acid_181, :fatty_acid_183, :total_polyunsaturated_fatty_acids, :total_n6_fatty_acids, :fatty_acid_181, :fatty_acid_204, :total_n3_fatty_acids, :EPA_fatty_acid_205, :fatty_acid_182, :DPA_fatty_acid_225, :DHA_fatty_acid_226, :total_trans_fatty_acids, :cholesterol, :retinol_equivalents, :retinol, :beta_carotene, :vitamin_d, :vitamin_e, :vitamin_k, :thiamine, :riboflavin, :vitamin_c, :niacin, :niacin_equivalents, :vitamin_b6, :vitamin_b12, :folate, :phosphorus, :iodine, :iron, :calcium, :potassium, :magnesium, :sodium, :selenium, :zinc, :waste, :energy_kcal, :energy_kj

  # Paperclip
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :food_stuff_image, :styles => { :medium => "300x100>", :thumb => "100x100>" }

  acts_as_voteable

  #audited
  audited :protect => false, :allow_mass_assignment => true
  #audited :protect => false

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end