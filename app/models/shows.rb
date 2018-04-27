class Show < ActiveRecord::Base
  def self.highest_rating
    a = Show.where("rating = 10").first
    a.rating
  end

  def self.lowest_rating
    Show.where("rating = 2").first.rating
  end

  def self.most_popular_show
    Show.order(rating: :desc).first
  end

  def self.least_popular_show
    Show.order(rating: :asc).first
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end
end
