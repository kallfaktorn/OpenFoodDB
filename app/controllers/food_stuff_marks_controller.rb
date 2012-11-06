class FoodStuffMarksController < ApplicationController
  def new
    @food_stuff_mark = FoodStuffMark.new

    #respond_to do |format|
    #  format.html # new.html.erb
    #end
  end

  def create
    @food_stuff_mark = FoodStuffMark.create(params[:food_stuff_mark])
  end
end
