require 'test_helper'

class InventariosControllerTest < ActionController::TestCase
  setup do
    @inventario = inventarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventario" do
    assert_difference('Inventario.count') do
      post :create, inventario: { Cantidad: @inventario.Cantidad, Producto: @inventario.Producto, id_empleado: @inventario.id_empleado, id_inventario: @inventario.id_inventario }
    end

    assert_redirected_to inventario_path(assigns(:inventario))
  end

  test "should show inventario" do
    get :show, id: @inventario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventario
    assert_response :success
  end

  test "should update inventario" do
    patch :update, id: @inventario, inventario: { Cantidad: @inventario.Cantidad, Producto: @inventario.Producto, id_empleado: @inventario.id_empleado, id_inventario: @inventario.id_inventario }
    assert_redirected_to inventario_path(assigns(:inventario))
  end

  test "should destroy inventario" do
    assert_difference('Inventario.count', -1) do
      delete :destroy, id: @inventario
    end

    assert_redirected_to inventarios_path
  end
end
