require 'test_helper'

class SoleBanksControllerTest < ActionController::TestCase
  setup do
    @sole_bank = sole_banks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sole_banks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sole_bank" do
    assert_difference('SoleBank.count') do
      post :create, sole_bank: @sole_bank.attributes
    end

    assert_redirected_to sole_bank_path(assigns(:sole_bank))
  end

  test "should show sole_bank" do
    get :show, id: @sole_bank.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sole_bank.to_param
    assert_response :success
  end

  test "should update sole_bank" do
    put :update, id: @sole_bank.to_param, sole_bank: @sole_bank.attributes
    assert_redirected_to sole_bank_path(assigns(:sole_bank))
  end

  test "should destroy sole_bank" do
    assert_difference('SoleBank.count', -1) do
      delete :destroy, id: @sole_bank.to_param
    end

    assert_redirected_to sole_banks_path
  end
end
