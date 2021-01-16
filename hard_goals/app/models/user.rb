class User < ActiveRecord::Base
    
    has_many :heartfelts 
    has_many :animates
    has_many :requireds
    has_many :difficults

    has_secure_password


end