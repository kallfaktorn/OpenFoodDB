require 'test_helper'

class FoodStuffsControllerTest < ActionController::TestCase
  setup do
    @food_stuff = food_stuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_stuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_stuff" do
    assert_difference('FoodStuff.count') do
      post :create, food_stuff: @food_stuff.attributes
    end

    assert_redirected_to food_stuff_path(assigns(:food_stuff))
  end

  test "should show food_stuff" do
    get :show, id: @food_stuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_stuff
    assert_response :success
  end

  test "should update food_stuff" do
    put :update, id: @food_stuff, food_stuff: @food_stuff.attributes
    assert_redirected_to food_stuff_path(assigns(:food_stuff))
  end

  test "should destroy food_stuff" do
    assert_difference('FoodStuff.count', -1) do
      delete :destroy, id: @food_stuff
    end

    assert_redirected_to food_stuffs_path
  end
end
