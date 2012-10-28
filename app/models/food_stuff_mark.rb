class FoodStuffMark < ActiveRecord::Base
  attr_accessible :food_stuff_mark_image, :name

  has_attached_file :food_stuff_mark_image, :styles => { :medium => "50x50>", :thumb => "25x25>" }
end