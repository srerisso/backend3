require "test_helper"

class MatricesMovimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matrices_movimiento = matrices_movimientos(:one)
  end

  test "should get index" do
    get matrices_movimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_matrices_movimiento_url
    assert_response :success
  end

  test "should create matrices_movimiento" do
    assert_difference('MatricesMovimiento.count') do
      post matrices_movimientos_url, params: { matrices_movimiento: { Comentarios: @matrices_movimiento.Comentarios, FechaMovimiento: @matrices_movimiento.FechaMovimiento, Movimiento: @matrices_movimiento.Movimiento, Quien: @matrices_movimiento.Quien, cliente: @matrices_movimiento.cliente, created_by: @matrices_movimiento.created_by, matrix: @matrices_movimiento.matrix, matriz: @matrices_movimiento.matriz, published_at: @matrices_movimiento.published_at, updated_by: @matrices_movimiento.updated_by } }
    end

    assert_redirected_to matrices_movimiento_url(MatricesMovimiento.last)
  end

  test "should show matrices_movimiento" do
    get matrices_movimiento_url(@matrices_movimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_matrices_movimiento_url(@matrices_movimiento)
    assert_response :success
  end

  test "should update matrices_movimiento" do
    patch matrices_movimiento_url(@matrices_movimiento), params: { matrices_movimiento: { Comentarios: @matrices_movimiento.Comentarios, FechaMovimiento: @matrices_movimiento.FechaMovimiento, Movimiento: @matrices_movimiento.Movimiento, Quien: @matrices_movimiento.Quien, cliente: @matrices_movimiento.cliente, created_by: @matrices_movimiento.created_by, matrix: @matrices_movimiento.matrix, matriz: @matrices_movimiento.matriz, published_at: @matrices_movimiento.published_at, updated_by: @matrices_movimiento.updated_by } }
    assert_redirected_to matrices_movimiento_url(@matrices_movimiento)
  end

  test "should destroy matrices_movimiento" do
    assert_difference('MatricesMovimiento.count', -1) do
      delete matrices_movimiento_url(@matrices_movimiento)
    end

    assert_redirected_to matrices_movimientos_url
  end
end
