class BoardgamesController < ApplicationController
  def index
    @boardgames = Boardgame.all
    if params[:query].present?
      @boardgames = @boardgames.where("title ILIKE ?", "%#{params[:query]}%")
    end
  end

  def new
    @boardgame = Boardgame.new
  end

  def create
    @boardgame = Boardgame.new(boardgame_params)
    if @boardgame.save
      redirect_to boardgames_path(@boardgame)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @boardgame = Boardgame.find(params[:id])
  end

  private

  def boardgame_params
    params.require(:boardgame).permit(:title, :description, :play_time, :age, :image,
    :rating, :min_player, :max_player, :category)
  end
end
