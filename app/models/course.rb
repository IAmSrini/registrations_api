class Course < ActiveRecord::Base
	has_many :students, through: :registrations
	has_many :registrations
  	belongs_to :semester

  	validates_presence_of :semester_id
	validates_presence_of :coursename
end
