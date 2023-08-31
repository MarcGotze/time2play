class GameToUsersController < ApplicationController
  def create
    @boardgame = Boardgame.find(params[:boardgame_id])
    @game_to_user = GameToUser.new
    @game_to_user.boardgame = @boardgame
    @game_to_user.user = current_user
    if @game_to_user.save
      # TODO
      redirect_to boardgame_path(@boardgame), notice: "game successfully added to collection"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @game_to_user = GameToUser.find(params[:id])
    @game_to_user.destroy
    if @game_to_user.destroy
      redirect_to boardgame_path(@game_to_user.boardgame), status: :see_other
    else
      puts 'destruction failed'
    end
  end
end
