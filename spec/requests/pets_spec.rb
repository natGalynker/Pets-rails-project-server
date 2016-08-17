require 'rails_helper'

RSpec.describe 'Pets API' do
  def pet_params
    {
      name: 'Flip-flop',
      breed: 'short haired cat',
      born_on: '2013-03-02'
    }
  end

  def pets
    Pet.all
  end

  def pet
    Pet.first
  end

  before(:all) do
    Pet.create!(pet_params)
  end

  after(:all) do
    Pet.delete_all
  end

  describe 'GET /pets' do
    it 'lists all pets' do
      get '/pets'

      expect(response).to be_success

      pets_response = JSON.parse(response.body)
      expect(pets_response.length).to eq(pets.count)
      expect(pets_response.first['name']).to eq(pet['name'])
    end
  end

  describe 'GET /pets/:id' do
    it'shows one pet' do
      get "/pets/#{pet.id}"

      expect(response).to be_success

      pets_response = JSON.parse(response.body)
      expect(pets_response['id']).to eq(pet['id'])
    end
  end

  describe 'POST /pets' do
    skip 'creates a pet' do
      post'/pets', pet: pet_params, format: :json

      expect(response).to be_success
    end
  end

  describe 'PATCH /pets/:id' do
    def pet_diff
      { breed: 'long haired cat' }
    end

  skip 'updates a pet' do
      patch"/pets/#{pet.id}", pet: pet_params, format: :json

      expect(response).to be_success
    end
  end

  describe 'DELETE /pets/:id' do
    skip 'deletes a pet' do
      delete"/pets/#{pet.id}"

      expect(response).to be_success
    end
  end
end
