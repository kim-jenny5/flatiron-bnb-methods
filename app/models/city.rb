class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, through: :neighborhoods

  include OneCode::InstanceMethod
  extend OneCode::ClassMethods

  def city_openings(first_date, last_date)
    openings(first_date, last_date)
  end
end

