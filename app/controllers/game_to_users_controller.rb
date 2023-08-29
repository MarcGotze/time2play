class GameToUsersController < ApplicationController
  before_action :set_game_to_user, only: %i[destroy]

  def new
    @boardgame = Boardgame.find(params[:boardgame_id])
    @game_to_user = GameToUser.new
  end

  def create
    @boardgame = Boardgame.find(params[:boardgame_id])
    @game_to_user = GameToUser.new(game_to_user_params)
    @game_to_user.boardgame = @boardgame
    @game_to_user.user_id = current_user.id
    if @game_to_user.save
      # TODO
      redirect_to "#", notice: "game successfully added to collection"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @game_to_user.destroy
    if @game_to_user.destroy
      # TODO
      redirect_to "#", status: :see_other
    else
      puts 'destruction failed'
    end
  end

  private

  def game_to_user_params
    params.require(:game_to_user).permit(:owned, :boardgame_id, :user_id, :id)
  end

  def set_game_to_user
    @game_to_user = GameToUser.find(params[:boardgame_id])
  end
end
