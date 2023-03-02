require "application_system_test_case"

class CalculosTest < ApplicationSystemTestCase
  setup do
    @calculo = calculos(:one)
  end

  test "visiting the index" do
    visit calculos_url
    assert_selector "h1", text: "Calculos"
  end

  test "creating a Calculo" do
    visit calculos_url
    click_on "New Calculo"

    fill_in "Acabado", with: @calculo.acabado
    fill_in "Carpinteria", with: @calculo.carpinteria
    fill_in "Descuento", with: @calculo.descuento
    fill_in "Fecha calculo", with: @calculo.fecha_calculo
    fill_in "Importe accesorios", with: @calculo.importe_accesorios
    fill_in "Importe perfiles", with: @calculo.importe_perfiles
    fill_in "Importe total neto", with: @calculo.importe_total_neto
    fill_in "Observaciones", with: @calculo.observaciones
    fill_in "Proyecto", with: @calculo.proyecto_id
    click_on "Create Calculo"

    assert_text "Calculo was successfully created"
    click_on "Back"
  end

  test "updating a Calculo" do
    visit calculos_url
    click_on "Edit", match: :first

    fill_in "Acabado", with: @calculo.acabado
    fill_in "Carpinteria", with: @calculo.carpinteria
    fill_in "Descuento", with: @calculo.descuento
    fill_in "Fecha calculo", with: @calculo.fecha_calculo
    fill_in "Importe accesorios", with: @calculo.importe_accesorios
    fill_in "Importe perfiles", with: @calculo.importe_perfiles
    fill_in "Importe total neto", with: @calculo.importe_total_neto
    fill_in "Observaciones", with: @calculo.observaciones
    fill_in "Proyecto", with: @calculo.proyecto_id
    click_on "Update Calculo"

    assert_text "Calculo was successfully updated"
    click_on "Back"
  end

  test "destroying a Calculo" do
    visit calculos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calculo was successfully destroyed"
  end
end
