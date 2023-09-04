class ChallengesController < ApplicationController
  before_action :set_boardgame, only: %i[new create]
  before_action :set_challenge, only: %i[edit update]


  def index
    @challenges = Challenge.all
    @achievement = Achievement.new
  end

  def new
    @achievement = @challenge.achievement
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

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :boardgame_id)
  end
end
