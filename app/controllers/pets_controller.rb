#
class PetsController < OpenReadController
  before_action :set_pet, only: [:update, :destroy]

  # GET /pets/1
  # GET /pets/1.json
  def index
    @pets = Pet.all

    render json: @pets
  end

  def show
    render json: @pet
  end
  # POST /pets/1
  # POST /pets/1.json

  def create
    @pet = current_user.pets.build(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

# PATCH /pets/1
# PATCH /pets/1.json

  def update
    if @pet.update(pet_params)
      head :no_content
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end
# DESTROY /pets/1
# DESTROY /pets/1.json

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
