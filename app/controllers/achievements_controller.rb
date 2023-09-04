class AchievementsController < ApplicationController
  before_action :set_challenge, only: %i[new create update]
  before_action :set_achievement, only: %i[edit update]

  def index
    @achievements = Achievement.all
  end

  # PARTICIPER A UN CHALLENGE
  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.new
    @achievement.challenge = @challenge
    @achievement.user = current_user
    if @achievement.save!
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # REUSSIR UN CHALLENGE

  def edit; end

  def update
    @achievement = Achievement.new
    @achievement.completed = true
    if @achievement.save
      redirect_to user_path(@current_user)
    else
      render 'users/show', status: :unprocessable_entity, notice: 'Ta partie a bien été lancée, amusez-vous bien!'
    end
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end

  def set_achievement
    @achievement = Achievement.find(params[:id])
  end
end
