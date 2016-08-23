#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :token
  # has_many :pets
end
