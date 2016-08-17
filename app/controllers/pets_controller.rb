#
class PetsController < ApplicationController
  before_filter :set_pet, only: [:show, :update, :destroy]

  def index
    render json: Pet.all
  end

  def show
    render json: @pet
  end

  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      render json: @pet, status: :created
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def update
    if @pet.update(pet_params)
      render json: @pet, status: :ok
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pet.destroy
    head :no_content
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:title, :content)
  end
end
