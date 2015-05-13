class Api::RiotsController < ApplicationController

	def index
  		@riots = Riot.all
  		render json: @riots
  	end


  def show
  	@riot = Riot.find(params[:id])
  	render json: @riot
  end

end