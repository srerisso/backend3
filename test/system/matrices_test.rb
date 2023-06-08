require "application_system_test_case"

class MatricesTest < ApplicationSystemTestCase
  setup do
    @matrix = matrices(:one)
  end

  test "visiting the index" do
    visit matrices_url
    assert_selector "h1", text: "Matrices"
  end

  test "creating a Matrix" do
    visit matrices_url
    click_on "New Matrix"

    fill_in "Carpinteria", with: @matrix.Carpinteria
    fill_in "Fechaalta", with: @matrix.FechaAlta
    fill_in "Tag", with: @matrix.Tag
    fill_in "Created by", with: @matrix.created_by
    fill_in "Descripcion", with: @matrix.descripcion
    check "Encasa" if @matrix.encasa
    fill_in "Marca", with: @matrix.marca
    fill_in "Nombre", with: @matrix.nombre
    fill_in "Numserie", with: @matrix.numserie
    fill_in "Published at", with: @matrix.published_at
    fill_in "Tag", with: @matrix.tag
    fill_in "Updated by", with: @matrix.updated_by
    fill_in "Uso", with: @matrix.uso
    click_on "Create Matrix"

    assert_text "Matrix was successfully created"
    click_on "Back"
  end

  test "updating a Matrix" do
    visit matrices_url
    click_on "Edit", match: :first

    fill_in "Carpinteria", with: @matrix.Carpinteria
    fill_in "Fechaalta", with: @matrix.FechaAlta
    fill_in "Tag", with: @matrix.Tag
    fill_in "Created by", with: @matrix.created_by
    fill_in "Descripcion", with: @matrix.descripcion
    check "Encasa" if @matrix.encasa
    fill_in "Marca", with: @matrix.marca
    fill_in "Nombre", with: @matrix.nombre
    fill_in "Numserie", with: @matrix.numserie
    fill_in "Published at", with: @matrix.published_at
    fill_in "Tag", with: @matrix.tag
    fill_in "Updated by", with: @matrix.updated_by
    fill_in "Uso", with: @matrix.uso
    click_on "Update Matrix"

    assert_text "Matrix was successfully updated"
    click_on "Back"
  end

  test "destroying a Matrix" do
    visit matrices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Matrix was successfully destroyed"
  end
end
