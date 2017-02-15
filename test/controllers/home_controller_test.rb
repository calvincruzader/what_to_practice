require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get home_index_url
    assert_response :success
  end

  test 'should test the routing for the home page is in home/index' do
    assert_recognizes({controller: 'home', action: 'index'}, 'home/index')
    assert_recognizes({controller: 'home', action: 'index'}, '/')
  end

  test '' do

  end
end
