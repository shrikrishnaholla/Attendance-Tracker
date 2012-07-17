require 'test_helper'

class InteractionControllerTest < ActionController::TestCase
  test "should get interact_page" do
    get :interact_page
    assert_response :success
  end

end
