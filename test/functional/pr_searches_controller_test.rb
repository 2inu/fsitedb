require 'test_helper'

class PrSearchesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => PrSearch.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    PrSearch.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    PrSearch.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to pr_search_url(assigns(:pr_search))
  end

  def test_edit
    get :edit, :id => PrSearch.first
    assert_template 'edit'
  end

  def test_update_invalid
    PrSearch.any_instance.stubs(:valid?).returns(false)
    put :update, :id => PrSearch.first
    assert_template 'edit'
  end

  def test_update_valid
    PrSearch.any_instance.stubs(:valid?).returns(true)
    put :update, :id => PrSearch.first
    assert_redirected_to pr_search_url(assigns(:pr_search))
  end

  def test_destroy
    pr_search = PrSearch.first
    delete :destroy, :id => pr_search
    assert_redirected_to pr_searches_url
    assert !PrSearch.exists?(pr_search.id)
  end
end
