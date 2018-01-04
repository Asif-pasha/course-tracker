class Publication < ActiveRecord::Base
	belongs_to :instructor
	
	validates_presence_of :user_id, :title, :body, :link
	validates_numericality_of :user_id
	validates_length_of :title, minimum: 3
	validates_length_of :body, within: 5..1000

end