class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @parties = current_user.parties
    @challenges = @user.challenges
    @achievements = @user.achievements
  end
end
