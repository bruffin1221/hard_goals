class Difficult < ActiveRecord::Base
   belongs_to :user
   belongs_to :heartfelt
   belongs_to :animate
   belongs_to :required
end
