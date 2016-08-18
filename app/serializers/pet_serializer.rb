class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_on, :breed, :gender, :editable

  scope == object.user
end
