class UserFriendsController < ApplicationController
  before_action :set_user_friend, only: [:update, :destroy]

  # GET /user_friends
  def index
    @user_friends = UserFriend.all

    render json: @user_friends
  end

  # GET all of your users friends http://localhost:3000/friends/1
  def show
    temp = Array.new

    UserFriend.where({UserID: params[:UserID]}).each do |pa|
      temp << pa.FriendID
    end 
    render json: User.where(ID: temp)
  end

  # POST /user_friends
  def create
    @user_friend = UserFriend.new(user_friend_params)

    if @user_friend.save
      render json: @user_friend, status: :created, location: @user_friend
    else
      render json: @user_friend.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_friends/1
  def update
    if @user_friend.update(user_friend_params)
      render json: @user_friend
    else
      render json: @user_friend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_friends/1
  def destroy
    @user_friend.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_friend
      @user_friend = UserFriend.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_friend_params
      params.require(:user_friend).permit(:UserID, :FriendID)
    end
end
