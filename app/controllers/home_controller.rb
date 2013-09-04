class HomeController < ApplicationController
  def index
    @root_categories = Categories.find(:all, :conditions => ['parent LIKE ?', 'null'])
    
    print "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
    print "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
    print "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
    print "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
    print "rootcategories: "
    print @root_categories
    
    @categories = Categories.all

    print "ffffffffffffffffffffffffffffffffffffffffff"
    print "ffffffffffffffffffffffffffffffffffffffffff"
    print "ffffffffffffffffffffffffffffffffffffffffff"
    print "ffffffffffffffffffffffffffffffffffffffffff"
    print "categories: " 
    print @categories
    
    @foodStuffsCategories = FoodStuffsCategories.all
    
    @foodStuffNamesAndIds = []
    food_stuffs = FoodStuff.all
    food_stuffs.each { |f|
      @foodStuffNamesAndIds << [f.name, f.id]
    }

  end
end
