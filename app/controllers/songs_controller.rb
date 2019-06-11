class SongsController < ApplicationController
    before_action :get_song, only: [:show, :edit, :update]

    def new 
        @song = Song.new()
    end

    def update
        @song.update(song_params)
        redirect_to @song
    end

    def create 
        @song = Song.create(song_params)
        redirect_to @song
    end

    def show
        @genre = Genre.find(@song.genre_id)
        @artist = Artist.find(@song.artist_id)
    end

    def index
        @songs = Song.all
    end

    private 
    def get_song
        return @song = Song.find(params[:id])
    end

    def song_params
        return params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
