class StuffsController < ApplicationController
  def index
    @stuff = Stuff.order("RANDOM()").first
  end

  def new
    @stuff = Stuff.new
  end

  def create
    @stuff = Stuff.create(stuff_params)
    if @stuff.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def stuff_params
    params.require(:stuff).permit(:name, :quest, :favorite_color)
  end
end
