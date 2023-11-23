class MoviesController < ApplicationController
    def index
        if params[:genre].present? && params[:genre] == "action"
            @movies = Movie.action_movies
        elsif params[:genre].present? && params[:genre] == "comedy"
            @movies = Movie.comedy_movies
        else
            @movies = Movie.all
        end
        
        # if params[:query].present?
        #     @movies = Movie.search_title(params[:query])
        # else
        #     @movies = Movie.all
        # end
    end
end
