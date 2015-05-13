class RiotsController < ApplicationController


# 	Prefix Verb   URI Pattern               Controller#Action
#     riots GET    /riots(.:format)          riots#index
#           POST   /riots(.:format)          riots#create
#  new_riot GET    /riots/new(.:format)      riots#new
# edit_riot GET    /riots/:id/edit(.:format) riots#edit
#      riot GET    /riots/:id(.:format)      riots#show
#           PATCH  /riots/:id(.:format)      riots#update
#           PUT    /riots/:id(.:format)      riots#update
#           DELETE /riots/:id(.:format)      riots#destroy



  def index
  	@riots = Riot.all
  end

  def new
  	@riot = Riot.new
  end
  def create
  	riot = Riot.create(riot_params)
  	redirect_to "/riots/new"
  end

  def edit
  	@riot = Riot.find(params[:id])
  end
  def update
  	riot = Riot.find(params[:id])
  	riot.update(riot_params)
  	redirect_to "/riots"
  end

  def show
  	@riot = Riot.find(params[:id])
  end

  private

  def riot_params
  	params.require(:riot).permit(:city_state, :year, :lat, :long, :data, :causes, :description_short, :description_long, :deaths, :injuries, :num_arrested, :image, :url, :damages, :police_force, :military_force, :sum_of_force, :city_id)
  end

end
