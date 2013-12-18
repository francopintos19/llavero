require 'test_helper'

class NewPersonControllerTest < ActionController::TestCase
  test "should get new_person_vista" do
    get :new_person_vista
    assert_response :success
  end

end
