# frozen_string_literal: true

require 'test_helper'

class HakkimdaControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get hakkimda_show_url
    assert_response :success
  end
end
