class Piece < ActiveRecord::Base

  belongs_to :location
  belongs_to :user
  
  has_many :groupings
  has_many :outfits, through: :groupings
  has_many :wears

end