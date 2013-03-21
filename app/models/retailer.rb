class Retailer < ActiveRecord::Base
  
  belongs_to :food_stuff
  
  validates_presence_of :name
  
end