class Location < ActiveRecord::Base

  has_many :pieces
  belongs_to :user

end 