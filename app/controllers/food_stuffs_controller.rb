class FoodStuffsController < ApplicationController
 
  def index
    search_string = "%" + params[:search] + "%"
    @food_stuffs = FoodStuff.find(:all, :conditions => ['name LIKE ?', search_string])

    respond_to do |format|
      format.json { render :json => @food_stuffs }
    end
  end

  # GET /food_stuffs/1
  # GET /food_stuffs/1.json
  def show
    @food_stuff = FoodStuff.find(params[:id])

    @comment = Comment.new(:food_stuff => @food_stuff)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @food_stuff }
    end
  end

  # GET /food_stuffs/new
  # GET /food_stuffs/new.json
  def new
    @food_stuff = FoodStuff.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /food_stuffs/1/edit
  def edit
    @food_stuff = FoodStuff.find(params[:id])
  end

  # POST /food_stuffs
  # POST /food_stuffs.json
  def create
    @food_stuff = current_user.food_stuffs.build(params[:food_stuff])

    respond_to do |format|
      if @food_stuff.save
        format.html { redirect_to @food_stuff, notice: 'Food stuff was successfully created.' }
        format.json { render json: @food_stuff, status: :created, location: @food_stuff }
      else
        format.html { render action: "new" }
        format.json { render json: @food_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /food_stuffs/1
  # PUT /food_stuffs/1.json
  def update
    @food_stuff = FoodStuff.find(params[:id])

    respond_to do |format|
      if @food_stuff.update_attributes(params[:food_stuff])
        format.html { redirect_to @food_stuff, notice: 'Food stuff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @food_stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_stuffs/1
  # DELETE /food_stuffs/1.json
  def destroy
    @food_stuff = FoodStuff.find(params[:id])
    @food_stuff.destroy

    respond_to do |format|
      format.html { redirect_to food_stuffs_url }
      format.json { head :no_content }
    end
  end

  def vote_up
    current_user.vote_for(@food_stuff = FoodStuff.find(params[:id]))
    @count = @food_stuff.votes_for

    respond_to do |format|
      format.json { render :json => @count }
    end
  end
end