class Student < ApplicationRecord
  # belongs_to :section

  has_many :enrollments,  dependent: :destroy 
  has_many :sections, :through => :enrollments

  validates :name, presence: true
  validates :name, length: {minimum: 2, maximum: 50}
  validates :number, presence: true
  validates :number, length: {minimum: 9, maximum: 9}
  # validates :student_id, uniqueness: { message: "ID already in use" }

  validates_presence_of :sections
end
