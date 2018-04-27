class Show < ActiveRecord::Base
  def self.highest_rating
    a = Show.where("rating = 10")
    a.rating
  end

  def self.most_popular_show
    Show.order(rating: :desc).first
  end
end
