require "test_helper"

class ComponentControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get component_home_url
    assert_response :success
  end

  test "should get index" do
    get component_index_url
    assert_response :success
  end
end
