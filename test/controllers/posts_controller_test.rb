require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    setup do
        # get new_user_session
        # sign_in( users(:billy) )

    end

    # before (:each) do
    #     sign_out users(:billy)
    # end
  # test "the truth" do
  #   assert true
  # end
  test "Post index works if logged in" do
      sign_in( users(:billy) )
      post user_session_url
      visit posts_url
      assert_response :success
  end

  test "Post show shows correct body and user" do
      sign_in( users(:billy) )
      post user_session_url
      url = "/posts/#{posts(:one).id}"
      get url
      assert_response :success
      assert_select 'p', /MY FIRST POST/
  end

  test "Unauthenticated user, attempt to see index redirects to login" do
      url = "/posts/#{posts(:one).id}"
      visit posts_url
      assert_response :redirect
  end

  test "Create posts is actually adding and creating a new post" do
  end

  test "Delete posts shows alert" do
  end

  test "Edit posts actually changes post" do
  end

  test "Edit posts returns to post page" do
  end



end
