#
class Pet < ActiveRecord::Base
  belongs_to :user #, inverse_of: :users, foreign_key: 'user_id'
  validates :name, presence: true
  validates :breed, presence: true
  validates :born_on, presence: true
  validates :user, uniqueness: { scope: [:breed, :name, :born_on] }
end
