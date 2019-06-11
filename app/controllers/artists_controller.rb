class ArtistsController < ApplicationController
    before_action :get_artist, only:[:show, :edit, :update]

    def create 
        @artist = Artist.create(artist_params)
        redirect_to @artist
    end

    def update 
        @artist.update(artist_params)
        redirect_to @artist
    end

    def new 
        @artist = Artist.new
    end


    private 
    def artist_params
        return params.require(:artist).permit(:name)
    end

    def get_artist
        return @artist = Artist.find(params[:id])
    end

end
