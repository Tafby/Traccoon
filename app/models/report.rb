class Report < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhood
  has_many :raccoon_parties
  has_many :raccoons, through: :raccoon_parties
  geocoded_by :address
  after_validation :geocode
end
