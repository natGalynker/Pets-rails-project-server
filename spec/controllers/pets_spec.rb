require 'rails helper'

RSpec.describe PetsController do
  def pet_params
    {
      name: 'Flip-flop',
      born_on: '2013-03-02',
      breed: 'short haired cat'
    }
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

  describe 'GET index' do
    before(:each) { get :index }
    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders a JSON response' do
      pets_response = JSON.parse(response.body)
      expect(pets_response).not_to be_nil
      expect(pets_response.first['name']).to eq(pet.name)
    end
  end

  describe 'GET show' do
    before(:each) { get :show, id: pet.id }
    it 'is successful' do
      expect(response).to be_successful
    end

    it 'renders a JSON response' do
      pets_response = JSON.parse(response.body)
      expect(pets_response).not_to be_nil
      expect(pets_response['name']).to eq(pet.name)
    end
  end
end
