class BoardgamesController < ApplicationController
  def index
    @boardgames = Boardgame.all
    if params[:query].present?
      keywords = params[:query].split(/\s+/) # Divise la recherche en mots individuels
      conditions = keywords.map { |keyword| "title ILIKE ?" }.join(" OR ")
      query_args = keywords.map { |keyword| "%#{keyword}%" }

      @boardgames = @boardgames.where(conditions, *query_args)
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
    @players = @boardgame.players
    @parties = @boardgame.parties
    @challenges = @boardgame.challenges
    @challenge = Challenge.new
  end

  private

  def boardgame_params
    params.require(:boardgame).permit(:title, :description, :play_time, :age, :image,
    :rating, :min_player, :max_player, :category, :photo)
  end
end
