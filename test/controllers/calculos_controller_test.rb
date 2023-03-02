require "test_helper"

class CalculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calculo = calculos(:one)
  end

  test "should get index" do
    get calculos_url
    assert_response :success
  end

  test "should get new" do
    get new_calculo_url
    assert_response :success
  end

  test "should create calculo" do
    assert_difference('Calculo.count') do
      post calculos_url, params: { calculo: { acabado: @calculo.acabado, carpinteria: @calculo.carpinteria, descuento: @calculo.descuento, fecha_calculo: @calculo.fecha_calculo, importe_accesorios: @calculo.importe_accesorios, importe_perfiles: @calculo.importe_perfiles, importe_total_neto: @calculo.importe_total_neto, observaciones: @calculo.observaciones, proyecto_id: @calculo.proyecto_id } }
    end

    assert_redirected_to calculo_url(Calculo.last)
  end

  test "should show calculo" do
    get calculo_url(@calculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_calculo_url(@calculo)
    assert_response :success
  end

  test "should update calculo" do
    patch calculo_url(@calculo), params: { calculo: { acabado: @calculo.acabado, carpinteria: @calculo.carpinteria, descuento: @calculo.descuento, fecha_calculo: @calculo.fecha_calculo, importe_accesorios: @calculo.importe_accesorios, importe_perfiles: @calculo.importe_perfiles, importe_total_neto: @calculo.importe_total_neto, observaciones: @calculo.observaciones, proyecto_id: @calculo.proyecto_id } }
    assert_redirected_to calculo_url(@calculo)
  end

  test "should destroy calculo" do
    assert_difference('Calculo.count', -1) do
      delete calculo_url(@calculo)
    end

    assert_redirected_to calculos_url
  end
end
