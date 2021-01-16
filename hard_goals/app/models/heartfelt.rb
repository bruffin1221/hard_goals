class Heartfelt < ActiveRecord::Base
    belongs_to :user
    has_many :animates
    has_many :requireds
    has_many :difficults
end
