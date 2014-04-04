class User < ActiveRecord::Base

  has_many :locations 
  has_many :pieces
  has_many :outfits

  has_many :wears, through: :pieces

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_secure_password


end 