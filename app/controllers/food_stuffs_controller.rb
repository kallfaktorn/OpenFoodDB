class FoodStuffsController < ApplicationController
  # GET /food_stuffs
  # GET /food_stuffs.json
  #def index
  #  @food_stuffs = FoodStuff.all

  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render json: @food_stuffs }
  #  end
  #end

  #def javascript_test
  #  render :text => "alert('Hello, world!')",
  #         :content_type => "text/javascript"
  #end


  def index
    #render :text => "alert('Hello, world!')",
    #:content_type => "text/javascript"
    @food_stuffs = FoodStuff.all
    #render :partial => "food", :locals => { :food_stuffs => @food_stuffs }
    render :json => @food_stuffs
    #render @food_stuffs
    #render :partial => "food", :collection => @food_stuffs


    #@food_stuffs = FoodStuff.search(params[:search])

    #respond_to do |format|
    #  format.html { redirect_to @food_stuffs }
    #  format.js
    #end
  end

  # GET /food_stuffs/1
  # GET /food_stuffs/1.json
  def show
    @food_stuff = FoodStuff.find(params[:id])

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
      format.json { render json: @food_stuff }
    end
  end

  # GET /food_stuffs/1/edit
  def edit
    @food_stuff = FoodStuff.find(params[:id])
  end

  # POST /food_stuffs
  # POST /food_stuffs.json
  def create
    @food_stuff = FoodStuff.new(params[:food_stuff])

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
end