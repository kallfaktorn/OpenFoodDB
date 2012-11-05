class CommentsController < ApplicationController
  def create
    @food_stuff = FoodStuff.find(params[:food_stuff_id])
    
    @user = User.find(current_user.id);

    params_comment = params[:comment]
    params_comment[:name] = @user.name

    @comment = @food_stuff.comments.create(params_comment)
    redirect_to food_stuff_path(@food_stuff)
  end
end