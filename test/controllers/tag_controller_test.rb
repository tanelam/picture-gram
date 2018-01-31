require 'test_helper'

class TagControllerTest < ActionDispatch::IntegrationTest
  test "should get trending" do
    get tag_trending_url
    assert_response :success
  end

end
