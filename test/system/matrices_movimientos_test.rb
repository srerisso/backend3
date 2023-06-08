require "application_system_test_case"

class MatricesMovimientosTest < ApplicationSystemTestCase
  setup do
    @matrices_movimiento = matrices_movimientos(:one)
  end

  test "visiting the index" do
    visit matrices_movimientos_url
    assert_selector "h1", text: "Matrices Movimientos"
  end

  test "creating a Matrices movimiento" do
    visit matrices_movimientos_url
    click_on "New Matrices Movimiento"

    fill_in "Comentarios", with: @matrices_movimiento.Comentarios
    fill_in "Fechamovimiento", with: @matrices_movimiento.FechaMovimiento
    fill_in "Movimiento", with: @matrices_movimiento.Movimiento
    fill_in "Quien", with: @matrices_movimiento.Quien
    fill_in "Cliente", with: @matrices_movimiento.cliente
    fill_in "Created by", with: @matrices_movimiento.created_by
    fill_in "Matrix", with: @matrices_movimiento.matrix
    fill_in "Matriz", with: @matrices_movimiento.matriz
    fill_in "Published at", with: @matrices_movimiento.published_at
    fill_in "Updated by", with: @matrices_movimiento.updated_by
    click_on "Create Matrices movimiento"

    assert_text "Matrices movimiento was successfully created"
    click_on "Back"
  end

  test "updating a Matrices movimiento" do
    visit matrices_movimientos_url
    click_on "Edit", match: :first

    fill_in "Comentarios", with: @matrices_movimiento.Comentarios
    fill_in "Fechamovimiento", with: @matrices_movimiento.FechaMovimiento
    fill_in "Movimiento", with: @matrices_movimiento.Movimiento
    fill_in "Quien", with: @matrices_movimiento.Quien
    fill_in "Cliente", with: @matrices_movimiento.cliente
    fill_in "Created by", with: @matrices_movimiento.created_by
    fill_in "Matrix", with: @matrices_movimiento.matrix
    fill_in "Matriz", with: @matrices_movimiento.matriz
    fill_in "Published at", with: @matrices_movimiento.published_at
    fill_in "Updated by", with: @matrices_movimiento.updated_by
    click_on "Update Matrices movimiento"

    assert_text "Matrices movimiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Matrices movimiento" do
    visit matrices_movimientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Matrices movimiento was successfully destroyed"
  end
end
