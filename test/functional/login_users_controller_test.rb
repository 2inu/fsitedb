require 'test_helper'

class LoginUsersControllerTest < ActionController::TestCase
  setup do
    @login_user = login_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login_user" do
    assert_difference('LoginUser.count') do
      post :create, login_user: @login_user.attributes
    end

    assert_redirected_to login_user_path(assigns(:login_user))
  end

  test "should show login_user" do
    get :show, id: @login_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login_user.to_param
    assert_response :success
  end

  test "should update login_user" do
    put :update, id: @login_user.to_param, login_user: @login_user.attributes
    assert_redirected_to login_user_path(assigns(:login_user))
  end

  test "should destroy login_user" do
    assert_difference('LoginUser.count', -1) do
      delete :destroy, id: @login_user.to_param
    end

    assert_redirected_to login_users_path
  end
end
