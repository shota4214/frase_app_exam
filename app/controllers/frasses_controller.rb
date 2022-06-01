class FrassesController < ApplicationController

  def index
    @frasses = Frasse.all
  end

  def new
    @frasse = Frasse.new
  end

  def create
    Frasse.create(params.require(:frasse).permit(:title,:content))
    redirect_to new_frasse_paht
  end

  def show
    @frasse = Frasse.find(params[:id])
  end


  private

  def frasse_params
    params.require(:frasse).permit(:title, :content)
  end
end
