class Inning < ApplicationRecord
  has_one :battingdetail
  has_one :bowlingdetail
  has_many :overs
end
