require 'test_helper'

class ComposerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get composer_show_url
    assert_response :success
  end

end
