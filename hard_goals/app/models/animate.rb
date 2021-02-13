class Animate < ActiveRecord::Base
    belongs_to :heartfelt
    has_many :requireds
    has_many :difficults
end
