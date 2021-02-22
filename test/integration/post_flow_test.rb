require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest
  def setup
    @one = posts :one
    @two = posts :two
  end

  test 'post index' do
    get posts_path
    assert_response :redirect
    # assert page.has_content?(@one.title)
    # assert page.has_content?(@two.title)
  end
end
