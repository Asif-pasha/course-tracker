class Course < ActiveRecord::Base
	belongs_to :instructor
	has_many :registration
	has_many :students, through: :registration
	has_many :course_ratings

end
