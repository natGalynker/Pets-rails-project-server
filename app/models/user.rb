#
class User < ActiveRecord::Base
  include Authentication
  # has_many :examples
  has_many :pets #, inverse_of: :users,
                #  foreign_key: 'pet_id'
end
