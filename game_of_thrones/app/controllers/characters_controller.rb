class CharactersController < ApplicationController

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.build(character_params)

    if @character.save
    redirect_to @house
    else
    render 'houses'
    end

  end

  def show
    @house = House.find(params[:id])
    @character = @house.characters.find(params[:house_id])
  end

def destroy
  @house = House.find(params[:id])
  @character = @house.characters.find(params[:house_id])
  @character.destroy
  redirect_to @house
end

def edit
  @house = House.find(params[:id])
  @character = @house.characters.find(params[:house_id])
end

def update
  @house = House.find(params[:house_id])
  @character = @house.characters.find(params[:id])
  @character.update(character_params)
  redirect_to @house
end

  private
    def character_params
      params.require(:character).permit(:name, :weapon, :dead)
    end

end
