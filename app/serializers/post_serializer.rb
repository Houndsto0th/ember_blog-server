class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body

  has_many :comments, except: [:post]
  has_one :user, except: [:posts, :comments]
end
