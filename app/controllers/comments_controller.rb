class CommentsController < ApplicationController
  def create
    @food_stuff = FoodStuff.find(params[:food_stuff_id])
    @comment = @food_stuff.comments.create(params[:comment])
    redirect_to food_stuff_path(@food_stuff)
  end 
end