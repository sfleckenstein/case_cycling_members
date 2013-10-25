class Member < ActiveRecord::Base
  attr_accessible :is_admin, :is_officer, :name, :picture_url, :standing, :email, :password, :password_confirmation
  attr_accessor :password
  before_save :encrypt_password

  has_many :equipment
  has_many :positions

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
  	member = find_by_email(email)
  	if member && member.password_hash == BCrypt::Engine.hash_secret(password, member.password_salt)
  		member
  	else
  		nil
  	end
  end


  def encrypt_password
  	if password.present?
  		self.password_salt = BCrypt::Engine.generate_salt
  		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  	end
  end

end
