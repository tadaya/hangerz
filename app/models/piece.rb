class Piece < ActiveRecord::Base

  belongs_to :location
  belongs_to :user
  
  has_many :groupings
  has_many :outfits, through: :groupings
  has_many :wears

  has_attached_file :picture, :styles => {:size => "150x262>"},
                    :storage => :s3,
                    :bucket => 'hangerz',
                    :s3_credentials => {
                    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                    }

  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']

  validates_attachment_size :picture, :less_than => 5.megabytes

end