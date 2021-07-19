class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :listings

  include OneCode::InstanceMethod
  extend OneCode::ClassMethods


end
