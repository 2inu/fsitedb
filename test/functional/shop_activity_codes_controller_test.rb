require 'test_helper'

class ShopActivityCodesControllerTest < ActionController::TestCase
  setup do
    @shop_activity_code = shop_activity_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_activity_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_activity_code" do
    assert_difference('ShopActivityCode.count') do
      post :create, shop_activity_code: @shop_activity_code.attributes
    end

    assert_redirected_to shop_activity_code_path(assigns(:shop_activity_code))
  end

  test "should show shop_activity_code" do
    get :show, id: @shop_activity_code.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_activity_code.to_param
    assert_response :success
  end

  test "should update shop_activity_code" do
    put :update, id: @shop_activity_code.to_param, shop_activity_code: @shop_activity_code.attributes
    assert_redirected_to shop_activity_code_path(assigns(:shop_activity_code))
  end

  test "should destroy shop_activity_code" do
    assert_difference('ShopActivityCode.count', -1) do
      delete :destroy, id: @shop_activity_code.to_param
    end

    assert_redirected_to shop_activity_codes_path
  end
end
