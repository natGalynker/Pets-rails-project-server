class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_on, :breed, :gender, :only_pet, :neutered, :owner_name,
             :rabes_shot_date, :declawed, :feral
end
