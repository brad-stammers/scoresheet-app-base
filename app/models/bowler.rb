class Bowler < ApplicationRecord
  belongs_to :bowlingdetail
  has_many :overs
end
