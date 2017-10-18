class Category < ApplicationRecord
  has_many :listings, dependent: :destroy

  validates_presence_of :name
end
