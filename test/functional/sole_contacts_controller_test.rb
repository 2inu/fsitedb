require 'test_helper'

class SoleContactsControllerTest < ActionController::TestCase
  setup do
    @sole_contact = sole_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sole_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sole_contact" do
    assert_difference('SoleContact.count') do
      post :create, sole_contact: @sole_contact.attributes
    end

    assert_redirected_to sole_contact_path(assigns(:sole_contact))
  end

  test "should show sole_contact" do
    get :show, id: @sole_contact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sole_contact.to_param
    assert_response :success
  end

  test "should update sole_contact" do
    put :update, id: @sole_contact.to_param, sole_contact: @sole_contact.attributes
    assert_redirected_to sole_contact_path(assigns(:sole_contact))
  end

  test "should destroy sole_contact" do
    assert_difference('SoleContact.count', -1) do
      delete :destroy, id: @sole_contact.to_param
    end

    assert_redirected_to sole_contacts_path
  end
end
