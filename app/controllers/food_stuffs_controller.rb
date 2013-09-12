class FoodStuffsController < ApplicationController

  def index
    search_string = "%" + params[:search] + "%"
    
    @food_stuffs = FoodStuff.find(:all, :conditions => ['name ILIKE ?', search_string])
    
    #@foodStuffsCategories = FoodStuffsCategories.find(:all, :conditions => { :categories_id => @category.id })
    
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
      
    food_stuffs_categories = FoodStuffsCategories.find(:all, :conditions => ['food_stuff_id = ?', @food_stuff.id])
    
    @categories = []
    for c in food_stuffs_categories
      category = Categories.find(c.categories_id)
      @categories << category.name
    end
    
    @multilanguage_support_ingredients = MultilanguageSupportIngredients.all
    
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
    
    @tags = Tags.find(:all)
    if @tags == nil
      @tags = []
    end
    
    @ingredients = []
    @retailers = []
    
    @categories = Categories.all

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /food_stuffs/1/edit
  def edit
    @food_stuff = FoodStuff.find(params[:id])
    @food_stuff_marks = FoodStuffMark.find(:all)
    @food_stuff_mark_names = @food_stuff.mark_names
    @ingredients = @food_stuff.ingredients
    @retailers = @food_stuff.retailers
    @tags = Tags.all
    @food_stuff_tags = @food_stuff.tags
    @food_stuff_storage = @food_stuff.storage
    @categories = Categories.all
    @food_stuff_categories = FoodStuffsCategories.find(:all, :conditions => ['food_stuff_id = ?', @food_stuff.id])
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
    
    
    @food_stuffs_categories = FoodStuffsCategories.find(:all, :conditions => ['food_stuff_id = ?', @food_stuff.id])
    
    for n in @food_stuffs_categories
      FoodStuffsCategories.delete_all(:food_stuff_id => n.food_stuff_id, :categories_id => n.categories_id)
    end
    
    if params[:category] != nil
      if params[:category][:name] != []
        for n in params[:category][:name] do
          unless n.blank?
            @category = Categories.find_by_name(n)
            
            FoodStuffsCategories.create(food_stuff_id: @food_stuff.id, categories_id: @category.id)
          end
        end
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