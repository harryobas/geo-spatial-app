class Api::PlacesController < ApplicationController
    
    def show_by_coordinates
        lat = params[:latitude].to_f
        lon = params[:longditude].to_f
    
        place = find_place(lat, lon)

        if place
            render json:  place.to_geojson, status: :ok
        else 
            render json: {error: 'location not found'}, status: :not_found   
        end

    end

    private

    def find_place(lat, lon)
        Place.all.select do |place|
            place.location.coordinates == [lat, lon]
        end.first
    end 
end
