class CommentSerializer < ActiveModel::Serializer
  attributes :body, :user_id, :post_id
  

  has_one :user
  has_one :post
end
