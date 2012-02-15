require 'test_helper'

class ShopActivitiesControllerTest < ActionController::TestCase
  setup do
    @shop_activity = shop_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_activity" do
    assert_difference('ShopActivity.count') do
      post :create, shop_activity: @shop_activity.attributes
    end

    assert_redirected_to shop_activity_path(assigns(:shop_activity))
  end

  test "should show shop_activity" do
    get :show, id: @shop_activity.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_activity.to_param
    assert_response :success
  end

  test "should update shop_activity" do
    put :update, id: @shop_activity.to_param, shop_activity: @shop_activity.attributes
    assert_redirected_to shop_activity_path(assigns(:shop_activity))
  end

  test "should destroy shop_activity" do
    assert_difference('ShopActivity.count', -1) do
      delete :destroy, id: @shop_activity.to_param
    end

    assert_redirected_to shop_activities_path
  end
end
