class ChallengesController < ApplicationController
  before_action :set_boardgame, only: %i[new create]

  def index
    @challenges = Challenge.all
  end

  def new
    @boardgame = @challenge.boardgame
    @challenge = Challenge.new(boardgame: @boardgame)
  end

  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      Challenge.create(boardgame: @boardgame)
      redirect_to user_path(current_user)
    else
      render 'users/show', status: :unprocessable_entity, notice: "Ton défis n'a pas pu être créé!"
    end
  end

  private

  def set_boardgame
    @boardgame = Boardgame.find(params[:boardgame_id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :boardgame_id)
  end
end
