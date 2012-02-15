require 'test_helper'

class ShopOsesControllerTest < ActionController::TestCase
  setup do
    @shop_ose = shop_oses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_oses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_ose" do
    assert_difference('ShopOse.count') do
      post :create, shop_ose: @shop_ose.attributes
    end

    assert_redirected_to shop_ose_path(assigns(:shop_ose))
  end

  test "should show shop_ose" do
    get :show, id: @shop_ose.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_ose.to_param
    assert_response :success
  end

  test "should update shop_ose" do
    put :update, id: @shop_ose.to_param, shop_ose: @shop_ose.attributes
    assert_redirected_to shop_ose_path(assigns(:shop_ose))
  end

  test "should destroy shop_ose" do
    assert_difference('ShopOse.count', -1) do
      delete :destroy, id: @shop_ose.to_param
    end

    assert_redirected_to shop_oses_path
  end
end
