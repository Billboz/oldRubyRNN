require 'test_helper'

class ThoughtControllerTest < ActionController::TestCase
  test "should get initial_thought" do
    get :initial_thought
    assert_response :success
  end

end
