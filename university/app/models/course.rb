class Course < ApplicationRecord
     has_many :sections

     validates :name, presence: true
     validates :name, length: {minimum: 2, maximum: 40}
     validates :name, uniqueness: true

     validates_presence_of :dept, :number, :creditHr
end
