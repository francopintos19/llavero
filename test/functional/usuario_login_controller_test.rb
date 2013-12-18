require 'test_helper'

class UsuarioLoginControllerTest < ActionController::TestCase
  test "should get usuario_login" do
    get :usuario_login
    assert_response :success
  end

end
