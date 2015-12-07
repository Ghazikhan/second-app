class Userinfo < ActiveRecord::Base
  belongs_to :user
  validates :mobile, 		presence: true
  validates :address, 	presence: true
end
