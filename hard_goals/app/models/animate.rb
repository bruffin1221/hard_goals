class Animate < ActiveRecord::Base
    belongs_to :goal
    has_many :required_actions
    has_many :difficults
end
