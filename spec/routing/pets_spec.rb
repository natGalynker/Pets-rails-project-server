require 'rails_helper'

RSpec.describe 'routes for pets' do
  it 'routes GET /pets to the pets#index action' do
    expect(get('/pets')).to route_to('pets#index')
  end

  it 'routes GET /pets/:id to the pets#show action' do
    expect(get('/pets/1')).to route_to(
      controller: 'pets',
      action: 'show',
      id: '1'
    )
  end
  skip 'routes POST /pets to the pets#create action' do
    expect(post('/pets')).to route_to('pets#create')
    #   controller: 'pets',
    #   action: 'post'
    # )
  end

  skip 'routes PATCH /pets/:id to the pets#update action' do
    expect(patch('/pets/2')).to route_to(
      controller: 'pets',
      action: 'update',
      id: '2'
    )
  end

  skip 'routes DELETE /pets/:id to the pets#destroy action' do
    expect(delete('/pets/4')).to route_to(
      controller: 'pets',
      action: 'destroy',
      id: '4'
    )
  end
end
