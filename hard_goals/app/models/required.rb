class Required < ActiveRecord::Base
    belongs_to :heartfelt
    belongs_to :animate
    has_many :difficults
end
