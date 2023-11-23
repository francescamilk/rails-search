class Movie < ApplicationRecord
    belongs_to :director

    scope :comedy_movies, -> { where(genre: "comedy") }
    scope :action_movies, -> { where(genre: "action") }
    
    include PgSearch::Model
    multisearchable against: [:title, :synopsis]

    pg_search_scope :search_title, 
    against: [:title, :synopsis],
    associated_against: {
        director: [:first_name, :last_name]
    },
    using: {
        tsearch: { prefix: true }
    }
end

# Movie.search_title