class Student < ActiveRecord::Base
	

	has_many :registration
	has_many :course_ratings
	has_many :courses, through: :registration


	validates_presence_of :name, :email, :mobile, :major
	validates_uniqueness_of :email, :name
	validates_length_of :mobile, is: 10
	validates_numericality_of :mobile
	validates_format_of :email, with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
