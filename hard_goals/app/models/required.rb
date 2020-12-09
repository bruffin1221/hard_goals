class Required < ActiveRecord::Base
    belongs_to :heartfelt
    belongs_to :animante
    has_many :difficults
end
