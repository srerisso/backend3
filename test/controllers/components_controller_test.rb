require "test_helper"

class ComponentsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get components_home_url
    assert_response :success
  end

  test "should get index" do
    get components_index_url
    assert_response :success
  end
end
