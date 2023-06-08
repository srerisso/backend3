require "test_helper"

class MatricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matrix = matrices(:one)
  end

  test "should get index" do
    get matrices_url
    assert_response :success
  end

  test "should get new" do
    get new_matrix_url
    assert_response :success
  end

  test "should create matrix" do
    assert_difference('Matrix.count') do
      post matrices_url, params: { matrix: { Carpinteria: @matrix.Carpinteria, FechaAlta: @matrix.FechaAlta, Tag: @matrix.Tag, created_by: @matrix.created_by, descripcion: @matrix.descripcion, encasa: @matrix.encasa, marca: @matrix.marca, nombre: @matrix.nombre, numserie: @matrix.numserie, published_at: @matrix.published_at, tag: @matrix.tag, updated_by: @matrix.updated_by, uso: @matrix.uso } }
    end

    assert_redirected_to matrix_url(Matrix.last)
  end

  test "should show matrix" do
    get matrix_url(@matrix)
    assert_response :success
  end

  test "should get edit" do
    get edit_matrix_url(@matrix)
    assert_response :success
  end

  test "should update matrix" do
    patch matrix_url(@matrix), params: { matrix: { Carpinteria: @matrix.Carpinteria, FechaAlta: @matrix.FechaAlta, Tag: @matrix.Tag, created_by: @matrix.created_by, descripcion: @matrix.descripcion, encasa: @matrix.encasa, marca: @matrix.marca, nombre: @matrix.nombre, numserie: @matrix.numserie, published_at: @matrix.published_at, tag: @matrix.tag, updated_by: @matrix.updated_by, uso: @matrix.uso } }
    assert_redirected_to matrix_url(@matrix)
  end

  test "should destroy matrix" do
    assert_difference('Matrix.count', -1) do
      delete matrix_url(@matrix)
    end

    assert_redirected_to matrices_url
  end
end
