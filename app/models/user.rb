class User < ApplicationRecord
  validates :name, presence:true,length: {maximum: 15}
  
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence:true, format: { with: VALID_EMAIL_REGEX } 
  validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX }
  
  has_secure_password
end
 