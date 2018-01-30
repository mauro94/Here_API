class Group < ApplicationRecord
  has_many :attends
  has_many :students, through: :attends
  has_and_belongs_to_many :students

  validates :location, :group_id, :capacity, :signed_up_students, presence: true
  validates :group_id, :capacity, :signed_up_students, numericality: { only_integer: true }
end