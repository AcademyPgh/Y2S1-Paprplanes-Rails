class PostSerializer < ActiveModel::Serializer
  attributes :id, :UserID, :Type, :Caption, :Content, :Counter
end
