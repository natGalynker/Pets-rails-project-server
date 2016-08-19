#
class Pet < ActiveRecord::Base
  belongs_to :user, inverse_of: :pets
  validates :name, :breed, :user, presence: true
end
