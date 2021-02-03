require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    setup do
        # get new_user_session
        sign_in( users(:billy) )
        post user_session_url
    end
  # test "the truth" do
  #   assert true
  # end
  test "Post index works " do
      get posts_url
      assert_response :success
  end

end
