class Student < ActiveRecord::Base
	has_many :courses, through: :registrations
	has_many :registrations

	validates_presence_of :name
	validates_presence_of :email
	validates_presence_of :phone
end
