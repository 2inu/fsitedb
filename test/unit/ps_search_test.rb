require 'test_helper'

class PsSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PsSearch.new.valid?
  end
end
