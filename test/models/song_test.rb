require 'test_helper'

class SongTest < ActiveSupport::TestCase

  setup do
    @title = 'Arabesque'
    @song = Song.new(title: @title)
    @composer = Composer.new(name: 'poop', songs: [@song])
  end

  test 'Songs should have these values in the database' do
    assert Song.column_names.include?('title'), 'Songs should have titles'
    assert Song.column_names.include?('video_info'), 'Songs should have video info'
    assert Song.column_names.include?('collection'), 'Songs should belong to a collection'
    assert Song.column_names.include?('instrumentation'), 'Songs should have instrumentation'
    assert Song.column_names.include?('rcm_grade'), 'Songs should have an rcm grade'
    assert Song.column_names.include?('henle_grade'), 'Songs should have a henle grade'
    assert Song.column_names.include?('abrsm_grade'), 'Songs should have an abrsm grade'
  end

  test 'Songs should belong to a composer' do
    assert_equal :belongs_to, Song.reflect_on_association(:composer).macro
  end

  test 'Songs should be invalid without a title' do
    @no_name_song = Song.new
    assert_not @no_name_song.valid?, 'Every song should have a title'
  end

  test 'Songs with titles should be valid' do
    assert @song.valid?, 'Song was not properly put into the database'
  end

  test 'Songs should be properly created' do
    @song.save
    assert_equal @song, Song.find_by(title: @title), 'Song should be properly found from the database'
  end
end
