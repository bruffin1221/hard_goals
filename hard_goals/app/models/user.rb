class User < ActiveRecord::Base
    has_many :user
    has_many :heartfelts, :through => users
    has_many :animates, :through => :users
    has_many :requireds, :through => :users
    has_many :difficults, :through => :users

    has_secure_password


end