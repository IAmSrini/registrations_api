class Registration < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  belongs_to :semester

  validates_presence_of :course_id
  validates_presence_of :semester_id
  validates_presence_of :student_id
end
