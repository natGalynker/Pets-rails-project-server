#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :pets
end
