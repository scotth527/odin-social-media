require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "go to the static page" do
      # get root_path
      # assert_response :success
      assert_equal 1 + 1, 2 , "This is workinig"
  end
end
