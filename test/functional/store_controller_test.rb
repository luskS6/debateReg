require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get electronics" do
    get :electronics
    assert_response :success
  end

end
