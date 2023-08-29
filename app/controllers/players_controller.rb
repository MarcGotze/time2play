class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to players_path(@player)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to party_path(@party), status: :see_other
  end

  private

  def player_params
    params.require(:player).permit(:user_id, :party_id, :score, :game_master)
  end
end
