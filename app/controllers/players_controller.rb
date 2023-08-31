class PlayersController < ApplicationController
  before_action :set_party, only: %i[new create update]
  before_action :set_player, only: %i[edit update destroy]

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

  def edit; end

  def update
    # @party.id = @party
    if @player.update!(player_params)
      redirect_to party_path(@party)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @player.destroy
      redirect_to party_path(@party), status: :see_other
    else
      puts "Oupsiii, la joueur n'a pas pu être supprimée"
    end
  end

  private

  def set_party
    @party = Party.find(params[:party_id])
  end

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:user_id, :score, :game_master)
  end
end
