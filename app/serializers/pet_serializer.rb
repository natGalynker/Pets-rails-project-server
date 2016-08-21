class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_on, :breed, :gender, :only_pet, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
