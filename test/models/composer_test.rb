require 'test_helper'

class ComposerTest < ActiveSupport::TestCase

  setup do
    @song1 = Song.create(title: 'Nocturne in D flat Major')
    @song2 = Song.create(title: 'Fantasie Impromptu')
  end

  test 'Composers have a name column in the database' do
    name = 'name'
    assert Composer.column_names.include?('name'), "Composer table does not have #{name} column!"
  end

  test 'Composers are invalid without names' do
    @no_name_composer = Composer.new
    assert_not @no_name_composer.valid?, 'Composers should have a name!'
  end

  test 'Composers are invalid without any songs' do
    @composer = Composer.new(name: 'Shostakovich')
    assert_not @composer.valid? 'Composers should have songs if they want to call themselves composers!'
  end

  test 'Composers should have a has_many association with songs' do
    assert_equal Composer.reflect_on_association(:songs).macro, :has_many
  end

  test 'Composers should be valid with a minimum of one song' do
    @composer = Composer.new(name: 'Claude Debussy', songs: [@song1])
    assert @composer.valid?, 'Composer should be valid with one song input'

    @composer.songs << @song2
    assert_equal [@song1, @song2], @composer.songs.to_ary, 'Composer should have both songs now'
    assert @composer.valid?, 'Composer should be valid with more than one song input'
  end

  test 'Composers should be handling any number of songs' do

    @song3 = Song.create(title: 'Revolutionary Etude')
    @song4 = Song.create(title: 'Pathetique Sonata')
    @song5 = Song.create(title: 'Appassionata Sonata')
    songs = [@song1, @song2, @song3, @song4, @song5]
    @composer = Composer.new(name: 'Fryderyk Chopin', songs: songs)
    assert @composer.valid?, 'Composer should be valid with any number of songs'
    assert_equal songs, @composer.songs.to_ary, 'Composer should have all the songs instantiated with them'
  end

  #maybe more tests on:
  #composers should only respond to songs they created
end
