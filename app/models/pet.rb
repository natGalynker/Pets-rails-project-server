#
class Pet < ActiveRecord::Base
  belongs_to :user, inverse_of: :pets
  # foreign_key 'pet_id'
  # validates :name, presence: true
  # validates :breed, presence: true
  # validates :born_on, presence: true
  # validates :gender, presence: true
  # validates :owner_name, presence: true
  # validates :neutered, presence: true
  # validates :only_pet, presence: true
  # validates :declawed, presence: true
  # validates :rabes_shot_date, presence: true
  # validates :feral, presence: true
  # validates :user, uniqueness: { scope: [:breed, :name, :born_on, :gender,
  #                                        :owner_name, :neutered, :only_pet,
  #                                       :feral, :rabes_shot_date, :declawed] }
end
