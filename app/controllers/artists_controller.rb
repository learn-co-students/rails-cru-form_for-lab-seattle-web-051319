class ArtistsController < ApplicationController
    before_action :artist_find, only: [:show, :edit, :update]

    def new
        @artist = Artist.new
    end

    def show
    end

    def create
        @artist = Artist.create(set_params)
        redirect_to artist_path(@artist)
    end

    def edit
    end

    def update
        @artist.update(set_params)
        redirect_to artist_path(@artist)
    end

    private

    def artist_find
        @artist = Artist.find(params[:id])
    end

    def set_params
        params.require(:artist).permit(:name, :bio)
    end
end
