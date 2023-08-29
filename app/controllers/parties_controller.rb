class PartiesController < ApplicationController
  before_action :set_party, only: %i[show edit]
  def show; end

  def new
    @party = Party.new
  end

  def create
    @party = Party.new(party_params)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_party
    @party = Party.find(params[:id])
  end

  def party_params
    params.require(:party).permit(:user, :score)
  end
end
