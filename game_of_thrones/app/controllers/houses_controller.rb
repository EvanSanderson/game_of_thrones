class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def show
    @house = House.find(params[:id])
  end

  def create
    @house = House.create(params_house)

    if @house.save
      redirect_to @house, notice: "You've succesfully added a new house!"
    else
      render 'edit'
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(params_house)

      if @house.save
        redirect_to house_path(@house), notice: "You've succesfully edited this house. "
      else
        render 'edit'
      end
end

  private
    def params_house
      params.require(:house).permit(:name, :motto, :sigil_url)
  end

end
