class PlacesController < ApplicationController
	def index
		@place = Place.last
	end

	def new
		@place = Place.new
	end

	def create 
		@place = Place.create(place_params)
		redirect_to root_path
end
end

private

def place_params
	params.require(:place).permit(:title, :address)
	end

