class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
            show = Show.order(rating: :desc).limit(1).first
            show if show.present?
    end

    def self.lowest_rating
        show = Show.order(rating: :asc).limit(1).first
        show.rating if show.present?
    end

    def self.least_popular_show
        show = Show.order(rating: :asc).limit(1).first
        show if show.present?
    end

    def self.ratings_sum
        show = Show.sum("rating")
    end

    def self.popular_shows
        Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        show = Show.order(name: :asc)
    end
end