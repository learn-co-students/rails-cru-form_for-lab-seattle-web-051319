class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
        # @song.artist = Artist.find(params[:artist_id])
        # @song.genre = Genre.find(params[:genre_id])
        redirect_to song_path(@song)
    end

    def show
        @song = Song.find(params[:id])
        @artist = @song.artist
        @genre = @song.genre
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
end
