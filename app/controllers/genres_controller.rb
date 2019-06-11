class GenresController < ApplicationController
    before_action :get_genre, only:[:show, :edit, :update]

    def update 
        @genre.update(genre_params)
        redirect_to @genre
    end

    def new 
        @genre = Genre.new()
    end 

    def create 
        @genre = Genre.create(genre_params)
        redirect_to @genre
    end

    private 
    def get_genre
        return @genre = Genre.find(params[:id])
    end

    def genre_params
        return params.require(:genre).permit(:name)
    end
end
