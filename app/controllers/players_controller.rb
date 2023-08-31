class PlayersController < ApplicationController
  before_action :set_party, only: %i[new create]
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.party = @party
    if @player.save
      redirect_to party_path(@party)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to party_path(@party)
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

  def set_party
    @party = Party.find(params[:party_id])
  end

  def player_params
    params.require(:player).permit(:user_id, :score, :game_master)
  end
end
