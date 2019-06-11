class GenresController < ApplicationController
    before_action :find_genre, only: [:show, :edit, :update]

    def new
        @genre = Genre.new
    end

    def show
    end

    def create
        @genre = Genre.create(set_params)
        redirect_to genre_path(@genre)
    end

    def edit
    end

    def update
        @genre = Genre.update(set_params)
        redirect_to genre_path(@genre)
    end

    private

    def find_genre
        @genre = Genre.find(params[:id])
    end

    def set_params
        params.require(:genre).permit(:name)
    end
end
