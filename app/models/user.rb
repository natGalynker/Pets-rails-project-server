#
class User < ActiveRecord::Base
  include Authentication
  # has_many :examples
  has_many :pets, inverse_of: :user, dependent: :destroy
  # foreign_key 'user_id'
end
