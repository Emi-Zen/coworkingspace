class SpacesController < ApplicationController
  def index
    @spaces = Space.geocoded
    # The `geocoded` scope filters only flats with coordinates
    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {space: space}),
      marker_html: render_to_string(partial: "marker")
      }
    end
  end
end
