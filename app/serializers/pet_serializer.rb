class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_on, :breed
end
