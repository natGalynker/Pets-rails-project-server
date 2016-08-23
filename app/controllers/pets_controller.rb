#
# class PetsController < ProtectedController
class PetsController < OpenReadController
  before_action :set_pet, only: [:update, :destroy, :show]

  # GET /pets/1
  # GET /pets/1.json
  def index
    @pets = current_user.pets
    render json: @pets
  end

  def show
    render json: @pet
  end
  # POST /pets/1
  # POST /pets/1.json

  def create
    @pet = current_user.pets.build(pet_params)
    # something similar to POST sign-in with creds linking to the sign-up form
    # to go here to verify that such fields are not left blank
    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # def signup
  #   user = User.create(user_creds)
  #   if user.valid?
  #     render json: user, status: :created
  #   else

  # def changepw
  #   if !current_user.authenticate(pw_creds[:old]) ||
  #      (current_user.password = pw_creds[:new]).blank? ||
  #      !current_user.save
  #     head :bad_request
  #   else
  #     head :no_content
  #   end
  # end
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
    @pet.current_user.pets.destroy
    head :no_content
  end

  private

  def set_pet
    @pet = current_user.pets.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :born_on, :gender,
                                :owner_name, :only_pet, :neutered,
                                :rabes_shot_date, :feral, :declawed)
  end

  private :set_pet, :pet_params
end
