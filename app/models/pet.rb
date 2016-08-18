#
class Pet < ActiveRecord::Base
  belongs_to :users
  validates :name, :breed, :user, presence: true
end
