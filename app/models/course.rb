class Course < ApplicationRecord
  has_many :groups
  
  validates :course_id, :course_name, :department, presence: true
end