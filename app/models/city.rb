class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, through: :neighborhoods

  include OneCode::InstanceMethod
  extend OneCode::ClassMethods

  def city_openings(first_date, last_date)
    city_neighborhood_openings(first_date, last_date)
    # Listing.joins(:reservations).where.not("checkin <= ? AND checkout >= ?", first_date, last_date).distinct
  end
end

