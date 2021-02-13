class Heartfelt < ActiveRecord::Base
    belongs_to :user
    has_one :animate
    has_many :requireds
    has_many :difficults
end
