require 'test_helper'

class PrSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PrSearch.new.valid?
  end
end
