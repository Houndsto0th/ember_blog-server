class UserSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts
  has_many :comments

end
