#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :current_user
  has_many :pets
end
