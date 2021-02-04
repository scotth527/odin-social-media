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
      visit posts_url
      assert_response :success
  end

  test "Post show shows correct body and user" do
      visit posts(:one)

      assert_response :success

      assert_select 'p', /MY FIRST POST/
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
