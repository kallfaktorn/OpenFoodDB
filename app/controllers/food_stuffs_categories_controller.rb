class FoodStuffsCategoriesController < ApplicationController
  
  def create
    @food_stuff_category = FoodStuffsCategories.new(params[:food_stuff_id], params[:category_id])
    
    @food_stuff_category.save
  end
  
  def new
    @food_stuff_category = FoodStuffsCategories.new
  end
end
