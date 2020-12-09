class RequiredAction < ActiveRecord::Base
    belongs_to :hard 
    belongs_to :animate
    has_many :difficults
end
