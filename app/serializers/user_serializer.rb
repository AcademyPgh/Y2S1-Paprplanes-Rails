class UserSerializer < ActiveModel::Serializer
  attributes :id, :FirstName, :LastName, :ScreenName, :Password, :Email, :DateOfBirth, :ProfilePicUrl
end
