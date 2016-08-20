class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_on, :breed, :gender, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
