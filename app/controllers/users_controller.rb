class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @parties = current_user.parties

    @victories = @parties.select { |party| party.players.order(:score).last.user == current_user }.count
  end
end
