class Api::V1::UserRoundsController < ApplicationController

  def index
    @user_rounds = UserRound.all
    render json: @user_rounds.to_json, status: 200
  end

  def create
    @user_round = UserRound.new(user_round_params)
    if @user_round.save
      render json: @user_round.to_json, status: 200
    end
  end

  def update
    @user_round = UserRound.find_by_id(params[:id])
    if @user_round.update(user_round_params)
      render json: @user_round.to_json, status: 200
    end
  end

# don't think this is needed
  def show
    @user_round = UserRound.find_by_id(params[:id])
    render json: @user_round.to_json, status: 200
  end



  # def update
  #   @movie = Movie.find_by_id(params[:id])
  #   if @movie.update(movie_params)
  #     redirect_to movie_path(@movie)
  #     flash[:message] = "Movie successfully updated."
  #   else
  #     @movie.actor_number
  #     @movie.genre_number
  #     render :edit
  #   end
  # end

  private

    def user_round_params
      params.require(:user_round).permit(:user_id, :round_id, :attempts)
    end

end
