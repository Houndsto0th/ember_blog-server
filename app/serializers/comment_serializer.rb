class CommentSerializer < ActiveModel::Serializer
  attributes :body, :id


  has_one :user, except: [:comment]
  has_one :post, except: [:comment]
end
