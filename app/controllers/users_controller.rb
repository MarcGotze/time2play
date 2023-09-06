class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @parties = current_user.parties
    @challenges = @user.challenges
    @achievements = @user.achievements.where(completed: true).group_by { |a| a.challenge.boardgame }
    @total_min = 0
    @total_hours = 0
    @total_days = 0
  end
end
