class PetsController < ApplicationController

  def index
    pets = Pet.all
    render json: pets, include: [:user]
  end

  def show
    pet = Pet.find_by_id(params[:id])
    render json: pet, include: [:user]
  end

  def create
    # puts(params)
    pet = Pet.create(
      name: params[:pet_info][:pet_name],
      age: Faker::Number.number(digits: 1),
      animal_type: params[:pet_info][:pet_breed],
      pet_care: params[:pet_info][:pet_care],
      user_id: params[:user_id]
    )

    render json: pet, include: [:user]
  end

  def destroy
    puts(params)
    pet = Pet.find_by_id(params[:id])
    pet.destroy

    render json: Pet.all, include: [:user]
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :animal_type, :pet_care)
  end

end
