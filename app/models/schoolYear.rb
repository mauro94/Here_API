class SchoolYear < ApplicationRecord
  has_many :groups
  
  validates :year_id, :date_start, :date_end, presence: true
end