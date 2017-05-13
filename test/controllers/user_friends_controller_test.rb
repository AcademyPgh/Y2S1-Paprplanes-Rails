require 'test_helper'

class UserFriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_friend = user_friends(:one)
  end

  test "should get index" do
    get user_friends_url, as: :json
    assert_response :success
  end

  test "should create user_friend" do
    assert_difference('UserFriend.count') do
      post user_friends_url, params: { user_friend: { FriendID: @user_friend.FriendID, UserID: @user_friend.UserID } }, as: :json
    end

    assert_response 201
  end

  test "should show user_friend" do
    get user_friend_url(@user_friend), as: :json
    assert_response :success
  end

  test "should update user_friend" do
    patch user_friend_url(@user_friend), params: { user_friend: { FriendID: @user_friend.FriendID, UserID: @user_friend.UserID } }, as: :json
    assert_response 200
  end

  test "should destroy user_friend" do
    assert_difference('UserFriend.count', -1) do
      delete user_friend_url(@user_friend), as: :json
    end

    assert_response 204
  end
end
