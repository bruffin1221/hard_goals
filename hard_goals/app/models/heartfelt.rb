class Heartfelt < ActiveRecord::Base
    has_many :animates
    has_many :required_actions
    has_many :difficults
end
