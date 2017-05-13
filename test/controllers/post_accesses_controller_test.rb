require 'test_helper'

class PostAccessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_access = post_accesses(:one)
  end

  test "should get index" do
    get post_accesses_url, as: :json
    assert_response :success
  end

  test "should create post_access" do
    assert_difference('PostAccess.count') do
      post post_accesses_url, params: { post_access: { FriendID: @post_access.FriendID, PostID: @post_access.PostID, UserID: @post_access.UserID, Viewed: @post_access.Viewed } }, as: :json
    end

    assert_response 201
  end

  test "should show post_access" do
    get post_access_url(@post_access), as: :json
    assert_response :success
  end

  test "should update post_access" do
    patch post_access_url(@post_access), params: { post_access: { FriendID: @post_access.FriendID, PostID: @post_access.PostID, UserID: @post_access.UserID, Viewed: @post_access.Viewed } }, as: :json
    assert_response 200
  end

  test "should destroy post_access" do
    assert_difference('PostAccess.count', -1) do
      delete post_access_url(@post_access), as: :json
    end

    assert_response 204
  end
end
