class Heartfelt < ActiveRecord::Base
    belongs_to :user
    has_many :animates
    has_many :required_actions
    has_many :difficults
end
