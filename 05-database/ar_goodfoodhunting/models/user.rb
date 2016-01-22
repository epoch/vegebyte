class User < ActiveRecord::Base
  has_secure_password # give me 2 new methods for user object 
  # 1. password
  # 2.

  has_many :likes 
end