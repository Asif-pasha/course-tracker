class Instructor < ActiveRecord::Base
	has_many :courses
	has_many :publications


	validates_presence_of :name, :email, :bio, :mobile
	validates_uniqueness_of :name, :email
	validates_numericality_of :mobile
	validates_length_of :mobile, is: 10
	validates_format_of :email, with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

end
