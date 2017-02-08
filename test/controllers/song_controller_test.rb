require 'test_helper'

class SongControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get song_view_url
    assert_response :success
  end

  test "should get show" do
    get song_show_url
    assert_response :success
  end

end
