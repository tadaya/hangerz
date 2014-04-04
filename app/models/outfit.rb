class Outfit < ActiveRecord::Base

  has_many :groupings
  belongs_to :user

end 