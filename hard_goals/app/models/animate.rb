class Animate < ActiveRecord::Base
    belongs_to :heartfelt
    has_many :required_actions
    has_many :difficults
end
