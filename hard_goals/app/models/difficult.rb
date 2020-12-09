class Difficult < ActiveRecord::Base
   belongs_to :hard
   belongs_to :animate
   belongs_to :require_action 
end
