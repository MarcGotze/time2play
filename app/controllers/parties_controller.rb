class PartiesController < ApplicationController
  before_action :set_party, only: %i[show edit update destroy]
  before_action :set_boardgame, only: %i[new create update]

  def show
    @boardgame = @party.boardgame
    @players = @party.players
  end

  def new
    @players = @boardgame.players
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
    @party.boardgame = @boardgame
    if @party.save
      redirect_to party_path(@party)
    else
      render :new, status: :unprocessable_entity, notice: 'Ta partie a bien été lancée, amusez-vous bien!'
    end
  end

  def edit; end

  def update
    if @party.update(party_params)
      redirect_to party_path(@party)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @party.destroy
      redirect_to root_path, status: :see_other, notice: 'Ta partie a bien été supprimée!'
    else
      puts "Oupsiii, ta partie n'a pas pu être supprimée"
    end
  end

  private

  def set_boardgame
    @boardgame = Boardgame.find(params[:boardgame_id])
  end

  def set_party
    @party = Party.find(params[:id])
  end

  def party_params
    params.require(:party).permit(:start_time, :end_time, :boardgame_id, :player_id, :score)
  end
end
