require "application_system_test_case"

class ProyectosTest < ApplicationSystemTestCase
  setup do
    @proyecto = proyectos(:one)
  end

  test "visiting the index" do
    visit proyectos_url
    assert_selector "h1", text: "Proyectos"
  end

  test "creating a Proyecto" do
    visit proyectos_url
    click_on "New Proyecto"

    fill_in "Codigo alg", with: @proyecto.Codigo_Alg
    fill_in "Estado", with: @proyecto.Estado
    fill_in "Referencia", with: @proyecto.Referencia
    fill_in "Cliente", with: @proyecto.cliente
    fill_in "Cliente", with: @proyecto.cliente_id
    fill_in "Created by", with: @proyecto.created_by
    fill_in "Published at", with: @proyecto.published_at
    fill_in "Updated by", with: @proyecto.updated_by
    click_on "Create Proyecto"

    assert_text "Proyecto was successfully created"
    click_on "Back"
  end

  test "updating a Proyecto" do
    visit proyectos_url
    click_on "Edit", match: :first

    fill_in "Codigo alg", with: @proyecto.Codigo_Alg
    fill_in "Estado", with: @proyecto.Estado
    fill_in "Referencia", with: @proyecto.Referencia
    fill_in "Cliente", with: @proyecto.cliente
    fill_in "Cliente", with: @proyecto.cliente_id
    fill_in "Created by", with: @proyecto.created_by
    fill_in "Published at", with: @proyecto.published_at
    fill_in "Updated by", with: @proyecto.updated_by
    click_on "Update Proyecto"

    assert_text "Proyecto was successfully updated"
    click_on "Back"
  end

  test "destroying a Proyecto" do
    visit proyectos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proyecto was successfully destroyed"
  end
end
