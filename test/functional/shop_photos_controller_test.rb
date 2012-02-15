require 'test_helper'

class ShopPhotosControllerTest < ActionController::TestCase
  setup do
    @shop_photo = shop_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_photo" do
    assert_difference('ShopPhoto.count') do
      post :create, shop_photo: @shop_photo.attributes
    end

    assert_redirected_to shop_photo_path(assigns(:shop_photo))
  end

  test "should show shop_photo" do
    get :show, id: @shop_photo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_photo.to_param
    assert_response :success
  end

  test "should update shop_photo" do
    put :update, id: @shop_photo.to_param, shop_photo: @shop_photo.attributes
    assert_redirected_to shop_photo_path(assigns(:shop_photo))
  end

  test "should destroy shop_photo" do
    assert_difference('ShopPhoto.count', -1) do
      delete :destroy, id: @shop_photo.to_param
    end

    assert_redirected_to shop_photos_path
  end
end
