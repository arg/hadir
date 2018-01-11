require 'spec_helper'
require 'hadir'

class HadirTest < Test::Unit::TestCase
  def test_accessible_action
    result = PostController.new(controller: 'post', action: 'accessible').accessible
    assert_equal true, result
  end

  def test_inaccessible_action
    assert_raises ::NotAuthorizedError do
      PostController.new(controller: 'post', action: 'inaccessible').inaccessible
    end
  end
end
