require 'test_helper'

class IncomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get income_index_url
    assert_response :success
  end

  test "should get new" do
    get income_new_url
    assert_response :success
  end

end
