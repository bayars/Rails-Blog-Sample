require 'test_helper'

class YazilarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yazilar_index_url
    assert_response :success
  end

  test "should get show" do
    get yazilar_show_url
    assert_response :success
  end

end
