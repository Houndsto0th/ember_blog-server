class UserSerializer < ActiveModel::Serializer
  attributes :name, :id

  has_many :posts, except: [:user, :comments]
  has_many :comments, except: [:user, :post]

end
