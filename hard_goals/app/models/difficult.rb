class Difficult < ActiveRecord::Base
   belongs_to :hard
   belongs_to :animate
   has_many :require_actions 
end
