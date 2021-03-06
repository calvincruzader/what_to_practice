require 'test_helper'

class ComposersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @composer = @mozart
  end

  test 'should get index' do
    get composers_url
    assert_response :success
    assert_equal(@request.path, '/composers')
  end

  test 'should get search url' do
    get '/composers/search'
    assert_response :success
    assert_generates '/composers/search', controller: 'composers', action: 'search'
  end

  test '#search should retrieve the appropriate items from the database given a search query' do
    get('/composers/search', params: {q: 'Brahms, Johannes'})
    # assert_equal(@response.body, 'what is inside')
  end

  # test 'should create composer' do
  #   assert_difference('Composer.count') do
  #     post composers_url, params: {composer: {name: @composer.name, songs: @composer.songs} }
  #   end
  #
  #   assert_redirected_to composer_url(Composer.last)
  # end
  #
  # test 'should show composer' do
  #   get composer_url(@composer)
  #   assert_response :success
  # end
  #
  # test 'should get edit' do
  #   get edit_composer_url(@composer)
  #   assert_response :success
  # end
  #
  # test 'should update composer' do
  #   @songs = [Song.new(title: 'Confutatis Maledictis'), Song.new(title: 'Reqiuem')]
  #   patch composer_url(@composer), params: { composer: {:name => 'Wolfgang Amadeus Mozart', :songs => @songs} }
  #   assert_redirected_to composer_url(@composer)
  # end

  # test 'should destroy composer' do
  #   assert_difference('Composer.count', -1) do
  #     delete composer_url(@composer)
  #   end
  #
  #   assert_redirected_to composers_url
  # end
end
