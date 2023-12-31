class PartiesController < ApplicationController
  before_action :set_party, only: %i[show edit update destroy]
  before_action :set_boardgame, only: %i[new create]
  skip_before_action :verify_authenticity_token
  after_action

  def show
    @boardgame = @party.boardgame
    @players = @party.players
    @player = Player.new
    @labels = @players.map(&:user).map(&:username)
    @data = @players.map { 16 }
    @rotation_values = []

    if @players.count >= 2
      @rotation_values << {
        minDegree: 0,
        maxDegree: (360 / @players.count / 2),
        value: @players.second.user.username
      }
      @rotation_values << {
        minDegree: (360 / @players.count / 2) + 1,
        maxDegree: (360 / @players.count / 2) + (360 / @players.count),
        value: @players.first.user.username
      }
      @players.drop(2).reverse.each_with_index do |player, i|
        @rotation_values << {
          minDegree: (360 / @players.count / 2) + (i + 1) * (360 / @players.count) + 1,
          maxDegree: (360 / @players.count / 2) + (360 / @players.count * (i + 2)),
          value: player.user.username
        }
      end

      @rotation_values << {
        minDegree: (360 / @players.count / 2) + (@players.count - 1) * (360 / @players.count) + 1,
        maxDegree: 360,
        value: @players.second.user.username
      }
    end
    users_players = @players.map(&:user)
    @users = User.all.reject { |user| users_players.include? user }
  end

  def new
    @players = @boardgame.players
    @party = Party.new(start_time: Date.now)
  end

  def create
    @party = Party.new
    @party.start_time = DateTime.current
    @party.boardgame = @boardgame
    if @party.save
      Player.create(score: 0, user: current_user, party: @party)
      redirect_to party_path(@party)
    else
      render 'boardgames/show', status: :unprocessable_entity, notice: 'Ta partie a bien été lancée, amusez-vous bien!'
    end
  end

  def edit; end

  def update
    @boardgame = @party.boardgame
    if params[:scores] == 'true'
      params[:party][:players].split(',').each_slice(2) do |player|
        @player = Player.find(player[0])
        @player.update(score: player[1])
      end
      @players = @party.players
      respond_to do |format|
        format.text { render(partial: 'parties/players_scores', locals: { players: @players }, formats: [:html]) }
      end
    elsif params[:scores] != 'true' && @party.update(end_time: DateTime.current)
      respond_to do |format|
        format.text { render(partial: 'parties/partial_show', locals: { party: @party }, formats: [:html]) }
      end
    else
      render 'parties/show', status: :unprocessable_entity
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
