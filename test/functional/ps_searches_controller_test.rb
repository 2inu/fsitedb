require 'test_helper'

class PsSearchesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => PsSearch.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    PsSearch.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    PsSearch.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ps_search_url(assigns(:ps_search))
  end

  def test_edit
    get :edit, :id => PsSearch.first
    assert_template 'edit'
  end

  def test_update_invalid
    PsSearch.any_instance.stubs(:valid?).returns(false)
    put :update, :id => PsSearch.first
    assert_template 'edit'
  end

  def test_update_valid
    PsSearch.any_instance.stubs(:valid?).returns(true)
    put :update, :id => PsSearch.first
    assert_redirected_to ps_search_url(assigns(:ps_search))
  end

  def test_destroy
    ps_search = PsSearch.first
    delete :destroy, :id => ps_search
    assert_redirected_to ps_searches_url
    assert !PsSearch.exists?(ps_search.id)
  end
end
