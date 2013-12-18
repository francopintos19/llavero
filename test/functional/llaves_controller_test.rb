require 'test_helper'

class LlavesControllerTest < ActionController::TestCase
  setup do
    @llafe = llaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:llaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create llafe" do
    assert_difference('Llave.count') do
      post :create, llafe: { cantidad: @llafe.cantidad, descripcion: @llafe.descripcion, puerta_id: @llafe.puerta_id }
    end

    assert_redirected_to llafe_path(assigns(:llafe))
  end

  test "should show llafe" do
    get :show, id: @llafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @llafe
    assert_response :success
  end

  test "should update llafe" do
    put :update, id: @llafe, llafe: { cantidad: @llafe.cantidad, descripcion: @llafe.descripcion, puerta_id: @llafe.puerta_id }
    assert_redirected_to llafe_path(assigns(:llafe))
  end

  test "should destroy llafe" do
    assert_difference('Llave.count', -1) do
      delete :destroy, id: @llafe
    end

    assert_redirected_to llaves_path
  end
end
