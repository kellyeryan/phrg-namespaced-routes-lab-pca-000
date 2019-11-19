# frozen_string_literal: true

module Admin
  class PreferencesController < ApplicationController
    def index
      @preference = Preference.first_or_create(allow_create_songs: true,
                                               allow_create_artists: true,
                                               song_sort_order: "DESC",
                                               artist_sort_order: "DESC")
    end

  private

    def preference_params
      params.require(:preference).permit(:allow_create_songs,
                                         :allow_create_artists,
                                         :song_sort_order,
                                         :artist_sort_order)
    end
  end
end
