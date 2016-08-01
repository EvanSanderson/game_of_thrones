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

  private
    def character_params
      params.require(:character).permit(:name, :weapon, :dead)
    end

end
