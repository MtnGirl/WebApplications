class Section < ApplicationRecord
  belongs_to :course

  has_many :enrollments
  has_many :students, :through => :enrollments

  validates :number, presence: true
  validates :number, numericality: true
  validates :number, uniqueness: true

  validates_presence_of :semester, :room, :course_id
 
  def to_s
    "#{course.name} - #{semester} - Section: #{number}"
  end 
end
