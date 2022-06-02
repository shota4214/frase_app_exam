class FrassesController < ApplicationController

  def index
    @frasses = Frasse.all
  end

  def new
    @frasse = Frasse.new
  end

  def create
    @frasse = Frasse.new(frasse_params)
    if params[:back]
      render :new
    else
      if @frasse.save
        redirect_to frasses_path, notice: "Fraseを作成しました！"
      else
        render:new
      end
    end
  end

  def show
    @frasse = Frasse.find(params[:id])
  end

  def edit
    @frasse = Frasse.find(params[:id])
  end

  def update
    @frasse = Frasse.find(params[:id])
    if @frasse.update(frasse_params)
      redirect_to frasses_path, notice: "Fraseを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @frasse = Frasse.find(params[:id])
    @frasse.destroy
    redirect_to frasses_path, notice: "Fraseを削除しました"
  end

  def confirm
    @frasse = Frasse.new(frasse_params)
    render :new if @frasse.invalid?
  end

  private

  def frasse_params
    params.require(:frasse).permit(:content)
  end
end
