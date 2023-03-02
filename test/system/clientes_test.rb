require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    fill_in "Cliente", with: @cliente.Cliente_id
    fill_in "Codigopostal", with: @cliente.CodigoPostal
    fill_in "Coordenadas", with: @cliente.Coordenadas
    fill_in "Direccion", with: @cliente.Direccion
    fill_in "Email", with: @cliente.Email
    fill_in "Latitude", with: @cliente.Latitude
    fill_in "Localidad", with: @cliente.Localidad
    fill_in "Longitud", with: @cliente.Longitud
    fill_in "Nombre", with: @cliente.Nombre
    fill_in "Provincia", with: @cliente.Provincia
    fill_in "Razonsocial", with: @cliente.RazonSocial
    fill_in "Created by", with: @cliente.created_by
    fill_in "Published at", with: @cliente.published_at
    fill_in "Updated by", with: @cliente.updated_by
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @cliente.Cliente_id
    fill_in "Codigopostal", with: @cliente.CodigoPostal
    fill_in "Coordenadas", with: @cliente.Coordenadas
    fill_in "Direccion", with: @cliente.Direccion
    fill_in "Email", with: @cliente.Email
    fill_in "Latitude", with: @cliente.Latitude
    fill_in "Localidad", with: @cliente.Localidad
    fill_in "Longitud", with: @cliente.Longitud
    fill_in "Nombre", with: @cliente.Nombre
    fill_in "Provincia", with: @cliente.Provincia
    fill_in "Razonsocial", with: @cliente.RazonSocial
    fill_in "Created by", with: @cliente.created_by
    fill_in "Published at", with: @cliente.published_at
    fill_in "Updated by", with: @cliente.updated_by
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
