class Member < ActiveRecord::Base
  attr_accessible :is_admin, :is_officer, :name, :picture_url, :standing
  has_many :equipment
  has_many :positions

end
