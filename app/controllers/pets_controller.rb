#
class PetsController < OpenReadController
  before_action :set_pet, only: [:show, :update, :destroy, :create]

  def index
    @pets = Pet.all

    render json: @pets
  end

  def show
    render json: @pet
  end

  def create
    @pet = current_user.pets.build(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def update
    if @pet.update(pet_params)
      head :no_content
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
    @pet = current_user.pets.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :born_on, :gender, :user_id)
  end
  private :set_pet, :pet_params
end
