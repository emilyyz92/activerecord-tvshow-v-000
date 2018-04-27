class Show < ActiveRecord::Base
  def self.highest_rating
    a = Show.where("rating = 10").first
    a.rating
  end

  def self.most_popular_show
    Show.order(rating: :desc).first
  end

  def self.least_popular_show
    Show.order(rating: :asc).first
  end
end
