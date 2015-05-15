class Thought < ActiveRecord::Base
  belongs_to :player
  has_many :ratings
end
