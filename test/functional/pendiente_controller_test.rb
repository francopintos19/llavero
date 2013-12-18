require 'test_helper'

class PendienteControllerTest < ActionController::TestCase
  test "should get pendientevista" do
    get :pendientevista
    assert_response :success
  end

end
