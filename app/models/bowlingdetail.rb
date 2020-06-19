class Bowlingdetail < ApplicationRecord
  belongs_to :inning
  has_many :bowlers
end
