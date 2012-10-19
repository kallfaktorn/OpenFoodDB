class Comment < ActiveRecord::Base
  belongs_to :food_stuff

  validates_presence_of :name
  validates_presence_of :body
end