class Attend < ApplicationRecord
  belongs_to :student
  belongs_to :group

  validates :attended, :date, presence: true
end
