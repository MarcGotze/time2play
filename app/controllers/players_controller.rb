class PlayersController < ApplicationController
  def new
    @boardgame = Boardgame.find(params[:party_id])
    @parties = @boardgame.parties
    @players = @parties.players
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

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to player_path(@player)
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
    params.require(:player).permit(:user_id, :party_id, :score, :game_master, :username)
  end
end
