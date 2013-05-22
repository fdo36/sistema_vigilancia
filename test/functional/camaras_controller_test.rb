require 'test_helper'

class CamarasControllerTest < ActionController::TestCase
  setup do
    @camara = camaras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camaras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camara" do
    assert_difference('Camara.count') do
      post :create, camara: { ubicacion: @camara.ubicacion, url: @camara.url }
    end

    assert_redirected_to camara_path(assigns(:camara))
  end

  test "should show camara" do
    get :show, id: @camara
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camara
    assert_response :success
  end

  test "should update camara" do
    put :update, id: @camara, camara: { ubicacion: @camara.ubicacion, url: @camara.url }
    assert_redirected_to camara_path(assigns(:camara))
  end

  test "should destroy camara" do
    assert_difference('Camara.count', -1) do
      delete :destroy, id: @camara
    end

    assert_redirected_to camaras_path
  end
end
