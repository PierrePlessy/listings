class Listing < ApplicationRecord
  mount_uploader :picture, PictureUploader

  belongs_to :category
  belongs_to :user

  has_many :comments

  def self.search(args)
    Listing.where('title LIKE :query', query: "%#{args[:keywords]}%")
  end
end
