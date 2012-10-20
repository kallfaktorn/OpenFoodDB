class CommentsController < ApplicationController
  def bla
    
    logger.info "yadayadayadayadayadayadayadayadayadayada"
    logger.info "yadayadayadayadayadayadayadayadayadayada"
    logger.info "yadayadayadayadayadayadayadayadayadayada"
    logger.info "yadayadayadayadayadayadayadayadayadayada"
    logger.info "yadayadayadayadayadayadayadayadayadayada"
    logger.info "yadayadayadayadayadayadayadayadayadayada"

    @food_stuff = FoodStuff.find(params[:food_stuff_id])

    @user = User.find(@food_stuff.id);


    
    @comment = @food_stuff.comments.create(params[:comment])
    redirect_to food_stuff_path(@food_stuff)
  end 
end