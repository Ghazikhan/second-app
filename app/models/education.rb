class Education < ActiveRecord::Base
  belongs_to :user
  belongs_to :degre
  belongs_to :institute
  
  validates :division, 				presence: true
  validates :obtained_marks, 	presence: true
  validates :pass_year, 			presence: true
  validates :degre_id, 				presence: true
  validates :institute_id, 		presence: true
end
