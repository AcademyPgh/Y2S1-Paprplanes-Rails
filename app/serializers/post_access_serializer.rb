class PostAccessSerializer < ActiveModel::Serializer
  attributes :id, :UserID, :PostID, :FriendID, :Viewed
end
