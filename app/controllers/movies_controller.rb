class MoviesController < ApplicationController
    def index
        # 1. Strict search
        # if params[:query].present?
        #     @movies = Movie.where(title: params[:query])
        # else
        #     @movies = Movie.all
        # end
        
        # 2. Case insensitive search with word in the title
        # if params[:query].present?
        #     @movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
        # else
        #     @movies = Movie.all
        # end
        
        # 3. Multicolumn search
        # if params[:query].present?
        #     sql_query = "title ILIKE :query OR synopsis ILIKE :query"
        #     @movies = Movie.where(sql_query, query: "%#{params[:query]}%")
        # else
        #     @movies = Movie.all
        # end
        
        # 4. Multitable search
        # @movies = Movie.all
        # if params[:query].present?
        #     sql_subquery = <<~SQL
        #         movies.title @@ :query
        #         OR movies.synopsis @@ :query
        #         OR directors.first_name @@ :query
        #         OR directors.last_name @@ :query
        #     SQL
        #     @movies = @movies.joins(:director).where(sql_subquery, query: "%#{params[:query]}%")
        # end
    end
end
