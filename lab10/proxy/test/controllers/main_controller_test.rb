require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "get default data" do
    host! 'localhost'
    get "/compute/view", params: { n: 10 }
    assert_response :success
  end

  test "get xml data" do
    host! 'localhost'
    get "/compute/view.xml", params: { n: 123 }
    assert_response :success
  end
end
