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
    @food_stuff_marks = FoodStuffMark.all

    @comment = Comment.new(:food_stuff => @food_stuff)
    @audits = @food_stuff.audits

    @ids = []
    @audits.each do |audit| @ids << audit.id end

    @audit_thumbs_up = []
    @ids.each do |id| @audit_thumbs_up << AuditThumbsUp.find_by_audit_id(id) end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @food_stuff }
    end
  end

  # GET /food_stuffs/new
  # GET /food_stuffs/new.json
  def new
    @food_stuff = FoodStuff.new

    @food_stuff_marks = FoodStuffMark.find(:all)
    if @food_stuff_marks == nil
      @food_stuff_marks = []
    end

    @ingredients = []
    @retailers = []

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /food_stuffs/1/edit
  def edit
    @food_stuff = FoodStuff.find(params[:id])
    @food_stuff_marks = FoodStuffMark.find(:all)
    @ingredients = @food_stuff.ingredients
    @retailers = @food_stuff.retailers
    @tags = Tags.all
  end

  # POST /food_stuffs
  # POST /food_stuffs.json
  def create
    @food_stuff = FoodStuff.create(params[:food_stuff])
    @food_stuff_marks = FoodStuffMark.find(:all)
    
    @ingredients = []
    @retailers = []

    for n in params[:ingredient][:name] do
      unless n.blank?
        @food_stuff.ingredients.create(name: n)
      end
    end

    for n in params[:retailer][:name] do
      unless n.blank?
        @food_stuff.retailers.create(name: n)
      end
    end

    respond_to do |format|
      if @food_stuff.save
        @audit_thumbs_up = AuditThumbsUp.create(:audit_id => @food_stuff.audits.last.id)
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

    for @ingredient in @food_stuff.ingredients do
      @ingredient.destroy
    end

    for @retailer in @food_stuff.retailers do
      @retailer.destroy
    end

    for n in params[:ingredient][:name] do
      unless n.blank?
        @food_stuff.ingredients.create(name: n)
      end
    end

    for n in params[:retailer][:name] do
      unless n.blank?
        @food_stuff.retailers.create(name: n)
      end
    end

    respond_to do |format|
      if @food_stuff.update_attributes!(params[:food_stuff], :audit_comment => "Changing name, just because")

        @audit_thumbs_up = AuditThumbsUp.create(:audit_id => @food_stuff.audits.last.id)

        # Let stay!
        #current_user.decrease_edit_points()
        
        id = current_user.id
        @user = User.find_by_id(current_user.id)
        @user.edit_points -= 1
        @user.save(:validate => false)

        user = User.find_by_id(id)
        sign_in user

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
    audit_id = params[:id]
    
    @audit_thumb_up = AuditThumbsUp.find_by_audit_id(audit_id)
    @audit = Audit.find(@audit_thumb_up.audit_id)
    
    if @audit.user_id != current_user.id
      
      current_user.vote_for(@audit_thumb_up)
      
      @user = User.find(@audit.user_id)
    
    
      # TODO Remove this inconvenient code later
      if @user.edit_points == nil
        @user.edit_points = 0
      end
    
      # TODO Remove this inconvenient code later
      if @user.progress_to_edit_point == nil
        @user.progress_to_edit_point = 0
      end
    
      steps = @user.progress_to_edit_point
      steps += 1
    
      if steps == Settings.thumbs_up_per_edit_point
        @user.edit_points += 1
        steps = 0
      end
    
      @user.progress_to_edit_point = steps
    
    end
    
    @count = @audit_thumb_up.votes_for
    
    respond_to do |format|
      format.json { render :json => @count }
    end
  end
  
  def votes
    audit_id = params[:id]
    
    @audit = AuditThumbsUp.find_by_audit_id(audit_id)
    @count = @audit.votes_for

    respond_to do |format|
      format.json { render :json => @count }
    end
  end
  
  class Node
    attr_accessor :children, :sid
  end
end