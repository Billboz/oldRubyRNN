class Player < ActiveRecord::Base
  has_many :thoughts
  has_many :ratings
end
