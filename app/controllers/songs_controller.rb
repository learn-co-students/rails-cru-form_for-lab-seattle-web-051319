class SongsController < ApplicationController
    before_action :find_song, only: [:show, :edit, :update]

    def new
        @song = Song.new
    end

    def show
    end

    def create
        @song = Song.create(set_params)
        redirect_to song_path(@song)
    end

    def index
        @song = Song.all
    end

    def edit
    end

    def update
        @song.update(set_params)
        redirect_to song_path(@song)
    end

    private

    def set_params
        params.require(:song).permit(:name,:artist_id, :genre_id)
    end

    def find_song
        @song = Song.find(params[:id])
    end
end
    