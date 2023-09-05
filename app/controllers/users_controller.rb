class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @parties = current_user.parties
    @challenges = @user.challenges
    @achievements = @user.achievements
    @total_min = 0
    @total_hours = 0
    @total_days = 0
  end
end
