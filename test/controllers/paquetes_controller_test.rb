require 'test_helper'

class PaquetesControllerTest < ActionController::TestCase
  setup do
    @paquete = paquetes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paquetes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paquete" do
    assert_difference('Paquete.count') do
      post :create, paquete: { Costo: @paquete.Costo, Descripcion: @paquete.Descripcion, Numero_paquete: @paquete.Numero_paquete, id_paquete: @paquete.id_paquete }
    end

    assert_redirected_to paquete_path(assigns(:paquete))
  end

  test "should show paquete" do
    get :show, id: @paquete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paquete
    assert_response :success
  end

  test "should update paquete" do
    patch :update, id: @paquete, paquete: { Costo: @paquete.Costo, Descripcion: @paquete.Descripcion, Numero_paquete: @paquete.Numero_paquete, id_paquete: @paquete.id_paquete }
    assert_redirected_to paquete_path(assigns(:paquete))
  end

  test "should destroy paquete" do
    assert_difference('Paquete.count', -1) do
      delete :destroy, id: @paquete
    end

    assert_redirected_to paquetes_path
  end
end
