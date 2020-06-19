class Battingdetail < ApplicationRecord
  belongs_to :inning
  has_many :batters
end
