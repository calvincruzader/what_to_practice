require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get songs_url
    assert_response :success
  end

  test "should get new" do
    get new_song_url
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post songs_url, params: { song: { abrsm_grade: @song.abrsm_grade, collection: @song.collection, composer_id: @song.composer_id, henle_grade: @song.henle_grade, instrumentation: @song.instrumentation, key: @song.key, rcm_grade: @song.rcm_grade, type: @song.type, video_info: @song.video_info } }
    end

    assert_redirected_to song_url(Song.last)
  end

  test "should show song" do
    get song_url(@song)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_url(@song)
    assert_response :success
  end

  test "should update song" do
    patch song_url(@song), params: { song: { abrsm_grade: @song.abrsm_grade, collection: @song.collection, composer_id: @song.composer_id, henle_grade: @song.henle_grade, instrumentation: @song.instrumentation, key: @song.key, rcm_grade: @song.rcm_grade, type: @song.type, video_info: @song.video_info } }
    assert_redirected_to song_url(@song)
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete song_url(@song)
    end

    assert_redirected_to songs_url
  end
end
