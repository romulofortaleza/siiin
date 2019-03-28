class Activity < ApplicationRecord
  belongs_to :customer
  has_one_attached :file
end
