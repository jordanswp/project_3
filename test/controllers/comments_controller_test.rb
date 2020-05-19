require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get comments_title:string_url
    assert_response :success
  end

  test "should get body:text" do
    get comments_body:text_url
    assert_response :success
  end

  test "should get listing:references" do
    get comments_listing:references_url
    assert_response :success
  end

end
