require "test_helper"

class DishesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dishes_index_url
    assert_response :success
  end

  test "should get generate" do
    get dishes_generate_url
    assert_response :success
  end
end
