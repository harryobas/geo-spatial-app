class Place < ApplicationRecord
    def to_geojson
        {
            "type": "Feature",
            "geometry": {
              "type": "Point",
              "coordinates": location.coordinates
            },
            "properties": {
              "name": name 
            }
        }
          
    end
end
