require 'test_helper'

class ProductShopsControllerTest < ActionController::TestCase
  setup do
    @product_shop = product_shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_shop" do
    assert_difference('ProductShop.count') do
      post :create, product_shop: @product_shop.attributes
    end

    assert_redirected_to product_shop_path(assigns(:product_shop))
  end

  test "should show product_shop" do
    get :show, id: @product_shop.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_shop.to_param
    assert_response :success
  end

  test "should update product_shop" do
    put :update, id: @product_shop.to_param, product_shop: @product_shop.attributes
    assert_redirected_to product_shop_path(assigns(:product_shop))
  end

  test "should destroy product_shop" do
    assert_difference('ProductShop.count', -1) do
      delete :destroy, id: @product_shop.to_param
    end

    assert_redirected_to product_shops_path
  end
end
