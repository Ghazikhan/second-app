class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :userinfos,      dependent: :destroy
  has_many :educations,     dependent: :destroy
  has_many :experiences,    dependent: :destroy
  has_many :comments,       dependent: :destroy

  has_attached_file :avatar, :styles => { :medium => "400x400>", :thumb => "100x100>" },
  																				:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	validates :first_name, presence: true, format: { with: /\A[a-z A-Z]+\Z/ }
	validates :last_name, presence: true, format: { with: /\A[a-z A-Z]+\Z/ }
end
