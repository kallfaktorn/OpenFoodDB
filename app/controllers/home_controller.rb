class HomeController < ApplicationController
  def index
    @root_categories = Categories.find(:all, :conditions => ['parent LIKE ?', 'null'])
    
    @categories = Categories.all
    
    @foodStuffsCategories = FoodStuffsCategories.all
    
    @foodStuffNamesAndIds = []
    food_stuffs = FoodStuff.all
    food_stuffs.each { |f|
      @foodStuffNamesAndIds << [f.name, f.id]
    }

  end
end
