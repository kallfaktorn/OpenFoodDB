class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user,   only: [:edit, :update]

  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:user])
    @user.edit_points = Settings.new_user_edit_points
    @user.progress_to_edit_point = 0
    
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @audits = Audit.find_all_by_user_id(@user.id)
    
    foodStuffIds = @audits.collect! do |a|
      a.auditable_id
    end
   
    @food_stuffs = foodStuffIds.uniq.collect! do |i|
      FoodStuff.find_by_id(i)
    end
  end

  def index
    search_string = "%" + params[:search] + "%"
    @food_stuffs = FoodStuff.find(:all, :conditions => ['name LIKE ?', search_string])

    respond_to do |format|
      format.json { render :json => @food_stuffs }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def new
    @user = User.new
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
  
  private

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end