require 'test_helper'

class FoodShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get food_shops_index_url
    assert_response :success
  end

  test "should get show" do
    get food_shops_show_url
    assert_response :success
  end

end
